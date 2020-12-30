package com.moegga.app.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FreebbsController {
	
	
	
	@RequestMapping(value="/FreebbsList.do",method = RequestMethod.GET)
	public String freebbs() {
		return "bbs/freebbs/freebbsList.tiles";
	}
	

	
	
	@RequestMapping(value="/WriteFreebbs.do",method = RequestMethod.GET)
	public String writefreebbs() {
		return "bbs/freebbs/writeFreebbs.tiles";
	}
	

	
}
