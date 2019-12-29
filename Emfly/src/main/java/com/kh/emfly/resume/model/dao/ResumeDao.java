package com.kh.emfly.resume.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kh.emfly.resume.model.vo.Resume;

@Repository("rDAO") 
public interface ResumeDao {

	public int resumeInsert(Resume r);

	public List<Resume> ResumeList(String checkboxValues, int start, int end);

	public int getListCount();

	public Resume resumeDetail(int reId);

}
