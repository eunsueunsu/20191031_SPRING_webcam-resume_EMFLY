package com.kh.emfly.resume.model.service;

import java.util.List;

import com.kh.emfly.resume.model.vo.Resume;

public interface ResumeService {

	int resumeInsert(Resume r);

	public List<Resume> ResumeList(String checkboxValues,int start,int end) throws Exception;
	

	int getListCount() throws Exception;

	Resume ResumeDetail(int reId);
	
}
