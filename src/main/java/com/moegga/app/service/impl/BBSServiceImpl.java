package com.moegga.app.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moegga.app.service.AdminService;
import com.moegga.app.service.BBSDTO;
import com.moegga.app.service.BBSService;

@Service("bbsService")
public class BBSServiceImpl implements BBSService {
	
	@Resource(name="bBBSDAO")
	private BBSDAO dao;

	

	@Override
	public int getTotalRecord(Map map) {
	 System.out.println("들어옴");
		return dao.getTotalRecord(map);
	}



	@Override
	public int insert(Map map) {
		
		return 	dao.insert(map);
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	@Override
	public List<Map> myselectList(Map map) {
		
		return dao.myselectList(map);
	}
	
	
}
