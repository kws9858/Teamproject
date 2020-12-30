<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
   id="ftco-navbar">
   <div class="container-fluid">
      
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#ftco-nav" aria-controls="ftco-nav"
         aria-expanded="false" aria-label="Toggle navigation">
         <span class="fa fa-bars"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="ftco-nav">
         <ul class="navbar-nav m-auto">

			<li class="nav-item"><a href="<c:url value='/AllOfMeeting.do'/>" class="nav-link">동네 둘러보기</a></li>
            <li class="nav-item"><a href="<c:url value='/MeetingBBS.do'/>" class="nav-link">게시글</a></li>
			<li class="nav-item"><a href="<c:url value='/Perform.do'/>" class="nav-link">공연</a></li>
			<li class="nav-item"><a href="<c:url value='/FundingList.do'/>" class="nav-link">펀딩</a></li>

         </ul>
      </div>
   </div>
</nav>
<!-- END nav -->

<!-- 공연 -->
<section class="ftco-section testimony-section ftco-no-pb">
   <div class="img img-bg border" style="background-color: #F5F4F0;"></div>
   <div class="container">
      <div class="row justify-content-center mb-5">
         <div class="col-md-7 heading-section text-center ftco-animate">
            <span class="subheading">공연</span>
            <h2>곧 시작되는 공연</h2>
         </div>
      </div>
      <!-- 공연 정보 시작 -->
      <div class="row ftco-animate">
         <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
               <div class="item">
                  <div class=" py-4">
                     <div class="col-md-12 d-flex ftco-animate">
                        <div class="blog-entry justify-content-end">
                           <!-- 공연 사진(포스터) -->
                           <div class="text text-center">
                              <a href="해당 공연 상세 페이지" class="block-20 img"
                                 style="background-image: url('resources/images/image_1.jpg');">
                              </a>
                              <!-- 공연 시작 날짜 -->
                              <div
                                 class="meta text-center mb-2 d-flex align-items-center justify-content-center">
                                 <div>
                                    <span class="day">02</span> <span class="mos">May</span> <span
                                       class="yr">2020</span>
                                 </div>
                              </div>
                              <!-- 공연 제목 및 간략한 내용 -->
                              <h3 class="heading mb-3">
                                 <a href="#">공연 제목</a>
                              </h3>
                              <p>간단한 공연 내용</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="item">
                  <div class=" py-4">
                     <div class="col-md-12 d-flex ftco-animate">
                        <div class="blog-entry justify-content-end">
                           <div class="text text-center">
                              <a href="해당 공연 상세 페이지" class="block-20 img"
                                 style="background-image: url('resources/images/image_2.jpg');">
                              </a>
                              <div
                                 class="meta text-center mb-2 d-flex align-items-center justify-content-center">
                                 <div>
                                    <span class="day">02</span> <span class="mos">May</span> <span
                                       class="yr">2020</span>
                                 </div>
                              </div>
                              <h3 class="heading mb-3">
                                 <a href="#">New Friends With Books</a>
                              </h3>
                              <p>A small river named Duden flows by their place and
                                 supplies it with the necessary regelialia.</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 본격적인 공연 정보 -->
               <div class="item">
                  <div class=" py-4">
                     <div class="col-md-12 d-flex ftco-animate">
                        <div class="blog-entry justify-content-end">
                           <div class="text text-center">
                              <!-- 공연 상세페이지로 이동하게 하는 공연 사진 -->
                              <a href="해당 공연 상세 페이지" class="block-20 img"
                                 style="background-image: url('resources/images/image_3.jpg');">
                              </a>
                              <!-- 공연 날짜 -->
                              <div
                                 class="meta text-center mb-2 d-flex align-items-center justify-content-center">
                                 <div>
                                    <span class="day">02</span> <span class="mos">May</span> <span
                                       class="yr">2020</span>
                                 </div>
                              </div>
                              <!-- 공연 설명 및 해당 공연 상세페이지로 이동 -->
                              <h3 class="heading mb-3">
                                 <a href="#">New Friends With Books</a>
                              </h3>
                              <p>A small river named Duden flows by their place and
                                 supplies it with the necessary regelialia.</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>


<section class="ftco-section testimony-section ftco-no-pb" style="background-color: #95ADBE;">
   <!-- <div class="img img-bg border" style="background-color: #95ADBE;opacity: 0.5"></div> -->
   <div class="container navbar-expand-lg">
      <div class="row justify-content-center mb-5">
         <div class="col-md-7 heading-section text-center ftco-animate">
            <span class="subheading">모임 게시글</span>
            <h2>현재 인기있는 게시글</h2>
         </div>
      </div>
      <div class="row ftco-animate">
         <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
               <div class="item">
                  <div class="testimony-wrap py-4">
                     <!-- testimony-wrap: 테두리(블럭 아래 그림자) -->
                     <div class="img">
                        <img alt="image" src="resources/images/image_6.jpg">
                     </div>
                     <div
                        class="icon d-flex align-items-center justify-content-center">
                        <span class="fa fa-quote-left">
                     </div>
                     <div class="text">
                        <div class="d-flex align-items-center">
                           <div class="p-4">
                              <h6 class="name text-left">
                                 <a href="해당 게시물 상세 페이지">모임 이름</a>
                              </h6>
                              <small class="position">게시글 내용<br />2줄 정도 나오게하고
                                 더보기로...
                              </small>
                           </div>
                        </div>
                        <p class="mb-4 text-right">게시 날짜</p>
                     </div>
                  </div>
               </div>
               <div class="item">
                  <div class="testimony-wrap py-4">
                     <div class="img">
                        <img alt="image" src="resources/images/image_5.jpg">
                     </div>
                     <div
                        class="icon d-flex align-items-center justify-content-center">
                        <span class="fa fa-quote-left">
                     </div>
                     <div class="text">
                        <div class="d-flex align-items-center">
                           <div class="p-4">
                              <h6 class="name text-left">
                                 <a href="해당 게시물 상세 페이지">모임 이름</a>
                              </h6>
                              <small class="position">content/content/<br />
                                 content/content/content
                              </small>
                           </div>
                        </div>
                        <p class="mb-4 text-right">post date</p>
                     </div>
                  </div>
               </div>
               <div class="item">
                  <div class="testimony-wrap py-4">
                     <div class="img">
                        <img alt="image" src="resources/images/image_4.jpg">
                     </div>
                     <div
                        class="icon d-flex align-items-center justify-content-center">
                        <span class="fa fa-quote-left">
                     </div>
                     <div class="text">
                        <div class="d-flex align-items-center">
                           <div class="p-4">
                              <h6 class="name text-left">
                                 <a href="해당 게시물 상세 페이지">모임 이름</a>
                              </h6>
                              <small class="position">content/content/<br />
                                 content/content/content
                              </small>
                           </div>
                        </div>
                        <p class="mb-4 text-right">post date</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>


<section class="ftco-section">
   <div class="container">
      <div class="row justify-content-center mb-5">
         <div class="col-md-7 heading-section text-center ftco-animate">
            <span class="subheading">펀딩</span>
            <h2>현재 진행 중인 펀딩</h2>
         </div>
      </div>
      <div class="row">
         <div class="single-carousel-testimony owl-carousel">
            <div class="item">
               <div class="col-md-6 img img-3 " style="float: left;">
                  <img src="resources/images/about-1.jpg" alt="image">
               </div>
               <div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5"
                  style="float: right;">
                  <div class="heading-section">
                     <h2 class="mb-4" style="font-size:35px">모임이 진행 중인 펀딩 주제</h2>
                     <p>펀딩에 대한 내용 1 번째 단락</p>
                     <p>펀딩에 대한 내용 2 번째 단락</p>
                     <a href="해당 펀딩 상세페이지" class="btn btn-primary pull-right">펀딩하러가기</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

${updatePwdComplete}
${deleteAll}
<!-- 레이어 팝업창 소스 -->
<script src="resources/js/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<c:forEach items="${notice}" var="item" varStatus="status">
	<div class="popup" id="notice${item['NOTICENO']}" style="display:none; position:absolute; top:${(status.count-1)*100+150}px; left:${(status.count-1)*150+100}px; width:470px; height:445px; border:1px solid #ccc; background-color:#ffffff; z-index:100">
		<div style="background-color:#DDDDDD; padding-bottom:10px; padding-top:10px; text-align:center;"><span><Strong>${item['TITLE']}</Strong></span></div>
        <div style="overflow-y:scroll; padding:10px; width:469px; height:363px;">
        	${item['CONTENT']} 
        </div>
        <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;">
            <span class="pop_bt_nomore" onClick="close_pop_allday(true, ${item['NOTICENO']});">
               	 오늘 더이상 열지 않기
            </span>
              |  
            <span class="close_popup" onClick="close_pop_allday(false, ${item['NOTICENO']});" >
                	 닫기
            </span>
        </div>
	</div>
</c:forEach>

<script>
      //Cookie Setting
        function setCookie(cookie_name, value, days) {
           var exdate = new Date();
           exdate.setDate(exdate.getDate() + days);
           // 설정 일수만큼 현재시간에 만료값으로 지정
           var cookie_value = escape(value) + ((days == null) ? '' : '; path=/;  expires=' + exdate.toUTCString());
           document.cookie = cookie_name + '=' + cookie_value;
         }
 		
        //팝업 Close 기능
        function close_pop_allday(flag, notice_no) {
           _this = $(this);
           var popupString = "notice"+notice_no;
 
             if ( flag == true ) {
            //쿠키세팅(그냥닫기 오늘안보기)
                setCookie("notice"+notice_no,"end",1);
                $("#notice"+notice_no).hide();
             }else{
        //false로 들어오면 그냥 숨기기만
                 $("#notice"+notice_no).hide();
             }
        };
          //팝업 쿠키확인후 보여주기
         <c:if test="${null ne notice}">
             <c:forEach var="popup" items = "${notice}" varStatus="status">
             
                 var notice_no = ${popup['NOTICENO']};
                 if ($.cookie('notice'+notice_no) != "end"){
                     //쿠키없는거만 보여주기
                     $("#notice"+notice_no).show();
                     $("#notice"+notice_no).draggable();
                 }
             </c:forEach>
         </c:if>
   
</script> 