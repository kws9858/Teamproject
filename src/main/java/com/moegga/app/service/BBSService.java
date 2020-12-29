package com.moegga.app.service;

import java.util.List;
import java.util.Map;



public interface BBSService {
	
	//admin애서 전체asdasdasd 문의게시판 리스트
	List<Map> selectList(Map map);
	
	///마이 페이지 내문의리스트
	List<Map> myselectList(Map map);
	//전체 레코드 수]
	int getTotalRecord(Map map);
	//상세보기용]
	BBSDTO selectOne(Map map);
	//입력/수정/삭제용]
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
}
