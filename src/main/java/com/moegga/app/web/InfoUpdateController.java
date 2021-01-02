package com.moegga.app.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.moegga.app.service.MemberDTO;
import com.moegga.app.service.MemberService;
import com.moegga.app.service.TownDTO;
import com.moegga.app.service.TownService;
import com.moegga.app.service.impl.MemberDAO;
import com.moegga.app.service.impl.TownDAO;

@Controller
public class InfoUpdateController {
	@Resource(name = "memberService")
	MemberService member;
	@Resource(name = "townService")
	TownService town;

	@RequestMapping("/CheckPwdForInfoUpdate.do")
	public String checkPwdForInfoUpdate(@RequestParam Map map, Model model, Authentication auth) {
		String id = ((UserDetails) auth.getPrincipal()).getUsername();
		map.put("id", id);
		MemberDTO dto = member.selectOneById(map);
		TownDTO townDTO = town.selectTownById(map);
		model.addAttribute("dto", dto);
		model.addAttribute("townDTO", townDTO);

		return "mypage/infoUpdate";
	}

	@RequestMapping("/UpdatePwd.do")
	public String updatePwd(@RequestParam Map map, Model model, Authentication auth) {

		String id = ((UserDetails) auth.getPrincipal()).getUsername();

		map.put("id", id);

		map.put("newpwd", map.get("newPwd"));
		member.updatePwd(map);
		model.addAttribute("updatePwdComplete", "<script>alert('비밀번호가 수정 되었어요!')</script>");
		return "index.tiles";
	}

	@RequestMapping("/Withdraw.do")
	public String withdraw(@RequestParam Map map, Model model, Authentication auth, HttpServletRequest req) {

		String id = ((UserDetails) auth.getPrincipal()).getUsername();

		map.put("id", id);

		member.deleteAll(map);
		model.addAttribute("deleteAll", "<script>alert('계정이 탈퇴되었어요!')</script>");
		return "redirect:/logout.do";
	}

	@RequestMapping("/InfoUpdate.do")
	public String infoUpdate(@RequestParam Map map, Model model, Authentication auth, HttpServletRequest req) {

		String id = ((UserDetails) auth.getPrincipal()).getUsername();

		map.put("id", id);

		TownDTO dto = town.selectTownById(map);

		if (dto == null) {
			town.insertAddr(map);
		} else {
			town.updateAddr(map);
		}
		member.infoUpdate(map);

		return "forward:/Mypage.do";
	}

	@RequestMapping(value = "/ProfileUpdate.do")
	public String insertAppealImg(@RequestParam("file") MultipartFile upload,@RequestParam Map map,HttpServletRequest req,
			Authentication auth) throws IllegalStateException, IOException {
		String id = ((UserDetails) auth.getPrincipal()).getUsername();

		String path = req.getSession().getServletContext().getRealPath("/images");
		map.put("id", id);
		File file = new File(path + File.separator + id + File.separator + upload.getOriginalFilename());
		MemberDTO dto = member.selectOneById(map);
	
		map.put("img", upload.getOriginalFilename());
		map.put("pr", map.get("pr"));
		
		map.put("about_me", map.get("about_me"));
		
		

		if (dto.getProfileimg() == null) {
			if(upload.getOriginalFilename().equals("")) {
				
				member.updateInfo(map);
			}else {
				
				member.updateInfo(map);
				upload.transferTo(file);
			}
		}else {
			if(upload.getOriginalFilename().equals("")) {
				if(map.get("delete").equals("delete")) {
					
					member.updateInfo(map);
					
				}else {
					map.put("img",dto.getProfileimg());
					member.updateInfo(map);
				}
			}else {

				member.updateInfo(map);
				upload.transferTo(file);
			}
		}


		/*
		 * map.put("id", id); map.put("img", upload.getOriginalFilename());
		 * 
		 * try { upload.transferTo(file); member.insertAppealImg(map); } catch
		 * (IllegalStateException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } catch (IOException e) { // TODO Auto-generated catch
		 * block e.printStackTrace(); }
		 */
		return "forward:/Mypage.do";
	}

}
