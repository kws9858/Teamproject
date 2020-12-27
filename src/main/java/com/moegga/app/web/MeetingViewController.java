package com.moegga.app.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MeetingViewController {
	
	
	
	@RequestMapping("/MeetingView.do")
	public String MeetingView() {
		return "/meeting/meetingView.tiles";
	}
	
	
	
	
	
	
	
	
	
	
}
