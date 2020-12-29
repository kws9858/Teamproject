package com.moegga.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.moegga.app.service.BBSAccusationDTO;
import com.moegga.app.service.MeetingAccusationDTO;

@Repository("adminDAO")
public class AdminDAO {
	
	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;
	
	/*통계용*/
	public List<Map> ageAndGender(){
		return sqlMapper.selectList("ageAndGenderSelect");
	}
	public List<Map> categoryAndMeeting(){
		return sqlMapper.selectList("categoryAndMeetingSelect");
	}
	public List<Map> subcategoryAndMeeting(){
		return sqlMapper.selectList("subcategoryAndMeetingSelect");
	}
	public List<Map> townAndMeeting(){
		return sqlMapper.selectList("townAndMeetingSelect");
	}
	
	/*bbsAccusation*/
	public List<BBSAccusationDTO> bbsAcusationSelectlist(Map map) {
		return sqlMapper.selectList("bbsAcusationSelect",map);
	}
	public int getTotalRecordCountBBSAccusation() {
		return sqlMapper.selectOne("totalRecordCountBBSAccusationSelect");
	}
	public Map selectBbs(String bbsno) {
		return sqlMapper.selectOne("selectBbs",bbsno);
	}
	public void bbsAccusationProcess(Map map) {
		if(!map.get("result").toString().equals("무죄")) {
			sqlMapper.insert("bbsAccusationProcessinsert",map);
		}
		sqlMapper.update("bbsAccusationProcessupdatemeeting",map);
		sqlMapper.update("bbsAccusationProcessupdateaccusation",map);
	}
	
	/*MeetingAccusation*/
	public List<MeetingAccusationDTO> meetingAcusationSelectlist(Map map) {
		return sqlMapper.selectList("meetingAcusationSelect",map);
	}
	public int getTotalRecordCountMeetingAccusation() {
		return sqlMapper.selectOne("totalRecordCountMeetingAccusationSelect");
	}
	public Map selectMeeting(String meetingno) {
		return sqlMapper.selectOne("selectMeeting",meetingno);
	}
	public void meetingAccusationProcess(Map map) {
		if(!map.get("result").toString().equals("무죄")) {
			sqlMapper.insert("meetingAccusationProcessinsert",map);
		}
		sqlMapper.update("meetingAccusationProcessupdatemeeting",map);
		sqlMapper.update("meetingAccusationProcessupdateaccusation",map);
	}
	
	/*공지사항 관리용*/
	public List<Map> noticeSelectlist(Map map) {
		return sqlMapper.selectList("noticeSelectlist",map);
	}
	public int getTotalRecordCountNotice() {
		return sqlMapper.selectOne("getTotalRecordCountNotice");
	}
	public int noticeInsert(Map map) {
		return sqlMapper.insert("noticeInsert",map);
	}
	public Map noticeSelectone(String noticeno) {
		return sqlMapper.selectOne("noticeSelectone",noticeno);
	}
	public int noticeUpdate(Map map) {
		return sqlMapper.update("noticeUpdate",map);
	}
	public int noticeDelete(String noticeno) {
		return sqlMapper.delete("noticeDelete",noticeno);
	}
	public int noticeEnabledToggle(Map map) {
		return sqlMapper.update("noticeEnabledToggle",map);
	}
	/*메인에서 공지사항 보여주기*/
	public List<Map> mainNoticeSelectlist() {
		return sqlMapper.selectList("mainNoticeSelectlist");
	}
	/*회원 조회용*/
	public List<Map> memberList(){
		return sqlMapper.selectList("memberList");
	}
	/*정지 회원 조회용*/
	public List<Map> suspendMemberList(){
		return sqlMapper.selectList("suspendMemberList");
	}
	/*모임 조회용*/
	public List<Map> meetingList() {
		return sqlMapper.selectList("meetingList");
	}
	/*정지 모임 조회용*/
	public List<Map> suspendMeetingList() {
		return sqlMapper.selectList("suspendMeetingList");
	}
	/*회원 정지 해제용*/
	public int memberSuspendRelease(Map map) {
		return sqlMapper.update("memberSuspendRelease",map);
	}
	/*모임 정지 해제용*/
	public int meetingSuspendRelease(Map map) {
		return sqlMapper.update("meetingSuspendRelease",map);
	}
	/*정지 회원 검색용*/
	public List<Map> searchMember(String keyword) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("keyword",keyword);
		return sqlMapper.selectList("searchMember",keyword);
	}
	public List<Map> searchMeeting(String keyword) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("keyword",keyword);
		return sqlMapper.selectList("searchMeeting",keyword);
	}
	
}
