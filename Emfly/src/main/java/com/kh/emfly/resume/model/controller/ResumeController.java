package com.kh.emfly.resume.model.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.emfly.company.model.vo.Company;
import com.kh.emfly.resume.model.service.ResumeService;
import com.kh.emfly.resume.model.vo.Resume;
import com.kh.emfly.resume.model.vo.ResumePage;

@Controller
public class ResumeController {

	@Autowired
	private ResumeService rService;

	@RequestMapping("rinsert.do")
	public String resumeInsert(@ModelAttribute Resume r) {
//		@RequestParam("uploadFile") MultipartFile uploadFile,HttpServletRequest request
		System.out.println(r);
//		System.out.println(uploadFile);
//		System.out.println("originName : " + uploadFile.getOriginalFilename());
//		if (uploadFile != null && !uploadFile.isEmpty()) {
//			
//			String renameFileName = saveFile(uploadFile, request);
//			if (renameFileName != null) {
//				r.setOriginName(uploadFile.getOriginalFilename());
//				r.setChangeName(renameFileName);
//			}
//		} else {
//			r.setOriginName("");
//			r.setChangeName("");
//		}
		int result = rService.resumeInsert(r);

		if (result > 0) {
			return "redirect:emplyMyPage1B.me";
		} else {
			// 에러 발생
			return "common/errorPage";
		}
	}
	
	@RequestMapping("searchWorker.do")
	@ResponseBody
	public ModelAndView ResumeList(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(value = "checkboxValues", defaultValue = "") String checkboxValues, ModelAndView mv)
			throws Exception {
		int count = 0;
		if ((rService.getListCount() % 10) == 0) {
			count = (rService.getListCount() / 10);
		} else {
			count = (rService.getListCount() / 10) + 1;
		}
		System.out.println("count: " + count);
		ResumePage pager = new ResumePage(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();

		List<Resume> list = rService.ResumeList(checkboxValues, start, end);

		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		if (list != null) {
			map.put("list", list);
			map.put("pager", pager);
			map.put("count", count);
			map.put("checkboxValues", checkboxValues);
			mav.addObject("map", map);
			System.out.println("Controller: " + map);
			mav.setViewName("menu6Page");
			
		}
		return mav;
	}
	
	@RequestMapping("emplyMenu6Detail.me")
	public ModelAndView ResumeDetail(@RequestParam("reId") int reId,ModelAndView mv) throws Exception {
		Resume r = rService.ResumeDetail(reId);
		ModelAndView mav = new ModelAndView();
		System.out.println("r: " + r);
		if (r != null) {
			mav.setViewName("menu6Page");
			mav.addObject("resume", r);
			
		}

		return mav;
	}

	/*
	public String saveFile(MultipartFile file, HttpServletRequest request) {
	      String root = request.getSession().getServletContext().getRealPath("resources");
	      String savePath = root + "\\ruploadFiles";
	      
	      File folder = new File(savePath);
	      if(!folder.exists()) {
	         folder.mkdirs();
	      }
	      
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	      String originFileName = file.getOriginalFilename();
	      String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
	                        + originFileName.substring(originFileName.lastIndexOf(".") + 1);
	      
	      String renamePath = folder + "\\" + renameFileName;
	      try {
	         file.transferTo(new File(renamePath));
	      } catch (Exception e) {
	         e.printStackTrace();
	      } 
	      
	      return renameFileName;
	   }
	*/
	
	

}
