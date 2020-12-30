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
    <a href=<c:url value='/MeetingView.do'/>><section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_5.jpg');" data-stellar-background-ratio="0.5">
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
                      <div class="icon d-flex align-items-center justify-content-center" style="background-color: #95adbe">
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
   
    <!-- ================================모임 펀딩 부분==================================== -->
    <section class="ftco-section">
   <div class="container"  style="margin-top: 100px;">
      <div class="row justify-content-center mb-5">
         <div class="col-md-7 heading-section text-center ftco-animate">
            <span class="subheading">음악>밴드</span>
            <h2>윤도현밴드</h2>
         </div>
      </div>
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
                     <h2 class="mb-4" style="font-size: 35px">20일 남음</h2>
                     <hr />
                     <p>공연 많이 많이 참석해주세요 코로나 힘내요!</p>
                    
               
                  </div>
               </div>
            </div>
         </div>
      </div>
     
   </div>
</section>

<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
   src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
$('#funding').click(function(){
   var IMP = window.IMP; // 생략가능
   IMP.init('iamport'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

   IMP.request_pay({
      pg : 'inicis', // version 1.1.0부터 지원.
      pay_method : 'card',
      merchant_uid : 'merchant_' + new Date().getTime(),
      name : '펀딩하기',
      amount : $('#cost').val(),
      buyer_email : 'iamport@siot.do',
      buyer_name : '구매자이름',
      buyer_tel : '010-1234-5678',
      buyer_addr : '서울특별시 강남구 삼성동',
      buyer_postcode : '123-456',
      m_redirect_url : '<c:url value="/"/>'
   }, function(rsp) {
      if (rsp.success) {
         var msg = '결제가 완료되었습니다.';
         msg += '고유ID : ' + rsp.imp_uid;
         msg += '상점 거래ID : ' + rsp.merchant_uid;
         msg += '결제 금액 : ' + rsp.paid_amount;
         msg += '카드 승인번호 : ' + rsp.apply_num;
      } else {
         var msg = '결제에 실패하였습니다.';
         msg += '에러내용 : ' + rsp.error_msg;
      }
      alert(msg);
   });
   $('#cost').val("");
});
   

   </script>
    <!-- ================================모임 펀딩 부분 끝==================================== -->
    
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
            
         
   <!-- =============================푸터====================================== -->
    <footer class="ftco-footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2 logo"><a href="#">Connect</a></h2>
              <p>Far far away, behind the word mountains, far from the countries.</p>
              <ul class="ftco-footer-social list-unstyled mt-2">
                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Extra Links</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Affiliate Program</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Business Services</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Education Services</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Gift Cards</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Legal</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Join us</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Blog</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Privacy &amp; Policy</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Term &amp; Conditions</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Company</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About Us</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Blog</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Careers</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
               <h2 class="ftco-heading-2">Have a Questions?</h2>
               <div class="block-23 mb-3">
                 <ul>
                   <li><span class="icon fa fa-map marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                   <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                   <li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
                 </ul>
               </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid px-0 py-5 bg-black">
         <div class="container">
            <div class="row">
             <div class="col-md-12">
      
               <p class="mb-0" style="color: rgba(255,255,255,.5);"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
     Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
     <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
             </div>
           </div>
         </div>
      </div>
    </footer>
    
    
    
    
    
  
    
    
    
  


  
  <script>
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
  
  
 
