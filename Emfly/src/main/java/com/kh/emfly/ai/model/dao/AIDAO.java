package com.kh.emfly.ai.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.emfly.ai.model.vo.Keyword;


@Repository("aDAO")
public class AIDAO {
	
	@Autowired
	   private SqlSessionTemplate sqlSession;


	public List<Keyword> getKeywordList() {
		
		return sqlSession.selectList("Keyword.getKeywordList");
	}

}
