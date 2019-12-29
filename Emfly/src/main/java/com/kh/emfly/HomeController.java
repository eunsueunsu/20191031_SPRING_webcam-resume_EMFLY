package com.kh.emfly;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/emplyMain.me")
    private String emplyMain(){
        return "mainPage";
    }
	
	@RequestMapping("/emplyLogin.me")
    private String emplyLogin(){
        return "loginPage";
    }
	
	@RequestMapping("/emplyMenu1.me")
    private String emplyMenu1(){
        return "menu1Page";
    }
		
	@RequestMapping("/emplyMenu3.me")
    private String emplyMenu3(){
        return "menu3Page";
    }
	
	@RequestMapping("/emplyMenu4List.me")
    private String emplyMenu4(){
        return "menu4ListPage";
    }
	
	@RequestMapping("/emplyMenu4View.me")
    private String emplyMenu4View(){
        return "menu4ViewPage";
    }
	
	@RequestMapping("/emplyMenu4Write.me")
    private String emplyMenu4Write(){
        return "menu4WritePage";
    }
	
	@RequestMapping("/emplyMenu4Update.me")
    private String emplyMenu4Update(){
        return "menu4UpdatePage";
    }
		

	
	@RequestMapping("/emplyMyPage1A.me")
    private String emplyMyPage1A(){
        return "myPage1-1";
    }

	@RequestMapping("/emplyAdmin.do")
    private String emplyAdminPage(){
        return "adminPage";
    }
	
	@RequestMapping("/emplyMyPage1B.me")
    private String emplyMyPage1B(){
        return "myPage1-2";
    }
	
		
	@RequestMapping("/emplyMyPage3.me")
    private String emplyMyPage3(){
        return "myPage3";
    }
	
	@RequestMapping("/emplyMyPage4.me")
    private String emplyMyPage4(){
        return "myPage4";
    }
	
	@RequestMapping("/emplyMyComPage.me")
    private String emplyMyComPage(){
        return "myComPage";
    }
	
	
	@RequestMapping("/emplyResume.me")
    private String emplyResumePage(){
        return "emplyResume";
    }
	
	@RequestMapping("myPage_company.do")
    private String emplyCompanyPage(){
        return "myComPage";
    }
	
}
