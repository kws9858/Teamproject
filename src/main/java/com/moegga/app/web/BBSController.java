package com.moegga.app.web;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.moegga.app.service.BBSDTO;
import com.moegga.app.service.BBSService;
import com.moegga.app.service.MeetingDTO;
import com.moegga.app.service.MeetingRoleDTO;
import com.moegga.app.service.MeetingRoleService;
import com.moegga.app.service.MeetingService;
import com.moegga.app.service.MemberDTO;
import com.moegga.app.service.MemberService;
import com.moegga.app.service.impl.PagingUtil;

@Controller
public class BBSController {

   @Resource(name = "bbsService")
   private BBSService bbsService;
   @Resource(name = "memberService")
   MemberService member;
   
   @Resource(name="meetingService")
   MeetingService meeting;
   @Resource(name="meetingRoleService")
   MeetingRoleService meetingRole;

   @RequestMapping(value = "IsLogin.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   public String isLogin(Authentication auth) {
      // 인증이 안되었다면 auth는 null
      JSONObject json = new JSONObject();
      if (auth == null) {
         json.put("isLogin", "NO");
         return json.toJSONString();
      }
      json.put("isLogin", "YES");
      return json.toJSONString();
   }

   @RequestMapping(value = "/Questions.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   public String write(
         // @ModelAttribute("id") String id,
         Authentication auth, @RequestParam Map map) {
      // 서비스 호출]
      // map.put("id", id);//(씨큐리티 미 사용시)한줄 댓글 작성자의 아이디를 맵에 설정
      map.put("id", ((UserDetails) auth.getPrincipal()).getUsername());

      bbsService.insert(map);
      return "문의가 접수 되었습니다";// 원본글의 번호 반환
   }
   @RequestMapping("/MyQuestion.do")
   public String mylist(
         // @ModelAttribute("id") String id,//(씨큐리티 미 사용시)세션영역에서 id가져오기-isLogin.jsp파일 사용시
         // 불필요
         @RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
         HttpServletRequest req, // 컨텍스트 루트 얻기용
         Model model,Authentication auth) {
      /*
       * 스프링 씨큐리티 적용시 인증(로그인)되었다면 Authentication객체에 로그인과 관련된 정보가 전달됨 로그인이 안되어 있으면
       * auth는 null
       */

      int pageSize = 5;

      int blockPage = 10;
      	
      // 서비스 호출]
      // 페이징을 위한 로직 시작]
      // 전체 레코드수
      int totalRecordCount = bbsService.getTotalRecord(map);
      System.out.println("totalRecordCount:" + totalRecordCount);
      // 전체 페이지수
      int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);

      // 시작 및 끝 ROWNUM구하기
      int start = (nowPage - 1) * pageSize + 1;
      int end = nowPage * pageSize;
      // 페이징을 위한 로직 끝]
      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("id", id);      // 서비스 호출
      map.put("start", start);
      map.put("end", end);
      List<Map> list = bbsService.myselectList(map);

      List<Map> collections = new Vector<Map>();
      for (Map m : list) {

         SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
         String date = simpleDateFormat.format(m.get("BBSPOSTDATE"));
         m.put("BBSPOSTDATE", date);

         String CONTENTS = ((String) m.get("CONTENTS")).replace("\r\n", "<br/>");

         m.put("CONTENTS", CONTENTS);
         String success = "답변대기";
         String color = "red";

         if (m.get("TITLE").toString().length() >= 5) {

            if (m.get("TITLE").toString().substring(0, 4).equals("[답글]")) {

               success = "답변완료";
               color = "green";
               m.put("TITLE", m.get("TITLE").toString().substring(5));

            }

         }
         m.put("success", success);

         m.put("color", color);
         collections.add(m);
      }

      // 데이타 저장]

      String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
            req.getContextPath() + "/MyQuestion.do");
      model.addAttribute("list", collections);
      model.addAttribute("pagingString", pagingString);
      model.addAttribute("totalRecordCount", totalRecordCount);
      model.addAttribute("nowPage", nowPage);
      model.addAttribute("pageSize", pageSize);
      // 뷰정보 반환]
      return "mypage/questions/myquestions.tiles";
   }

   // ==============================모임 게시판 목록]
   @RequestMapping("/MeetingBBS.do")
   public String member(Model model, Authentication auth) {
      Map map = new HashMap();
      
      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("id", id);
      
      List<Map> mBBSList = bbsService.mBBSList();
      for(Map bbsMap:mBBSList) {
         String bbsno=bbsMap.get("BBSNO").toString();
         map.put("bbsno", bbsno);
         String userLike =bbsService.likeSelect(map);
         
         String imgcount =bbsService.mBBSListImgCount(bbsno);
         
         
         
         List mBBSImg = bbsService.mBBSImg(bbsno);
         bbsMap.put("userLike", userLike);
         bbsMap.put("imgcount", imgcount);
         bbsMap.put("mBBSImg", mBBSImg);
         
         
      }
      
      MemberDTO dto = member.selectOneById(map);
      
      model.addAttribute("id",id);
      model.addAttribute("dto", dto);
      model.addAttribute("mBBSList", mBBSList);
      
      
      System.out.println(mBBSList);
      
      return "bbs/meetingbbs/meetingBBS.tiles";
   }///////////////////////////////////////////
   
   // =================================모임 게시판 입력폼으로 이동]
   @RequestMapping(value = "WriteMeetingBBS.do", method = RequestMethod.GET)
   public String write() {
      
      return "bbs/meetingbbs/writemeetingBBS.tiles";
   }///////////////////////////////////////////////////
   // ================================= 모임게시판 내용 입력처리]
   @RequestMapping(value="/InsertMeetingBBS.do",method = RequestMethod.POST , produces = "text/html; charset=UTF-8")
   public String writeOk(Authentication auth,@RequestParam Map map, MultipartHttpServletRequest req ) {
      
      map.put("id", ((UserDetails)auth.getPrincipal()).getUsername());//씨큐리티 사용시
      
      
      
      bbsService.MBBSinsert(map);

      //뷰정보 반환:목록으로 이동
      return "bbs/meetingbbs/writemeetingBBSImg.tiles";
   }/////////////////////////////////////////////////////////////
   
// ================================= 모임게시판 이미지 입력처리]
   @RequestMapping(value = "/InsertMBBSImg.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   //public String insertMBBSImg(@RequestParam("mbbsimg")  MultipartFile upload, HttpServletRequest req, Authentication auth) {
   public String insertMBBSImg(MultipartHttpServletRequest upload, HttpServletRequest req, Authentication auth) {
       
      MultipartFile mf = upload.getFile("file");
      
      
      
      Map map = new HashMap();
      int mbbsno = bbsService.MBBSNoselect();
       map.put("mbbsno",mbbsno);
      
   
      String id = ((UserDetails) auth.getPrincipal()).getUsername();

      String path = req.getSession().getServletContext().getRealPath("/images");
      
      map.put("id", id);
      map.put("img", mf.getOriginalFilename());
      File file = new File(path +File.separator + "bbs"+ File.separator + "bbsno" + mbbsno + File.separator + mf.getOriginalFilename());
      
      Map result = new HashMap();
      List<Map> collections = new Vector<Map>();

      try {
         mf.transferTo(file);
         System.out.println("file : " + file );
         System.out.println("map : " + map);
         
         bbsService.insertMBBSImg(map);
         
         List<BBSDTO> selectMBBSImg = bbsService.selectMBBSImg(map);
         
         System.out.println("selectMBBSImg  "+selectMBBSImg);
         for(BBSDTO dto : selectMBBSImg) {
            result = new HashMap();
            result.put("imgname", dto.getImgname());
            result.put("mbbsno",dto.getBbsNo());
            result.put("imgno", dto.getImgno());
            collections.add(result);
         }
      } catch (IllegalStateException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      System.out.println("컬렉션"+collections);
      return JSONArray.toJSONString(collections);
   }///////////////////////////////////////////
   
   
   @RequestMapping(value = "/DeletMBBSImg.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   public String deleteImg(@RequestParam Map map) {
      

      
   
      Map result = new HashMap();
      List<Map> collections = new Vector<Map>();

      bbsService.deleteMBBSImg(map);
      
      List<BBSDTO> selectMBBSImg = bbsService.selectMBBSImg(map);
      
      System.out.println("selectMBBSImg  "+selectMBBSImg);
      for(BBSDTO dto : selectMBBSImg) {
         result = new HashMap();
         result.put("imgname", dto.getImgname());
         result.put("mbbsno",dto.getBbsNo());
         result.put("imgno", dto.getImgno());
         collections.add(result);
      }
   
      
      System.out.println("컬렉션"+collections);
      return JSONArray.toJSONString(collections);      
   }
      // =================================모임 내용 수정 입력폼으로 이동]
      @RequestMapping(value = "/EditMeetingBBS.do", method = RequestMethod.GET)
      public String editmbbs(HttpServletRequest req,@RequestParam Map map) {
         System.out.println("에딧 폼으로 갈때 map"+map);
         
         BBSDTO mBBSSelectOne =  bbsService.mBBSSelectOne(map);
         req.setAttribute("mBBSSelectOne",mBBSSelectOne);
         
         return "bbs/meetingbbs/editmeetingBBS.tiles";
      }///////////////////////////////////////////////////
      //============================모임 게시판 내용 수정]
      @RequestMapping("/EditMeetingBBS.do")
      public String edit(@RequestParam Map map, MultipartHttpServletRequest mtpreq, HttpServletRequest req) {
         
         System.out.println("수정에서 map : " + map);
         
         //서비스 호출
         bbsService.mBBSEdit(map);
         
         req.setAttribute("mbbsno", map.get("mbbsno"));
         System.out.println("1");
         
         List<Map> mBBSSelectOneImg = bbsService.mBBSSelectOneImg(map);
         System.out.println("2");
         req.setAttribute("mBBSSelectOneImg", mBBSSelectOneImg);
         System.out.println("3");
         

         //뷰로 포워드
         return "bbs/meetingbbs/editmeetingBBSImg.tiles";
         
      }////////////////
      
	// ================================= 모임게시판 이미지 목록 처리]
	@RequestMapping(value = "/EditMBBSImgList.do", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String editMBBSImgList(@RequestParam("mbbsno") String mbbsno, HttpServletRequest req) {
       
       System.out.println("이미지 리스트 .do 들어왔어");
       
       req.getAttribute("mBBSSelectOneImg");
       System.out.println("모임게시판 이미지 리스트 .do 의 mbbsno : "+mbbsno);
       Map map = new HashMap();
       map.put("mbbsno", mbbsno);
       
       Map result = new HashMap();
       List<Map> collections = new Vector<Map>();

       try {
          
          
          List<BBSDTO> selectMBBSImg = bbsService.selectMBBSImg(map);
          
          System.out.println("selectMBBSImg  "+selectMBBSImg);
          for(BBSDTO dto : selectMBBSImg) {
             result = new HashMap();
             result.put("imgname", dto.getImgname());
             result.put("mbbsno",dto.getBbsNo());
             result.put("imgno", dto.getImgno());
             collections.add(result);
          }
       } catch (IllegalStateException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
       }
       
       System.out.println("edit 이미지 리스트 컬렉션"+collections);
       return JSONArray.toJSONString(collections);
	}///////////////////////////////////////////
   
	// ================================= 모임게시판 이미지 수정처리]
	@RequestMapping(value = "/EditMBBSImg.do", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String editMBBSImg(@RequestParam("mbbsno") String mbbsno, MultipartHttpServletRequest upload, HttpServletRequest req, Authentication auth) {
       
       
       req.getAttribute("mBBSSelectOneImg");
    
       MultipartFile mf = upload.getFile("file");
       
       
       
       Map map = new HashMap();
       map.put("mbbsno", mbbsno);
     
       String id = ((UserDetails) auth.getPrincipal()).getUsername();

       String path = req.getSession().getServletContext().getRealPath("/images");
       
       map.put("id", id);
       map.put("img", mf.getOriginalFilename());
       File file = new File(path +File.separator + "bbs"+ File.separator + "bbsno" + mbbsno + File.separator + mf.getOriginalFilename());
       
       Map result = new HashMap();
       List<Map> collections = new Vector<Map>();

       try {
          mf.transferTo(file);
          System.out.println("file : " + file );
          System.out.println("map : " + map);
          
          bbsService.insertMBBSImg(map);
          
          List<BBSDTO> selectMBBSImg = bbsService.selectMBBSImg(map);
          
          System.out.println("selectMBBSImg  "+selectMBBSImg);
          for(BBSDTO dto : selectMBBSImg) {
             result = new HashMap();
             result.put("imgname", dto.getImgname());
             result.put("mbbsno",dto.getBbsNo());
             result.put("imgno", dto.getImgno());
             collections.add(result);
          }
       } catch (IllegalStateException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
       } catch (IOException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
       }
       
       System.out.println("edit컬렉션"+collections);
       return JSONArray.toJSONString(collections);
	}///////////////////////////////////////////
      
   // =============모임 게시판 삭제===================
      @RequestMapping(value = "/DeleteMeetingBBS.do")
      public String mbbsdelete(@RequestParam Map map, Authentication auth) {

         System.out.println("딜리트의 맵 : "+map);

         String id = ((UserDetails) auth.getPrincipal()).getUsername();

         map.put("id", id);
         

         bbsService.DeleteMeetingBBS(map);

         return "redirect:/MeetingBBS.do";
      }
   // =============모임 게시판 삭제===================

   // ==============================댓글 입력]
   // 코멘트 입력처리]
   @RequestMapping(value = "/CommentInsert.do", produces = "text/html; charset=UTF-8")
   @ResponseBody
   public void commentInsert(Authentication auth, @RequestParam Map map) {
      
      map.put("id", ((UserDetails) auth.getPrincipal()).getUsername());
      bbsService.mBBSCommentInput(map);

   }///////////////////////////////////////////

   // =============================댓글 리스트 출력==============================
   @RequestMapping(value = "/CommentView.do", produces = "text/html; charset=UTF-8")
   @ResponseBody // ajax쓸때 필요
   public String commentlist(@RequestParam Map map, Model model) {

      List<BBSDTO> commentList = bbsService.commentList();
      

      Map<String, String> result = new HashMap<String, String>();
      
      
      List<Map> collections = new Vector<Map>();

      for (BBSDTO dto : commentList) {
         result = new HashMap<String, String>();
         result.put("bbsno", dto.getBbsNo());
         result.put("id", dto.getId());
         result.put("profileimg", dto.getProfileimg());
         result.put("commentContents", dto.getCommentContents());
         result.put("commentLike", dto.getCommentLike());
         //result.put("profileimg", dto.getProfileimg());
         collections.add(result);
      }
      
      //model.addAttribute("commentList", commentList);

      return JSONArray.toJSONString(collections);
   }// ==============================모임 댓글 리스트 출력 끝==============================
   
   @RequestMapping(value = "/BBSLike.do", produces = "text/html; charset=UTF-8")
   @ResponseBody // ajax쓸때 필요
   public String bbsLike(@RequestParam Map map, Model model,Authentication auth) {

      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("id", id);
      
      bbsService.likeInsert(map);
      
      //model.addAttribute("commentList", commentList);

      return "";
   }
   
   @RequestMapping(value = "/BBSLikeDelete.do", produces = "text/html; charset=UTF-8")
   @ResponseBody // ajax쓸때 필요
   public String bbsLikeDelete(@RequestParam Map map, Model model,Authentication auth) {

      String id = ((UserDetails) auth.getPrincipal()).getUsername();
      map.put("id", id);
      map.put("bbsno", map.get("bbsno"));
      
      bbsService.likeDelete(map);
      
      //model.addAttribute("commentList", commentList);

      return "";
   }
   


}