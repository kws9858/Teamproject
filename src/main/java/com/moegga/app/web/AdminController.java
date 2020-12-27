package com.moegga.app.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.moegga.app.service.AdminService;
import com.moegga.app.service.BBSAccusationDTO;
import com.moegga.app.service.MeetingAccusationDTO;
import com.moegga.app.service.impl.Paging;


@Controller
public class AdminController {
	
	@Resource(name = "adminService")
	AdminService service;
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;
	
	/*관리자 메인 페이지 이동 - 로그인 처리 추가예정 */
	@RequestMapping("/Admin/Main.do")
	public String admin(Model model) {
		List<Map> AgeNGender = service.ageAndGender();
		List<Map> CategoryNMeeting = service.categoryAndMeeting();
		model.addAttribute("AgeNGender",AgeNGender);
		model.addAttribute("CategoryNMeeting",CategoryNMeeting);
		return "admin/admin.adminTiles";
	}
	/*통계정보 상세보기 - 사용자 이용통계 보류중*/
	@RequestMapping("/Admin/Analysis.do")
	public String analysis(Model model) {
		List<Map> AgeNGender = service.ageAndGender();
		List<Map> CategoryNMeeting = service.categoryAndMeeting();
		List<Map> SubcategoryNMeeting = service.subcategoryAndMeeting();
		List<Map> TownNMeeting = service.townAndMeeting();
		model.addAttribute("AgeNGender",AgeNGender);
		model.addAttribute("CategoryNMeeting",CategoryNMeeting);
		model.addAttribute("SubcategoryNMeeting",SubcategoryNMeeting);
		model.addAttribute("TownNMeeting",TownNMeeting);
		return "admin/analysis/analysis.adminTiles";
	}
	/*게시글 신고 페이지*/
	@RequestMapping("/Admin/Accusation/BBS.do")
	public String bbsAccusation(@RequestParam Map map, Model model,HttpServletRequest req) {
		int nowPage = map.get("nowPage") == null ? 1 : Integer.parseInt(map.get("nowPage").toString());
		int totalRecord =service.getTotalRecordCountBBSAccusation();
		int totalPage=(int)Math.ceil((double)totalRecord/pageSize);
		int start =(nowPage-1) * pageSize+1;
		int end = nowPage * pageSize;
	
		map.put("start", start);
		map.put("end", end);
		List<BBSAccusationDTO> list = service.bbsAccusationSelectlist(map);
		String pagingString=Paging.pagingAccusation(totalRecord, pageSize, blockPage, nowPage, req.getContextPath()+"/Admin/Accusation/BBS.do?");
		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecord", totalRecord);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		return "admin/accusation/bbsAccusation.adminTiles";
	}
	@RequestMapping(value="/Admin/Accusation/BBS/Select.do",produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String selectBbs(@RequestParam String bbsno) {
		Map map=  service.selectBbs(bbsno);	
		JSONObject obj = new JSONObject();
		obj.put("TITLE", map.get("TITLE").toString());
		obj.put("ID", map.get("ID").toString());
		return obj.toJSONString();
	}
	@RequestMapping(value="/Admin/Accusation/BBS/Process.do",produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String accusationBBSProcess(@RequestParam Map map) {
		service.bbsAccusationProcess(map);
		JSONObject obj = new JSONObject();
		obj.put("baccusationno", map.get("baccusationno").toString());
		obj.put("result", map.get("result").toString());
		return obj.toJSONString();
	}
	/*모임 신고 페이지*/
	@RequestMapping("/Admin/Accusation/Meeting.do")
	public String meetingAccusation(@RequestParam Map map, Model model,HttpServletRequest req) {
		int nowPage = map.get("nowPage") == null ? 1 : Integer.parseInt(map.get("nowPage").toString());
		int totalRecord =service.getTotalRecordCountMeetingAccusation();
		int totalPage=(int)Math.ceil((double)totalRecord/pageSize);
		int start =(nowPage-1) * pageSize+1;
		int end = nowPage * pageSize;
	
		map.put("start", start);
		map.put("end", end);
		List<MeetingAccusationDTO> list = service.meetingAccusationSelectlist(map);
		String pagingString=Paging.pagingAccusation(totalRecord, pageSize, blockPage, nowPage, req.getContextPath()+"/Admin/Accusation/Meeting.do?");
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecord", totalRecord);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		return "admin/accusation/meetingAccusation.adminTiles";
	}
	@RequestMapping(value="/Admin/Accusation/Meeting/Select.do",produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String selectMeeting(@RequestParam String meetingno) {
		Map map=  service.selectMeeting(meetingno);
		JSONObject obj = new JSONObject();
		obj.put("MEETINGNAME", map.get("MEETINGNAME").toString());
		obj.put("OPERATOR", map.get("OPERATOR").toString());
		return obj.toJSONString();
	}
	@RequestMapping(value="/Admin/Accusation/Meeting/Process.do",produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String accusationMeetingProcess(@RequestParam Map map) {
		service.meetingAccusationProcess(map);
		JSONObject obj = new JSONObject();
		obj.put("maccusationno", map.get("maccusationno").toString());
		obj.put("result", map.get("result").toString());
		return obj.toJSONString();
	}
	/*공지사항관리 페이지*/
	@RequestMapping("/Admin/Notice/List.do")
	public String noticeList(@RequestParam Map map, Model model,HttpServletRequest req) {
		int nowPage = map.get("nowPage") == null ? 1 : Integer.parseInt(map.get("nowPage").toString());
		int totalRecord =service.getTotalRecordCountNotice();
		int totalPage=(int)Math.ceil((double)totalRecord/pageSize);
		int start =(nowPage-1) * pageSize+1;
		int end = nowPage * pageSize;
	
		map.put("start", start);
		map.put("end", end);
		List<Map> list = service.noticeSelectlist(map);
		String pagingString=Paging.pagingAccusation(totalRecord, pageSize, blockPage, nowPage, req.getContextPath()+"/Admin/Notice/List.do?");
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecord", totalRecord);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		return "admin/notice/noticeList.adminTiles";
	}
	@RequestMapping("/Admin/Notice/Write.do")
	public String noticeWrite() {
		return "admin/notice/noticeWrite.adminTiles";
	}
	@RequestMapping("/Admin/Notice/WriteProcess.do")
	public String noticeWriteprocess(@RequestParam Map map) {
		service.noticeInsert(map);
		return "redirect:/Admin/Notice/List.do";
	}
	@RequestMapping("/Admin/Notice/Update.do")
	public String noticeUpdate(@RequestParam String noticeno, Model model) {
		Map map = service.noticeSelectone(noticeno);
		model.addAttribute("item", map);
		return "admin/notice/noticeUpdate.adminTiles";
	}
	@RequestMapping("/Admin/Notice/UpdateProcess.do")
	public String noticeUpdateprocess(@RequestParam Map map) {
		service.noticeUpdate(map);
		return "redirect:/Admin/Notice/List.do";
	}
	@RequestMapping("/Admin/Notice/DeleteProcess.do")
	public String noticeDeleteProcess(@RequestParam String noticeno) {
		service.noticeDelete(noticeno);
		return "redirect:/Admin/Notice/List.do";
	}
	@RequestMapping(value = "/Admin/Notice/ToggleEnabled.do",produces = "text/html; charset=UTF-8")
	@ResponseBody
	public void toggleEnabled(@RequestParam Map map) {
		service.noticeEnabledToggle(map);
	}
	/*서머노트 업로드*/
	@RequestMapping(value="/uploadSummernoteImageFile.do", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
		
        /*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 */
		
		// 내부경로로 저장
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		System.out.println("contextRoot:"+contextRoot);
		String fileRoot = contextRoot+"resources/fileupload/";
		System.out.println("fileRoot:"+fileRoot);
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		System.out.println("originalFileName:"+originalFileName);
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/app/resources/fileupload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
			System.out.println("success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
	/*회원 조회용*/
	@RequestMapping("/Admin/Member/Member.do")
	public String member(Model model) {
		List<Map> MemberList = service.memberList();
		model.addAttribute("MemberList",MemberList);
		return "admin/member/member.adminTiles";
	}
	/*정지 회원 조회용*/
	@RequestMapping("/Admin/Member/SuspendMember.do")
	public String suspendMember(Model model) {
		List<Map> SuspendMemberList = service.suspendMemberList();
		model.addAttribute("SuspendMemberList",SuspendMemberList);
		return "admin/member/suspendMember.adminTiles";
	}
	/*회원 정지 해제용*/
	@RequestMapping(value = "/Admin/Member/MemberSuspendRelease.do",produces = "text/html; charset=UTF-8")
	public String memberSuspendRelease(@RequestParam Map map) {
		service.memberSuspendRelease(map);
		return "forward:/Admin/Member/SuspendMember.do";
	}
	/*모임 조회용*/
	@RequestMapping("/Admin/Meeting/Meeting.do")
	public String meeting(Model model) {
		List<Map> MeetingList = service.meetingList();
		model.addAttribute("MeetingList",MeetingList);
		return "admin/meeting/meeting.adminTiles";
	}
	/*정지 모임 조회용*/
	@RequestMapping("/Admin/Meeting/SuspendMeeting.do")
	public String suspendMeeting(Model model) {
		List<Map> SuspendMeetingList = service.suspendMeetingList();
		model.addAttribute("SuspendMeetingList",SuspendMeetingList);
		return "admin/meeting/suspendMeeting.adminTiles";
	}
	/*모임 정지 해제용*/
	@RequestMapping(value = "/Admin/Meeting/MeetingSuspendRelease.do",produces = "text/html; charset=UTF-8")
	public String meetingSuspendRelease(@RequestParam Map map) {
		service.meetingSuspendRelease(map);
		return "forward:/Admin/Meeting/SuspendMeeting.do";
	}
	/*정지 회원 검색용*/
	@RequestMapping("/Admin/Member/SearchMember.do")
	public ModelAndView searchMember(@RequestParam(defaultValue="") String keyword, Model model) {
		List<Map> searchList = service.searchMember(keyword);
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchList", searchList);
		map.put("keyword", keyword);
		mav.addObject("map",map);
		mav.setViewName("admin/member/memberSearchResult.adminTiles");
		
		return mav;
	}
	
	/*정지 모임 검색용*/
	@RequestMapping("/Admin/Member/SearchMeeting.do")
	public ModelAndView searchMeeting(@RequestParam(defaultValue="") String keyword, Model model) {
		List<Map> searchList = service.searchMeeting(keyword);
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchList", searchList);
		map.put("keyword", keyword);
		mav.addObject("map",map);
		mav.setViewName("admin/meeting/meetingSearchResult.adminTiles");
		
		return mav;
	}
}
