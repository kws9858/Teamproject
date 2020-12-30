package com.moegga.app.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.moegga.app.service.BBSDTO;
import com.moegga.app.service.BBSService;

@Repository("bBBSDAO")
public class BBSDAO implements BBSService{

	@Resource(name="template")
	private SqlSessionTemplate bbsTemplate;


	
	@Override
	public List<Map> selectList(Map map) {
		
		return bbsTemplate.selectList("BBSSelectList",map);
	}

	@Override
	public int insert(Map map) {
		
		return bbsTemplate.insert("BBSInsert",map);
		
	}
	
	
	public int getTotalRecord(Map map) {
		return bbsTemplate.selectOne("BBSGetTotalRecord",map);
	}


	@Override
	public BBSDTO selectOne(Map map) {
		
		return bbsTemplate.selectOne("BBSSelectOne",map);
	}

	@Override
	public int delete(Map map) {
	
		return 0;
	}

	@Override
	public int update(Map map) {
		
		return bbsTemplate.update("BBSUpdate",map);
	
	}

	
	//내 문의함
	@Override
	public List<Map> myselectList(Map map) {
		return bbsTemplate.selectList("BBSMySelectList",map);
	}

	
}
