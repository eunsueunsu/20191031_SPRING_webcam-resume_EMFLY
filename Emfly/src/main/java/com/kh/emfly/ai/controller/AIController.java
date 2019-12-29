package com.kh.emfly.ai.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.emfly.ai.model.service.AIservice;
import com.kh.emfly.ai.model.vo.Keyword;
import com.kh.emfly.ai.model.vo.WordSim;

 @Controller
public class AIController {
	 
	 @Autowired
	 private AIservice as;
	 
	 //자소서 분석 페이지로 이동
	 @RequestMapping("moveResumeAnal.do")
	 public String moveResumeAnalPage() {
		 return"aiApi";
	 }
	 //자기소개 분석
	 @RequestMapping(value="resumeAnalyzer.do",method= RequestMethod.POST)
	 public ModelAndView resumeAnalyzer(String myresume) {
		 ModelAndView mav = new ModelAndView();
		 
		 //db에서 키워드 가져오기
		 List<Keyword> kewordArr= as.getKeywordList();
		 WiseWordNetAPI wwna = new WiseWordNetAPI();
		 //자소서에서 키워드 명사 추출
		ArrayList<String> resumeArr= wwna.getMorphemes(myresume);
		
		//어휘유사도 모델
		WordSim ws= new WordSim();
		
		int score=0;
		int count=0;
		 //유사도 점수 계산
		for(int i=0;i<kewordArr.size();i++) {
			for(int j=0;j<resumeArr.size();j++) {
				count++;
				ws=wwna.getSimilrarity(kewordArr.get(i).getKeyword(), resumeArr.get(j));
				if(ws.getDistance()==0) {
					score+=3;
				}
				if(ws.getETRI()>0.5) {
					score+=1;
				}
				if(ws.getHAS()>0.5) {
					score+=1;
				}
				if(ws.getLAC()>0.5) {
					score+=1;
				}
				if(ws.getPat()>0.5) {
					score+=1;
				}
				if(ws.getPEA()>0.5) {
					score+=1;
				}
				
			}
			
		}
		 

		 System.out.println(score);
		 System.out.println(count);
		 
//		ArrayList imagekeyword = new ArrayList();
//		
//		  for(Keyword k : kewordArr) {
//			  int i=0;
//			imagekeyword.add(kewordArr.get(i).getKeyword());
//	            System.out.println( kewordArr.get(i).getKeyword());
//	            i++;
//	        }
		 
		 double dscore= (double)score/count*100;
		 System.out.println(score);
		 
		 mav.addObject("rkey1", resumeArr.get(1));
		 mav.addObject("rkey2", resumeArr.get(2));
		 mav.addObject("rkey3", resumeArr.get(3));
		 
		 mav.addObject("skey1", kewordArr.get(0).getKeyword());
		 mav.addObject("skey2", kewordArr.get(1).getKeyword());
		 mav.addObject("skey3", kewordArr.get(2).getKeyword());
		 mav.addObject("score",dscore);
		 mav.addObject("keywordArr",kewordArr);
		 
		
		 
		 mav.addObject("passScore", 60);
		 mav.setViewName("analizerResult");
		 return mav;
	 }
 }