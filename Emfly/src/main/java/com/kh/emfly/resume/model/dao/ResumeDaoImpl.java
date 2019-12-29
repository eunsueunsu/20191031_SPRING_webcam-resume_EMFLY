package com.kh.emfly.resume.model.dao;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.emfly.resume.model.vo.Resume;

@Repository
public class ResumeDaoImpl implements ResumeDao{

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	@Override
	public int resumeInsert(Resume r){
		return sqlSession.insert("ResumeMapper.resumeInsert",r);
	}


	@Override
	public List<Resume> ResumeList(String checkboxValues, int start, int end) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("checkboxValues", checkboxValues);
		map.put("start", start); 
        map.put("end", end);
		return sqlSession.selectList("ResumeMapper.listAll",map);
	}
	

	@Override
	public int getListCount() {
		return sqlSession.selectOne("ResumeMapper.getListCount");
	}


	@Override
	public Resume resumeDetail(int reId) {
		return sqlSession.selectOne("ResumeMapper.selectResume",reId);
	}
	
	
	
}
