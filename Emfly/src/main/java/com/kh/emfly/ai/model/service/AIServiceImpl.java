package com.kh.emfly.ai.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.emfly.ai.model.vo.Keyword;



@Service("as")
public class AIServiceImpl implements AIservice{

	@Autowired
	public com.kh.emfly.ai.model.dao.AIDAO aDAO;
	@Override
	public List<Keyword> getKeywordList() {
		
		return aDAO.getKeywordList();
	}

}
