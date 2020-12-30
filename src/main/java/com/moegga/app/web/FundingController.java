package com.moegga.app.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.moegga.app.service.DonationDTO;
import com.moegga.app.service.DonationService;
import com.moegga.app.service.FundingDTO;
import com.moegga.app.service.FundingService;
import com.moegga.app.service.MemberDTO;
import com.moegga.app.service.MemberService;
import com.moegga.app.service.TownDTO;
import com.moegga.app.service.TownService;
import com.moegga.app.service.impl.Paging;
import com.moegga.app.service.impl.PagingUtil;

@Controller
public class FundingController {
	@Resource(name = "fundingService")
	FundingService funding;
	@Resource(name = "donationService")
	DonationService donation;
	@Resource(name = "townService")
	TownService town;
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;
	
	@RequestMapping(value="/FundingList.do")
	public String fundingList(@RequestParam Map map,Model model,HttpServletRequest req) {

		int nowPage = map.get("nowPage") == null ? 1 : Integer.parseInt(map.get("nowPage").toString());
		int totalRecord =funding.getTotalRecordCountFunding(map);
		int totalPage=(int)Math.ceil((double)totalRecord/pageSize);
		int start =(nowPage-1) * pageSize+1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecord, pageSize, blockPage, nowPage, req.getContextPath()+"/FundingList.do?");
		List<FundingDTO> list = funding.selectFundingList(map);
		
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date currentTime = new Date ();
		String mTime = mSimpleDateFormat.format (currentTime);
		
		try {
			currentTime=mSimpleDateFormat.parse(mTime);
			
		} catch (ParseException e) {
			
			e.printStackTrace();
		}

		for(FundingDTO dto:list ) {
			map.put("meetingNo", dto.getMeetingNo());
			//모임소개글이 너무길면 짤라서 뿌려줌
			if(dto.getMeetingDescription().length()>40) {
			dto.setMeetingDescription(dto.getMeetingDescription().substring(0, 40)+". . .");
			}
			//펀딩 끝나는날과 현재날 빼서 일수 계산 로직
			 long calDate = currentTime.getTime() - dto.getFundingEnddate().getTime();  
		     int calDateDays = (int)(calDate / ( 24*60*60*1000)); 
		     calDateDays = Math.abs(calDateDays);
		     dto.setCalDateDays(calDateDays);
		    //donationDTO 꺼내오기
		     List<DonationDTO> donationList =donation.selectDonationList(map);
		    
		     for(DonationDTO donationDTO : donationList) {
		    	 dto.setDonationList(donationList.size());
		     }
		    
		}
		
		
		model.addAttribute("list",list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecord", totalRecord);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		
		
		
		
		return "/funding/fundingList.tiles";
	}
	
	@RequestMapping(value="/funding/FundingListMyTown.do")
	public String fundingListMyTown(@RequestParam Map map,Model model,Authentication auth,HttpServletRequest req) {
		String id = ((UserDetails) auth.getPrincipal()).getUsername();
		map.put("id", id);
		
		TownDTO townDTO =town.selectTownById(map);
		String town="";
		map.put("town", town);
		if(townDTO != null) {
			town =townDTO.getTown();
			map.put("town", town);
		}
		
		int nowPage = map.get("nowPage") == null ? 1 : Integer.parseInt(map.get("nowPage").toString());
		int totalRecord =funding.getTotalRecordCountFunding(map);
		int totalPage=(int)Math.ceil((double)totalRecord/pageSize);
		int start =(nowPage-1) * pageSize+1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecord, pageSize, blockPage, nowPage, req.getContextPath()+"/funding/FundingListMyTown.do?");
		
		List<FundingDTO> list = funding.selectFundingList(map);
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date currentTime = new Date ();
		String mTime = mSimpleDateFormat.format (currentTime);
		
		try {
			currentTime=mSimpleDateFormat.parse(mTime);
			
		} catch (ParseException e) {
			
			e.printStackTrace();
		}

		for(FundingDTO dto:list ) {
			map.put("meetingNo", dto.getMeetingNo());
			//모임소개글이 너무길면 짤라서 뿌려줌
			if(dto.getMeetingDescription().length()>40) {
			dto.setMeetingDescription(dto.getMeetingDescription().substring(0, 40)+". . .");
			}
			//펀딩 끝나는날과 현재날 빼서 일수 계산 로직
			 long calDate = currentTime.getTime() - dto.getFundingEnddate().getTime();  
		     int calDateDays = (int)(calDate / ( 24*60*60*1000)); 
		     calDateDays = Math.abs(calDateDays);
		     dto.setCalDateDays(calDateDays);
		    //donationDTO 꺼내오기
		     List<DonationDTO> donationList =donation.selectDonationList(map);
		    
		     for(DonationDTO donationDTO : donationList) {
		    	 dto.setDonationList(donationList.size()); 
		     }
		}
		
		
		model.addAttribute("town",town);
		model.addAttribute("list",list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecord", totalRecord);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		
		
		return "/funding/fundingListMyTown.tiles";
	}
	
	@RequestMapping(value="/funding/Funding.do")
	public String funding(@RequestParam Map map,Model model) {
		System.out.println("meetingNo:"+map.get("meetingNo").toString());
		FundingDTO dto =funding.selectFundingOne(map);
		
		
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date currentTime = new Date ();
		String mTime = mSimpleDateFormat.format (currentTime);
		
		try {
			currentTime=mSimpleDateFormat.parse(mTime);
			
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		//펀딩 끝나는날과 현재날 빼서 일수 계산 로직
		 long calDate = currentTime.getTime() - dto.getFundingEnddate().getTime();  
	     int calDateDays = (int)(calDate / ( 24*60*60*1000)); 
	     calDateDays = Math.abs(calDateDays);
	     dto.setCalDateDays(calDateDays);
	     
	     List<DonationDTO> donationList =donation.selectDonationList(map);
	     dto.setDonationList(donationList.size());
	     
	     dto.setMeetingDescription(dto.getMeetingDescription().replace("\n","<br/>"));
		
		model.addAttribute("dto",dto);
		
		
		return "/funding/funding.tiles";
	}
}
