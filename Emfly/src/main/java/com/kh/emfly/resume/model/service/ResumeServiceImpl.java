package com.kh.emfly.resume.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.emfly.resume.model.dao.ResumeDao;
import com.kh.emfly.resume.model.vo.Resume;

@Service("rService")
public class ResumeServiceImpl implements  ResumeService{
	@Autowired
	private ResumeDao rDAO;

	@Override
	public int resumeInsert(Resume r){
		return rDAO.resumeInsert(r);
	}

	@Override
	public List<Resume> ResumeList(String checkboxValues, int start, int end) throws Exception {
		return rDAO.ResumeList(checkboxValues,start,end);
	}

	@Override
	public int getListCount() throws Exception {
		return rDAO.getListCount();
	}

	@Override
	public Resume ResumeDetail(int reId) {
		return rDAO.resumeDetail(reId);
	}
	
}

