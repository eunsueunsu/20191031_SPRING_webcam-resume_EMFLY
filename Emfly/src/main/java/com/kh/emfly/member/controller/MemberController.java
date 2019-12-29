package com.kh.emfly.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.kh.emfly.member.model.service.MemberService;
import com.kh.emfly.member.model.vo.Member;

@Controller
public class MemberController {
	
//	private kakao_restapi kakao_restapi = new kakao_restapi();

	
	@Autowired
	private KakaoLoginApi kakaoLoginApi;
/*	private static final String PROTECTED_RESOURCE_URL = "https://graph.facebook.com/v4.00/me?fields=id,email,name";*/


	@Autowired
	private MemberService ms;
	

    
//    버튼에 url 생성
    @RequestMapping(value = "/login.me",method = RequestMethod.GET)
    public ModelAndView memberLoginForm(HttpSession session) {
    	ModelAndView mv = new ModelAndView();
    	
    	String kakaoUrl =kakaoLoginApi.getAuthorizationUrl(session);
    	
    	mv.setViewName("member/login");
    	
    	mv.addObject("kakao_url",kakaoUrl);
    	return mv;
    }
    
    

 
    
    @RequestMapping(value = "/mainPage_naver.do")
    public String getKakaoSignIn(@RequestParam("code") String code, HttpSession session) throws Exception {

    	Member m = new Member();
      JsonNode userInfo = kakaoLoginApi.getKakaoUserInfo(code);
      JsonNode kakao_account = userInfo.path("kakao_account");
      
      System.out.println(userInfo);
      
      System.out.println("ka:"+kakao_account);
      
     if(kakao_account.get("has_age_range").asBoolean()) {
    	 m.setmAge(kakao_account.get("age_range").asText());
     }
     
      if(kakao_account.get("has_birthday").asBoolean()) {
    	  m.setmBirthday(kakao_account.get("birthday").asText());
      }
      
     if(kakao_account.get("has_gender").asBoolean()) {
    	  m.setmGender(kakao_account.get("gender").asText());
     }
     
     
      if(m.getmGender().equals("female")) {
    	  m.setmGender("F");
      }else {
    	  m.setmGender("M");
      }
      m.setmEmail(kakao_account.get("email").asText());
      //email 없는 경우도 있을수 있음 . 확인할것
      m.setmId(userInfo.get("id").asText());
      
//      이미지 없는 경우 
      if(userInfo.get("properties").get("profile_image")!=null) {
    	  m.setmImg(userInfo.get("properties").get("profile_image").asText());
      }
      
      //카카오 제공 이름 없음
      m.setmName("없음");
      
      m.setmAccess("normal");
     
      m.setmNickname(userInfo.get("properties").get("nickname").asText());
      m.setmRoute("kakao");
      System.out.println("m:"+m);
      
      session.setAttribute("member", m);
      //회원정보 있는지 체크
//      Member checkmem =ms.memberCheck(m.getmEmail());
      Member checkmem =ms.checkMember(m.getmId());
      
    if(checkmem==null) {
    	int result= ms.insertMember(m);
        if(result>0) {
       	 System.out.println("회원정보 업데이트 성공");
        }else {
       	 System.out.println("");
        }
    }else {
    	System.out.println("기존 회원입니다.");
    }
      
     

      return "forward:mainPage.jsp";
    }
    
    
    
    
    

	
}
