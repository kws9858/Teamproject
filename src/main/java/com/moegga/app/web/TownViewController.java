package com.moegga.app.web;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.map.HashedMap;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.moegga.app.service.BBSService;
import com.moegga.app.service.BBS_ImgService;
import com.moegga.app.service.CategoryService;
import com.moegga.app.service.FundingDTO;
import com.moegga.app.service.Like_MeetingService;
import com.moegga.app.service.MeetingDTO;

import com.moegga.app.service.MeetingRoleDTO;

import com.moegga.app.service.MeetingRoleService;
import com.moegga.app.service.MeetingService;
import com.moegga.app.service.MemberDTO;
import com.moegga.app.service.MemberService;
import com.moegga.app.service.PerformanceDTO;
import com.moegga.app.service.TownDTO;
import com.moegga.app.service.TownService;
import com.moegga.app.service.impl.PagingUtil;
//import com.sun.org.glassfish.gmbal.ParameterNames;
import sun.net.www.MeteredStream;

@Controller
public class TownViewController {

   @Resource(name = "memberService")
   MemberService member;
   @Resource(name = "townService")
   TownService town;
   @Resource(name = "categoryService")
   CategoryService category;
   @Resource(name = "meetingService")
   MeetingService meeting;
   @Resource(name = "meetingRoleService")
   MeetingRoleService meetingRole;
   @Resource(name = "bbsService")
   BBSService bbs;
   @Resource(name = "bbs_imgService")
   BBS_ImgService bbs_img;
   @Resource(name = "like_meetingService")
   Like_MeetingService like_meeting;

   @Value("${MEMBERPAGE_SIZE}")
   private int pageSize;
   @Value("${MEMBERBLOCK_PAGE}")
   private int blockPage;
   
   @RequestMapping(value="/town/AllOfMeeting.do")
   public String meeting(Authentication auth,Model model,@RequestParam Map map) {
      
      List<Map> subCategoryList = category.selectSubCategory(map);
      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("id", id);
      TownDTO townDTO = town.selectTownById(map);
      String town = null;
      map.put("town", town);
      List<MeetingDTO> allMeetingList = meeting.selectMeetingList(map);
      if (townDTO != null) {
         town = townDTO.getTown();
         map.put("town", town);
      }

      
      List<MeetingDTO> meetingList =meeting.selectMeetingList(map);
      for(MeetingDTO meeting:meetingList ) {
         
         if(meeting.getMeetingDescription().length()>30) {
            meeting.setMeetingDescription(meeting.getMeetingDescription().substring(0, 30)+". . .");
            }else {
               
            }
         
         map.put("meetingNo", meeting.getMeetingNo()); // trex meetingno 2

         String latestMeetingBBSNo = bbs.selectLatestMeetingBBS(map);

         System.out.println(meeting.getMeetingName() + "의 가장최근 모임게시판 번호" + latestMeetingBBSNo);
         map.put("bbsNo", latestMeetingBBSNo); // 가장최근 모임게시판 3
         if (latestMeetingBBSNo != null) {
            List<Map> bbs_imgList = bbs_img.selectMeetingBBSImgList(map);
            meeting.setMeetingBBSImgList(bbs_imgList);

         }
         int meetingRoleList = meetingRole.selectMeetingRoleList(map);

         meeting.setMeetingRoleList(meetingRoleList);

         String userLike = like_meeting.selectMeetingLike(map);

         meeting.setUserLike(userLike);

      }

      
      map.put("operator", id);
      MeetingDTO Mdto=meeting.selectMeetingByOperator(map);
      System.out.println("4");
      model.addAttribute("Mdto", Mdto);
      int joinMcount=meetingRole.selectJoinMeetingList(map);
      System.out.println("5");
      model.addAttribute("joinMcount", joinMcount);
      
      //2021-01-09 동네모임리스트 db에서 꺼내기까지 완료
      model.addAttribute("meetingList",meetingList);
      model.addAttribute("town",town);
      model.addAttribute("allMeetingList",allMeetingList);
      model.addAttribute("subCate",subCategoryList);
      

      return "/town/allOfMeeting.tiles";
   }
//////////////////////////////////////////////////////////////////////////////////////////////////끝
   @RequestMapping(value = "/ShowUser.do", method = RequestMethod.GET)
   public String member(@RequestParam Map map, Model model, Authentication auth, HttpServletRequest req) {
      String id = ((UserDetails) auth.getPrincipal()).getUsername();

      map.put("id", id);
      List categorySize = new Vector<>();
      TownDTO townDTO = town.selectTownById(map);

      String town = null;
      map.put("town", town);
      if (townDTO != null) {
         town = townDTO.getTown();
         map.put("town", town);
      }

      int nowPage = map.get("nowPage") == null ? 1 : Integer.parseInt(map.get("nowPage").toString());
      int totalRecord = member.selectMemberListCount(map);
      int totalPage = (int) Math.ceil((double) totalRecord / pageSize);
      int start = (nowPage - 1) * pageSize + 1;
      int end = nowPage * pageSize;

      map.put("start", start);
      map.put("end", end);

      List<MemberDTO> list = member.selectMemberList(map);
      

      String pagingString = PagingUtil.pagingBootStrapStyle(totalRecord, pageSize, blockPage, nowPage,
            req.getContextPath() + "/ShowUser.do?");

      for (MemberDTO dto : list) {
         if (dto.getPr() == null) {
            dto.setPr("자기소개가 없어요");
         } else {
            if (dto.getPr().length() > 15) {
               dto.setPr(dto.getPr().substring(0, 10) + ". . .");
            }
         }
         map.put("id", dto.getId());
         System.out.println(dto.getId());
         dto.setCategoryList(category.selectCategory(map));
         
      }
      


      model.addAttribute("categorySize", categorySize);
      model.addAttribute("town", town);
      model.addAttribute("list", list);
      model.addAttribute("pagingString", pagingString);
      model.addAttribute("totalRecord", totalRecord);
      model.addAttribute("nowPage", nowPage);
      model.addAttribute("pageSize", pageSize);
      return "/town/showUser.tiles";
   }
   
   @RequestMapping(value = "/profileView.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   public String profileView(@RequestParam Map map, Model model,Authentication auth) {
      String id =map.get("id").toString();
      
      MemberDTO memberDTO = member.selectOneById(map);
      TownDTO townDTO =town.selectTownById(map);
      String userTown=null;
      if(townDTO != null) {
         userTown =townDTO.getTown();
      }
      List<Map> appealList = member.selectAppealList(map);
   
      Map record = new HashMap();
      List<Map> list = new Vector<Map>();
      List<Map> joinedMeetingList =meeting.selectJoinedMeetingList(map);
      
      for (Map joinedMeeting : joinedMeetingList) {

         if (joinedMeeting.get("MEETINGDESCRIPTION").toString().length() > 15) {
            joinedMeeting.put("MEETINGDESCRIPTION", joinedMeeting.get("MEETINGDESCRIPTION").toString().substring(0, 15) + ". . .");
         }
         
         map.put("meetingNo", joinedMeeting.get("MEETINGNO"));

         int meetingRoleList = meetingRole.selectMeetingRoleList(map);
         map.put("id", ((UserDetails) auth.getPrincipal()).getUsername()); //프로필뷰를 보는사람의 아이디를 map에다 넣어서 미팅좋아요 유무판단
         String userLike = like_meeting.selectMeetingLike(map);
         map.put("id", id); //다시 프로필을 보여지는 사람의 아이디를 map에 넣음

         joinedMeeting.put("userLike", userLike);

         joinedMeeting.put("meetingRoleList", meetingRoleList);
      }
      System.out.println("가입한 모임 :"+joinedMeetingList);
      record.put("about_me", memberDTO.getAbout_me());
      record.put("age", memberDTO.getAge());
      record.put("gender", memberDTO.getGender());
      record.put("id", memberDTO.getId());
      record.put("name", memberDTO.getName());
      record.put("postDate", memberDTO.getPostdate().toString());
      record.put("pr", memberDTO.getPr());
      record.put("profileImg", memberDTO.getProfileimg());
      record.put("town", userTown);
      record.put("appealList", appealList);
      record.put("joinedMeetingList", joinedMeetingList); //이게 jsp로 에이작스 넘어가면서 에이작스가 안됨. dto로 받고있느,ㄴ걸 map으로 한번 받아보자 ㅆㅃ
      

      list.add(record);

      return JSONArray.toJSONString(list);
      
   }
////////////////////////////////////////////////////////////////////////////////////////////////
   @RequestMapping(value = "/CreateMeeting.do", method = RequestMethod.GET)
   public String createMeeting(Model model) {
      List<Map> mainCategory = category.selectMainCategory(); // select distinct * maincategory from category
                                                // ->음악,예술,공연,스포츠
      System.out.println(mainCategory.size());
      for (Map maincate : mainCategory) {
         System.out.println("메인카테고리 :" + maincate.get("MAINCATEGORY"));
      }
      model.addAttribute("mainCategory", mainCategory);
      return "/meeting/createMeeting.tiles";
   }

      
   ///CreateNewMeeting.do
   @RequestMapping(value="/CreateNewMeeting.do")
   public String createNewMeeting(@RequestParam("cma_file") MultipartFile upload,@RequestParam Map map,HttpServletRequest req,Authentication auth) {
      
      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("operator", id); // #{operator}

      int maxrole = 1;
      for (String memberRole : req.getParameterValues("memberRole")) {
         maxrole++;
      }

      map.put("maxRole", maxrole);
      map.put("content", map.get("content").toString().replace("<p>", "").replace("</p>", ""));
      //map.put("content", map.get("content").toString().substring(3, map.get("content").toString().lastIndexOf("<")));
      
      int categoryNo=category.selectCategoryNo(map);

      map.put("categoryNo", categoryNo);
      
      System.out.println("여기:"+upload.getOriginalFilename());
      map.put("bannerImg", upload.getOriginalFilename());
      System.out.println("dkfoWHr"+map.get("bannerImg"));
      
      meeting.insertNewMeeting(map);

      MeetingDTO meetingDTO = meeting.selectMeetingByOperator(map);

      map.put("meetingNo", meetingDTO.getMeetingNo());


      map.put("img", upload.getOriginalFilename().toString());

      String path = req.getSession().getServletContext().getRealPath("/images");
      File pathFile = new File(path+File.separator +id+File.separator+meetingDTO.getMeetingName());
        if(!pathFile.exists()) {
           pathFile.mkdirs();
        }

      File file = new File(path+File.separator +id+File.separator+meetingDTO.getMeetingName() + File.separator + upload.getOriginalFilename());
      try {
         upload.transferTo(file);
      } catch (IllegalStateException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }

      map.put("id", id);
      MemberDTO memberDTO = member.selectOneById(map);
      map.put("name", memberDTO.getName());
      meetingRole.insertOperator(map);
      for (String memberRole : req.getParameterValues("memberRole")) {
         map.put("memberRole", memberRole); // meetingRole이라는 name값 , 처음에 베이스 라는 value;
         meetingRole.insertMemberRole(map); // #{meetingRole} ->베이스
      }
      map.clear();

      return "redirect:/town/AllOfMeeting.do";
   }

   @RequestMapping(value = "/meetingLikeMypage.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   public String meetingLikeMypage(@RequestParam Map map, Authentication auth) {

      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("id", id);
      like_meeting.insertMeetingLike(map);

      MeetingDTO dto = meeting.selectOneMeetingByNoAndId(map);

      Map record = new HashMap();
      List<Map> list = new Vector<Map>();
      
      if (dto.getMeetingDescription().length() > 30) {
         dto.setMeetingDescription(dto.getMeetingDescription().substring(0, 30) + ". . .");
         record.put("meetingDescription", dto.getMeetingDescription());
      } else {
         record.put("meetingDescription", dto.getMeetingDescription());
      }
      //
      map.put("meetingNo", dto.getMeetingNo());

      String latestMeetingBBSNo = bbs.selectLatestMeetingBBS(map);

      map.put("bbsNo", latestMeetingBBSNo); // 가장최근 모임게시판 3

      if (latestMeetingBBSNo != null) {
         List<Map> bbs_imgList = bbs_img.selectMeetingBBSImgList(map);
         dto.setMeetingBBSImgList(bbs_imgList);
         record.put("meetingBBSImgList", dto.getMeetingBBSImgList());

      }
      int meetingRoleList = meetingRole.selectMeetingRoleList(map);

      dto.setMeetingRoleList(meetingRoleList);
      record.put("meetingNo", dto.getMeetingNo());
      record.put("meetingName", dto.getMeetingName());
      record.put("bannerImg", dto.getBannerImg());
      record.put("categoryNo", dto.getCategoryNo());
      record.put("endDate", dto.getEndDate().toString());
      record.put("mainCategory", dto.getMainCategory());
      record.put("maxrole", dto.getMaxrole());
      record.put("meetingRoleList", dto.getMeetingRoleList());
      record.put("openDate", dto.getOpenDate().toString());
      record.put("subCategory", dto.getSubCategory());
      record.put("town", dto.getTown());
      record.put("operator", dto.getOperator());

      list.add(record);

      return JSONArray.toJSONString(list);
      
   }

   @RequestMapping(value = "/meetingLikeDelete.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   public String meetingLikeDelete(@RequestParam Map map, Authentication auth) {

      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("id", id);
      like_meeting.deleteBookMark(map);
      return "";
   }
   
   @RequestMapping(value = "/meetingLike.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   public String meetingLike(@RequestParam Map map, Authentication auth) {
      System.out.println("adsafsd"+map.get("meetingNo"));
      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("id", id);
      like_meeting.insertMeetingLike(map);
      return "";
   }

}