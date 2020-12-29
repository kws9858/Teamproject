package com.moegga.app.web;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.moegga.app.service.MemberDTO;
import com.moegga.app.service.MemberService;
import com.moegga.app.service.TownService;
import com.moegga.app.service.impl.MemberDAO;
import com.moegga.app.service.impl.TownDAO;

@Controller
public class JoinController {
	@Resource(name = "memberService")
	MemberService member;
	@Resource(name = "townService")
	TownService town;

	@RequestMapping("/JoinAddInformation.do")
	public String joinAddInformation(@RequestParam Map map, Model model) {

		System.out.println(map.get("user_id"));
		System.out.println(map.get("user_name"));
		System.out.println(map.get("user_password"));
		System.out.println(map.get("user_age"));
		System.out.println(map.get("gender"));
		System.out.println(map.get("tel"));

		model.addAttribute("user_id", map.get("user_id"));

		member.join(map);
		model.addAttribute("notice", "<script>alert('회원가입이 완료되었어요 !')</script>");
		return "member/joinAddInformation";
	}

	@RequestMapping("/insertImg.do")

	public String insertImg(@RequestParam("file") MultipartFile upload,@RequestParam Map map ,HttpServletRequest req,Model model) {

		map.put("pr",map.get("pr").toString().replace("\n","<br/>"));
		map.put("about_me",map.get("about_me").toString().replace("\n","<br/>"));
		String id =map.get("user_id").toString();
		System.out.println(id);
		System.out.println(upload.getOriginalFilename().toString());
		System.out.println(map.get("pr").toString());
		System.out.println(map.get("about_me").toString());
		System.out.println("주소 :"+map.get("addr"));
		map.put("id", id);
		map.put("img", upload.getOriginalFilename().toString());

		String path = req.getSession().getServletContext().getRealPath("/images");

		File file = new File(path + File.separator +id +File.separator+ upload.getOriginalFilename());

		try {
			upload.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		member.updateInfo(map);
		town.insertAddr(map);
		
		return "index.tiles";
	}
}
