package com.moegga.app.web;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.moegga.app.service.BBSDTO;
import com.moegga.app.service.BBSService;
import com.moegga.app.service.impl.PagingUtil;



@Controller
public class BBSController {

	@Resource(name = "bbsService")
	private BBSService bbsService;

	@RequestMapping(value = "IsLogin.do", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String isLogin(Authentication auth) {
		// 인증이 안되었다면 auth는 null
		JSONObject json = new JSONObject();
		if (auth == null) {
			json.put("isLogin", "NO");
			return json.toJSONString();
		}
		json.put("isLogin", "YES");
		return json.toJSONString();
	}

	@RequestMapping(value = "/Questions.do", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String write(
			// @ModelAttribute("id") String id,
			Authentication auth, @RequestParam Map map) {
		// 서비스 호출]
		// map.put("id", id);//(씨큐리티 미 사용시)한줄 댓글 작성자의 아이디를 맵에 설정
		map.put("id", ((UserDetails) auth.getPrincipal()).getUsername());

		bbsService.insert(map);
		return "문의가 접수 되었습니다";// 원본글의 번호 반환
	}

	// 목록 처리]
	@RequestMapping("/QuestionsAdminlist.do")
	public String list(
			// @ModelAttribute("id") String id,//(씨큐리티 미 사용시)세션영역에서 id가져오기-isLogin.jsp파일 사용시
			// 불필요
			@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			HttpServletRequest req, // 컨텍스트 루트 얻기용
			Model model) {
		/*
		 * 스프링 씨큐리티 적용시 인증(로그인)되었다면 Authentication객체에 로그인과 관련된 정보가 전달됨 로그인이 안되어 있으면
		 * auth는 null
		 */

		int pageSize = 5;

		int blockPage = 10;

		// 서비스 호출]
		// 페이징을 위한 로직 시작]
		// 전체 레코드수
		int totalRecordCount = bbsService.getTotalRecord(map);

		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);

		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]

		map.put("start", start);
		map.put("end", end);
		List<Map> list = bbsService.selectList(map);
		
		List<Map> collections = new Vector<Map>();
		for(Map m  : list) {
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String date = simpleDateFormat.format(m.get("BBSPOSTDATE"));
			m.put("BBSPOSTDATE",date);
		
			String none="";
			String success="답변대기";
			String color="red";
			
			if(m.get("TITLE").toString().length()>=5) {
				if(m.get("TITLE").toString().substring(0,4).equals("[답글]")) {
					success="답변완료";
					color="green";
					none=" style=\"color:gray\"";
					
							}
			
				}
			m.put("success", success);
			m.put("none", none);
			m.put("color", color);
			collections.add(m);
		}
	
		
		// 데이타 저장]

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/QuestionsAdminlist.do");
		model.addAttribute("list", collections);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		// 뷰정보 반환]
		return "admin/questions/questions.adminTiles";
	}

	@RequestMapping("/QuestionsAdminlistOne.do")
	public String listone(
			// @ModelAttribute("id") String id,//(씨큐리티 미 사용시)세션영역에서 id가져오기-isLogin.jsp파일 사용시
			// 불필요
			@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage, Model model) {

		BBSDTO bbsdto = bbsService.selectOne(map);
		model.addAttribute("bbsdto", bbsdto);
		// 뷰정보 반환]
		return "admin/questions/questionsview.adminTiles";
	}

	@RequestMapping("/Questionsupdate.do")
	public String update(HttpServletRequest req, @RequestParam Map map) {
	

		int success=	bbsService.update(map);

		// 뷰로 포워드
		return "forward:/QuestionsAdminlist.do";
	}////////////////

	
	@RequestMapping("/MyQuestion.do")
	public String mylist(
			@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			HttpServletRequest req, // 컨텍스트 루트 얻기용
			Model model,
			Authentication auth) {
		/*
		 * 스프링 씨큐리티 적용시 인증(로그인)되었다면 Authentication객체에 로그인과 관련된 정보가 전달됨 로그인이 안되어 있으면
		 * auth는 null
		 */
		String id = ((UserDetails) auth.getPrincipal()).getUsername();
		System.out.println("id"+id);
		map.put("id",id);
		int pageSize = 5;

		int blockPage = 10;

		// 서비스 호출]
		// 페이징을 위한 로직 시작]
		// 전체 레코드수
		int totalRecordCount = bbsService.getTotalRecord(map);
        System.out.println("totalRecordCount:"+totalRecordCount);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);

		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
       
		map.put("start", start);
		map.put("end", end);
		List<Map> list = bbsService.myselectList(map);
		
		List<Map> collections = new Vector<Map>();
		for(Map m  : list) {
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String date = simpleDateFormat.format(m.get("BBSPOSTDATE"));
			m.put("BBSPOSTDATE",date);
		
			
			String CONTENTS =((String)m.get("CONTENTS")).replace("\r\n","<br/>");
		
			m.put("CONTENTS",CONTENTS);
			String success="답변대기";
			String color="red";
		
			
			if(m.get("TITLE").toString().length()>=5) {
				
				if(m.get("TITLE").toString().substring(0,4).equals("[답글]")) {	
				success="답변완료";
				color="green";
				m.put("TITLE",m.get("TITLE").toString().substring(5));
				
						}
				}
			m.put("success", success);
			m.put("color", color);
			collections.add(m);
			}
	
		
		// 데이타 저장]
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/MyQuestion.do");
		model.addAttribute("list", collections);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		// 뷰정보 반환]
		return "mypage/questions/myquestions.tiles";
	}
	

}
