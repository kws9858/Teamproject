package com.moegga.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.moegga.app.service.AdminService;
import com.moegga.app.service.impl.MemberDAO;
import com.moegga.app.service.impl.TownDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {
	
	@Resource(name = "adminService")
	AdminService adminservice;
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		//깃 테스트를 위해 주석 추가아아아아아아
		//추가아아아아아아아아아
		List<Map> notice = adminservice.mainNoticeSelectlist();
		model.addAttribute("notice",notice);
		return "index.tiles";
	}
	
	@RequestMapping(value="/Join.do",method = RequestMethod.GET)
	public String join() {
		return "/member/join";
	}
	

	@RequestMapping(value="/SearchAddress.do",method = RequestMethod.GET)
	public String searchAddress(HttpServletRequest req,Model model) {
		
		model.addAttribute("address",req.getParameter("address"));
		return "/member/SearchAddress";
	}
	
	@RequestMapping(value="/login.do",method = RequestMethod.GET)
	public String login() {
		return "/member/login";
	}
	
	/*그룹 채팅용*/
	@RequestMapping(value="/Meeting/Chat.do",produces = "text/html; charset=UTF-8")
	public String meetingChat() {
		return "/meeting/chat/home";
	}

	
}
