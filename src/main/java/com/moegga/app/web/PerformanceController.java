package com.moegga.app.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PerformanceController {
	
	
	
	@RequestMapping(value="/Perform.do",method = RequestMethod.GET)
	public String perform() {
		return "/performance/perform.tiles";
	}
	
		
	@RequestMapping(value="/CreatePerformance.do",method = RequestMethod.GET)
	public String createPerformance() {
		return "/performance/createPerformance.tiles";
	}
	

	
}
