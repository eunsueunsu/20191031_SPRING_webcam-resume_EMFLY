package com.kh.emfly.company.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.kh.emfly.company.model.service.CompanyService;
import com.kh.emfly.company.model.vo.Company;
import com.kh.emfly.company.model.vo.CompanyPage;
import com.kh.emfly.company.model.vo.Hire;

@Controller
public class CompanyController
{   
   @Autowired
   private CompanyService cService;
   
   @ResponseBody
   @RequestMapping("mainPage.hi")
   public List<Hire> listHire()
   {
      return cService.listHire();
   }

   @RequestMapping("searchCompany.do")
   @ResponseBody
    public ModelAndView CompanyList( @RequestParam(defaultValue="1") int curPage,
                             @RequestParam(value="searchWord",defaultValue="") String searchWord,
                             @RequestParam(value="checkboxValues",defaultValue="") String checkboxValues,
                             ModelAndView mv) throws Exception{
      int count = 0;
      if((cService.getListCount(searchWord) % 10) == 0) {
         count = (cService.getListCount(searchWord) / 10);
      }else {
         count = (cService.getListCount(searchWord) / 10) + 1;
      }
      
      CompanyPage pager = new CompanyPage(count, curPage);
        int start = pager.getPageBegin();
        int end =  pager.getPageEnd();
      
      List<Company> list = cService.CompanyList(searchWord,checkboxValues,start,end);
      
      ModelAndView mav = new ModelAndView();
      Map<String,Object> map = new HashMap<String, Object>();
      if(list != null) {
         map.put("list",list);
         map.put("pager", pager);
         map.put("count", count);
         map.put("searchWord",searchWord);
         map.put("checkboxValues", checkboxValues);
         mav.addObject("map",map);
         System.out.println("Controller: " + map);
         mav.setViewName("menu2ListPage");
      }
       return mav;
    }
   
   @RequestMapping("emplyMenu2Detail.me")
	public ModelAndView CompanyDetail(@RequestParam("cId") int cId,@RequestParam("cName") String cName, ModelAndView mv)
			throws Exception {
		Company c = cService.CompanyDetail(cId);
		ModelAndView mav = new ModelAndView();
		String clientId = "1J2ZrHG2rntD_Gh7LxIb";
		String clientSecret = "rYpwoG9xBl";
		String newsTitle1 = null;
		String newsTitle2 = null;
		String newsTitle3 = null;
		String newsLink1 = null;
		String newsLink2 = null;
		String newsLink3 = null;
		String newsDate1 = null;
		String newsDate2 = null;
		String newsDate3 = null;
		try {
			String text = URLEncoder.encode(cName, "UTF-8");
			String apiURL = "https://openapi.naver.com/v1/search/news.xml?query=" + text + "&start=1&display=3&sort=sim";
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			
			// response 수신
			int responseCode = con.getResponseCode();
			System.out.println("responseCode=" + responseCode);
			if (responseCode == 200) {
				BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
				String inputLine;
				StringBuffer response = new StringBuffer();
				while ((inputLine = in.readLine()) != null) {
					response.append(inputLine);
				}
				in.close();
				System.out.println(response.toString());
				InputSource is = new InputSource(new StringReader(response.toString()));
				Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(is);
				XPath xpath = XPathFactory.newInstance().newXPath();
			    NodeList cols = (NodeList)xpath.evaluate("//item/title", document, XPathConstants.NODESET);
			    NodeList cols2 = (NodeList)xpath.evaluate("//item/originallink", document, XPathConstants.NODESET);
			    NodeList cols3 = (NodeList)xpath.evaluate("//item/pubDate", document, XPathConstants.NODESET);
			        for( int idx=0; idx<cols.getLength(); idx++ ){
			            newsTitle1 = cols.item(0).getTextContent();
			            newsTitle2 = cols.item(1).getTextContent();
			            newsTitle3 = cols.item(2).getTextContent();
			            newsLink1 = cols2.item(0).getTextContent();
			            newsLink2 = cols2.item(1).getTextContent();
			            newsLink3 = cols2.item(2).getTextContent();
			            String pubDate1 = cols3.item(0).getTextContent();
			            String pubDate2 = cols3.item(1).getTextContent();
			            String pubDate3 = cols3.item(2).getTextContent();
			            Date date1 = new Date(pubDate1);
			            Date date2 = new Date(pubDate2);
			            Date date3 = new Date(pubDate3);
			            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
			            newsDate1 = formatter.format(date1);
			            newsDate2 = formatter.format(date2);
			            newsDate3 = formatter.format(date3);

			    }
			          
			} else {
				System.out.println("API 호출 에러 발생 : 에러코드=" + responseCode);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		if (c != null) {
			mav.setViewName("menu2DetailPage");
			mav.addObject("company", c)
			.addObject("newsTitle1",newsTitle1)
			.addObject("newsTitle2",newsTitle2)
			.addObject("newsTitle3",newsTitle3)
			.addObject("newsLink1",newsLink1)
			.addObject("newsLink2",newsLink2)
			.addObject("newsLink3",newsLink3)
			.addObject("newsDate1",newsDate1)
			.addObject("newsDate2",newsDate2)
			.addObject("newsDate3",newsDate3);
		}

		return mav;
	}
   
   @ResponseBody
   @RequestMapping(value = "/ajax", method = RequestMethod.GET)
   public String ajax(@RequestParam("id") int id, @RequestParam("name") String name) {
       return String.format("{ id: %d, name: \"%s\" }", id, name);
   }
}