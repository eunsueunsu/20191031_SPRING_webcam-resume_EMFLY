package com.kh.emfly.ai.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.kh.emfly.ai.model.vo.WordSim;



public class WiseWordNetAPI {

	 static public class Morpheme {
	        final String text;
	        final String type;
	        Integer count;
	        public Morpheme (String text, String type, Integer count) {
	            this.text = text;
	            this.type = type;
	            this.count = count;
	        }
	    }
	    static public class NameEntity {
	        final String text;
	        final String type;
	        Integer count;
	        public NameEntity (String text, String type, Integer count) {
	            this.text = text;
	            this.type = type;
	            this.count = count;
	        }
	    }
		
		 //형태소 분석 api
	     public ArrayList<String> getMorphemes(String text){
	        String openApiURL = "http://aiopen.etri.re.kr:8000/WiseNLU";
	        String accessKey = "7eb37a4e-03e0-42c0-9099-1b99b7dc0f4a";   // 발급받은 API Key
	        String analysisCode = "ner";        // 언어 분석 코드
//	        String text = "";           // 분석할 텍스트 데이터
	        Gson gson = new Gson();
	        
	        System.out.println(text);

	        Map<String, Object> request = new HashMap<>();
	        Map<String, String> argument = new HashMap<>();
	 
	        argument.put("analysis_code", analysisCode);
	        argument.put("text", text);
	 
	        request.put("access_key", accessKey);
	        request.put("argument", argument);
	 
	        
	        URL url;
	        Integer responseCode = null;
	        String responBodyJson = null;
	        Map<String, Object> responeBody = null;
	        
	        ArrayList<String> keywordArr= new ArrayList<String>(); // 키워드 담아줄곳
	        System.out.println(text);
	        try {
	        	System.out.println("try"+text);
	            url = new URL(openApiURL);
	            HttpURLConnection con = (HttpURLConnection) url.openConnection();
	            con.setRequestMethod("POST");
	            con.setDoOutput(true);
	 
	            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
	            wr.write(gson.toJson(request).getBytes("UTF-8"));
	            wr.flush();
	            wr.close();
	 
	            System.out.println(text);
	            responseCode = con.getResponseCode();
	            InputStream is = con.getInputStream();
	            BufferedReader br = new BufferedReader(new InputStreamReader(is));
	            StringBuffer sb = new StringBuffer();
	 
	            String inputLine = "";
	            while ((inputLine = br.readLine()) != null) {
	                sb.append(inputLine);
	            }
	            responBodyJson = sb.toString();
	            System.out.println(responseCode);
	            // http 요청 오류 시 처리
	            if ( responseCode != 200 ) {
	                // 오류 내용 출력
	                System.out.println("[error] " + responBodyJson);
	                return null;
	            }
	 
	            responeBody = gson.fromJson(responBodyJson, Map.class);
	            Integer result = ((Double) responeBody.get("result")).intValue();
	            Map<String, Object> returnObject;
	            List<Map> sentences;
	 
	            // 분석 요청 오류 시 처리
	            if ( result != 0 ) {
	 
	                // 오류 내용 출력
	                System.out.println("[error] " + responeBody.get("result"));
	                return null;
	            }
	 
	            // 분석 결과 활용
	            returnObject = (Map<String, Object>) responeBody.get("return_object");
	            sentences = (List<Map>) returnObject.get("sentence");
	 
	            Map<String, Morpheme> morphemesMap = new HashMap<String, Morpheme>();
	            Map<String, NameEntity> nameEntitiesMap = new HashMap<String, NameEntity>();
	            List<Morpheme> morphemes = null;
	            List<NameEntity> nameEntities = null;
	 
	            for( Map<String, Object> sentence : sentences ) {
	                // 형태소 분석기 결과 수집 및 정렬
	                List<Map<String, Object>> morphologicalAnalysisResult = (List<Map<String, Object>>) sentence.get("morp");
	                for( Map<String, Object> morphemeInfo : morphologicalAnalysisResult ) {
	                    String lemma = (String) morphemeInfo.get("lemma");
	                    Morpheme morpheme = morphemesMap.get(lemma);
	                    if ( morpheme == null ) {
	                        morpheme = new Morpheme(lemma, (String) morphemeInfo.get("type"), 1);
	                        morphemesMap.put(lemma, morpheme);
	                    } else {
	                        morpheme.count = morpheme.count + 1;
	                    }
	                }
	 
	                // 개체명 분석 결과 수집 및 정렬
	                List<Map<String, Object>> nameEntityRecognitionResult = (List<Map<String, Object>>) sentence.get("NE");
	                for( Map<String, Object> nameEntityInfo : nameEntityRecognitionResult ) {
	                    String name = (String) nameEntityInfo.get("text");
	                    NameEntity nameEntity = nameEntitiesMap.get(name);
	                    if ( nameEntity == null ) {
	                        nameEntity = new NameEntity(name, (String) nameEntityInfo.get("type"), 1);
	                        nameEntitiesMap.put(name, nameEntity);
	                    } else {
	                        nameEntity.count = nameEntity.count + 1;
	                    }
	                }
	            }
	 
	            if ( 0 < morphemesMap.size() ) {
	                morphemes = new ArrayList<Morpheme>(morphemesMap.values());
	                morphemes.sort( (morpheme1, morpheme2) -> {
	                    return morpheme2.count - morpheme1.count;
	                });
	            }
	 
	            if ( 0 < nameEntitiesMap.size() ) {
	                nameEntities = new ArrayList<NameEntity>(nameEntitiesMap.values());
	                nameEntities.sort( (nameEntity1, nameEntity2) -> {
	                    return nameEntity2.count - nameEntity1.count;
	                });
	            }
	 
	            // 형태소들 중 명사들에 대해서 많이 노출된 순으로 출력 ( 최대 5개 )
	            morphemes
	                .stream()
	                .filter(morpheme -> {
	                    return morpheme.type.equals("NNG") ||
	                            morpheme.type.equals("NNP") ||
	                            morpheme.type.equals("NNB");
	                })
	                .limit(30)
	                .forEach(morpheme -> {
	                    System.out.println("[명사] " + morpheme.text + " ("+morpheme.count+")" );
	                    //리스트에 키워드 담기
	                    keywordArr.add(morpheme.text);
	                });
	 
	            // 형태소들 중 동사들에 대해서 많이 노출된 순으로 출력 ( 최대 5개 )
	            System.out.println("");
	            morphemes
	                .stream()
	                .filter(morpheme -> {
	                    return morpheme.type.equals("VV");
	                })
	                .limit(10)
	                .forEach(morpheme -> {
	                    System.out.println("[동사] " + morpheme.text + " ("+morpheme.count+")" );
	                });
	 
	            // 인식된 개채명들 많이 노출된 순으로 출력 ( 최대 5개 )
	            System.out.println("");
	            nameEntities
	                .stream()
	                .limit(10)
	                .forEach(nameEntity -> {
	                    System.out.println("[개체명] " + nameEntity.text + " ("+nameEntity.count+")" );
	                });
	        } catch (MalformedURLException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        for(int i = 0; i < keywordArr.size(); i++) {
	            System.out.println(+ i + " : value " +keywordArr.get(i));
	        }
	        return keywordArr;

	    }
	     
	     
	     
	
		 //두 단어의 유사도 측정 api
		 public WordSim getSimilrarity(String firstWord, String secondWord){
			 
			 	WordSim ws = new WordSim(); // 결과값 담아줄 객체
			 
		        String openApiURL = "http://aiopen.etri.re.kr:8000/WiseWWN/WordRel";
		        String accessKey = "7eb37a4e-03e0-42c0-9099-1b99b7dc0f4a";           // 발급받은 API Key
//		        String firstWord = "합격";                // 첫번째 어휘 데이터
//		        String secondWord = "탈락";              // 두번째 어휘 데이터

		 
		        Gson gson = new Gson();
		 
		        Map<String, Object> request = new HashMap<>();
		        Map<String, String> argument = new HashMap<>();
		 
		        argument.put("first_word", firstWord);
		        argument.put("second_word", secondWord);

		 
		        request.put("access_key", accessKey);
		        request.put("argument", argument);
		        URL url;
		        Integer responseCode = null;
		        String responBody = null;

		        try {
		            url = new URL(openApiURL);
		            HttpURLConnection con = (HttpURLConnection)url.openConnection();
		            con.setRequestMethod("POST");
		            con.setDoOutput(true);
	
		            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
		            wr.write(gson.toJson(request).getBytes("UTF-8"));
		            wr.flush();
		            wr.close();
		            		
		            responseCode = con.getResponseCode();		            
		            InputStream is = con.getInputStream();
		            
		            byte[] buffer = new byte[is.available()];
		            int byteRead = is.read(buffer);
		            responBody = new String(buffer);

		            //---------------------------------
		            ObjectMapper mapper = new ObjectMapper();	
		            JsonNode node = mapper.readTree(responBody);
//		            System.out.println("node"+node);
		            String result = node.get("result").asText();
		            
		            JsonNode WordRelInfo = node.path("return_object").path("WWN WordRelInfo").path("WordRelInfo");
		            ws.setDistance(WordRelInfo.get("Distance").asInt()); 
		            
		            JsonNode Similarity = WordRelInfo.path("Similarity");
		            ws.setETRI(Similarity.get(0).get("SimScore").asDouble());
		            ws.setHAS(Similarity.get(1).get("SimScore").asDouble());
		            ws.setLAC(Similarity.get(2).get("SimScore").asDouble());
		            ws.setPat(Similarity.get(3).get("SimScore").asDouble());
		            ws.setPEA(Similarity.get(4).get("SimScore").asDouble());
		            
		            
//		            System.out.println(ws);
//		     
//		            System.out.println("[responseCode] " + responseCode);
//		            System.out.println("[responBody]");
//		            System.out.println(responBody);
		
		            return ws;
		        } catch (MalformedURLException e) {
		            e.printStackTrace();
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
		        return ws;
		    }
		
}
