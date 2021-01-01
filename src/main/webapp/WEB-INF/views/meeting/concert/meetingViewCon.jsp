<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
       <div class="container-fluid">
       
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
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
    
    
    <!-- 모임 상세보기 TOP -->
    <a href="<c:url value='/MeetingView.do'/>">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_5.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div style="background-color: pink" class="row no-gutters slider-text align-items-center justify-content-center">
         <img alt="image" style="height: 300px; width: 1110px;" src="resources/images/book-2.jpg">
        </div>
      </div>
    </section>
    </a>
    <!-- 모임 상세보기 TOP 끝 -->
    
    
    <!-- =======================모임 카테고리(소개,일정,게시글,채팅)=========================== -->
   <section class="ftco-section ftco-no-pt mt-5 mt-md-0">               
       <div class="container">
          <div class="row">
             <div class="col-md-3 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                   <div class="icon-wrap">
                      <div class="icon d-flex align-items-center justify-content-center">
                         <a href=<c:url value='/MeetingViewBBS.do'/>><span class="flaticon-fantasy"></span></a>
                      </div>
                   </div>
                   <h2><a href=<c:url value='/MeetingViewBBS.do'/>>게시글</a></h2>
                   
                </div>
             </div>
             <div class="col-md-3 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                   <div class="icon-wrap">
                      <div class="icon d-flex align-items-center justify-content-center">
                         <a href=<c:url value='/MeetingViewCon.do'/>><span class="flaticon-heart"></span></a>
                      </div>
                   </div>
                   <h2><a href=<c:url value='/MeetingViewCon.do'/>>공연</a></h2>
                    
                </div>
             </div>
             <div class="col-md-3 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                   <div class="icon-wrap">
                      <div class="icon d-flex align-items-center justify-content-center">
                         <a href=<c:url value='/MeetingViewFun.do'/>><span class="flaticon-model"></span></a>
                      </div>
                   </div>
                   <h2><a href=<c:url value='/MeetingViewFun.do'/>>펀딩</a></h2>
                    
                </div>
             </div>
             <div class="col-md-3 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                   <div class="icon-wrap">
                      <div class="icon d-flex align-items-center justify-content-center">
                         <a href=<c:url value='/MeetingViewCal.do'/>><span class="flaticon-history"></span></a>
                      </div>
                   </div>
                   <h2><a href=<c:url value='/MeetingViewCal.do'/>>일정</a></h2>
                 
                </div>
             </div>
          </div>
       </div>
    </section>
    <!-- =======================모임 카테고리(소개,일정,게시글,채팅)끝=========================== -->
    
    
    <!-- ======================작성하기 버튼============================================= -->
   
    <section class="ftco-section">
         <div class="container" style="margin-top: 50px;">
            <div class="row justify-content-center">
               <div class="col-md-10" style="text-align: right;">               
                        <button class="btn btn-primary" style="width: 100px; height: 50;">작성하기</button>
               </div>
            </div>
         </div>
        
   </section>
    <!-- ======================작성하기 버튼 끝============================================= -->
    
    
    
    <!--=========================== 게시글 없을 때====================================== -->
    <section class="ftco-section">
         <div class="container" style="margin-top: 100px;">
            <div class="row justify-content-center">
               <div class="col-md-10" style="margin-top: 100px; margin-bottom: 100px; text-align: center;">
               
                        공연글이 없어요


               </div>
            </div>
         </div>
        
   </section>
   <!--=========================== 게시글 없을 때====================================== -->
   
    <!-- ================================모임 공연 소개글 부분==================================== -->
    <section class="ftco-section">
   <div class="container"  style="margin-top: 100px;">
      <div class="row justify-content-center mb-5">
         <div class="">
            <div class="item">
               <div class="col-md-6 img img-3 " style="float: left; height: 376px;">
                  <img style="height: 100%; width: 100%"
                     src="<c:url value='resources/images/bg_5.jpg'/>" alt="image">
               </div>
               <div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5"
                  style="float: right;">
                  <div class="heading-section">
                     <h2 class="mb-4" style="font-size: 35px">공연 제목</h2>
                     <hr />
                     <p>공연 일시</p>
                     <p>공연 장소</p>
                     <p>공연 많이 많이 참석해주세요 코로나 힘내요!</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      
      
	<div class="row no-gutters">
		<div class="col-md-7">
			<div class="contact-wrap w-100 p-md-5 p-4">
				<h3 class="mb-4">공연보러 오실래요?</h3>
				<form method="POST" id="contactForm" name="contactForm" class="contactForm">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="label" for="name">이름</label>
								<input type="text" class="form-control" name="name" id="name" placeholder="Name">
							</div>
						</div>
						<div class="col-md-6"> 
							<div class="form-group">
								<label class="label" for="email">Email</label>
								<input type="email" class="form-control" name="email" id="email" placeholder="Email">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label class="label" for="subject">출발하시는 동네</label>
								<input type="text" class="form-control" name="subject" id="subject" placeholder="Town">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label class="label" for="#">응원 한 마디 부탁해요</label>
								<textarea name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Message"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<input type="submit" value="참석신청 보내기" class="btn btn-primary">
								<div class="submitting"></div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-5 order-md-first d-flex align-items-stretch">
			<div id="map" class="map"></div>
		</div>
	</div>
							
							
							
   </div>
</section>






    <!-- ================================모임 공연 소개글 부분 끝==================================== -->
    
    <!-- ================공연글 없을 때========================= -->
    <section class="ftco-section">
         <div class="container" style="margin-top: 100px;">
            <div class="row justify-content-center">
               <div class="col-md-10" style="margin-top: 100px; margin-bottom: 100px; text-align: center;">
               
                        더이상 볼 수 있는 공연글이 없어요


               </div>
            </div>
         </div>
   </section>
   <!-- ================공연글 없을 때 끝========================= -->
            
    
    
    
    
    
  
    
    
    
  


<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5df4291e2d99c275b1ea40e928f7d96c"></script>

  <script>
  

  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	  mapOption = { 
	      center: new kakao.maps.LatLng(37.478892, 126.8789202), // 지도의 중심좌표
	      level: 3 // 지도의 확대 레벨
	  };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(37.478892, 126.8789202); 
	
	//마커를 생성합니다
	var marker = new kakao.maps.Marker({
	  position: markerPosition
	});
	
	//마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	//아래 코드는 지도 위의 마커를 제거하는 코드입니다
	//marker.setMap(null); 
	

  
    $(function(){
        $('#likeImgOff').on({ 'click': function() { 
           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
   });
    
    
    $('#commentImg').click(function(){
       $('.commentall').toggle();
       $('.commentinput').focus();
       
    });
    
    
    
    $(function(){
        $('#likeImgOff2').on({ 'click': function() { 
           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
   });
    
    $(function(){
        $('#likeImgOff3').on({ 'click': function() { 
           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
   });
    
    $(function(){
        $('#commentLikeImgOff').on({ 'click': function() { 
           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
   });
    
    $(function(){
        $('#commentLikeImgOff2').on({ 'click': function() { 
           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
   });
    
    $(function(){
        $('#commentLikeImgOff3').on({ 'click': function() { 
           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
   });
    
    $(function(){
        $('#commentLikeImgOff4').on({ 'click': function() { 
           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
   });
    
    $(function(){
        $('#commentLikeImgOff5').on({ 'click': function() { 
           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
   });
    
    
    $('.commentall').hide();
    
    
    $('.commentview').click(function(){
       $('.commentall').toggle();
       
    });
    
    
    
  </script>  
  
  
 
