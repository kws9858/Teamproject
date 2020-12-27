package com.moegga.app.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MeetingBBSController {
   
   
   
   @RequestMapping("/MeetingBBS.do")
   public String MeetingView() {
      return "/bbs/meetingbbs/meetingBBS.tiles";
   }
   
}
