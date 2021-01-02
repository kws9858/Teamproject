package com.moegga.app.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TownViewController {
	
	
	
	@RequestMapping(value="/AllOfMeeting.do",method = RequestMethod.GET)
	public String meeting() {
		return "/town/allOfMeeting.tiles";
	}
	
	
	@RequestMapping(value="/ShowUser.do",method = RequestMethod.GET)
	public String member() {
		return "/town/showUser.tiles";
	}

	@RequestMapping(value="/CreateMeeting.do",method = RequestMethod.GET)
	public String createMeeting() {
		return "/meeting/createMeeting.tiles";
	}
	
	

	
}
