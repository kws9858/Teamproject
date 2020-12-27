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
	            <li class="nav-item active"><a href="<c:url value='/FreebbsList.do'/>" class="nav-link">게시글</a></li>
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
                      <div class="icon d-flex align-items-center justify-content-center" style="background-color: #95adbe">
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
    <!-- ======================작성하기 버튼============================================= -->
    
    
    
    <!--=========================== 게시글 없을 때====================================== -->
    <section class="ftco-section">
         <div class="container" style="margin-top: 100px;">
            <div class="row justify-content-center">
               <div class="col-md-10" style="margin-top: 100px; margin-bottom: 100px; text-align: center;">
               
                        게시글이 없어요


               </div>
            </div>
         </div>
        
   </section>
   <!--=========================== 게시글 없을 때====================================== -->
   
    
    <!-- =======================모임 게시판부분========================= -->
    <section class="ftco-section">
         <div class="container" style="margin-top: 100px;">
            <div class="row justify-content-center">
               <div class="col-md-10" style="margin-top: 100px">
               
                        <!-- ============= 게시글 하나 ============== -->
                        <div class="item">
                           <div class="testimony-wrap py-4">
              
                              <!-- 모임 사진, 이름, 작성 날짜, 메뉴 -->
                              <div class="row col-md-12" style="margin-bottom: 20px; height: 70px; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px; ">
                                 <div class="icon d-flex align-items-center"></div>
                                 <div class="col-md-4 col-md-offset-2"><h2>모임이름</h2></div>
                                 <div class="col-md-6 col-md-offset-6"></div>
                                 <!-- 드롭다운 -->
                                    <div class="btn btn-default dropdown-toggle col-md-1 col-md-offset-3" style="padding-left: 0px; padding-right: 0px; margin-top: 10px;" type="button" id="menu" data-toggle="dropdown">
                                <img alt="image" src="resources/images/menuIcon.png" style="height: 30px;">  
                              </div>
                               <ul class="dropdown-menu" role="menu" aria-labelledby="menu1"">
                                 <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>신고하기</h4></a></li>
                                 <li role="presentation" class="dropdown-divider" style="height: 3px; margin-top: 5px; margin-bottom: 5px;"></li>
                                 <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>수정하기</h4></a></li>
                                 <li role="presentation" class="dropdown-divider" style="height: 3px; margin-top: 5px; margin-bottom: 5px;"></li>
                                 <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>삭제하기</h4></a></li>
                               </ul>
                            
                                 
                              </div>

                              <!-- 이미지 -->      
                              <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" data-interval="false">
                          <ol class="carousel-indicators">
                            <li data-target="#carouselExampleCaptions" data-slide-to="0"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                          </ol>
                          <div class="carousel-inner" style="width: 919.99px; height: 667px;">
                            <div class="carousel-item active">
                              <img alt="image" src="resources/images/image_2.jpg">
                            </div>
                            <div class="carousel-item">
                              <img alt="image" src="resources/images/image_3.jpg">
                            </div>
                            <div class="carousel-item">
                               <img alt="image" src="resources/images/image_5.jpg">
                            </div>
                          </div>
                          <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                        
                        
                        
                        
                               <!-- 글자 -->
                              <div class="text" style="margin-top: 10px;">
                                 <div class="d-flex align-items-center">
                                       <div class="position">
                                       게시글내용입니다게시글내용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입용입니다게시글내용입용입니다용입니다게시용입니다게시용입니다게시
                                       용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용
                                       입니다게시용입니다게시용입니다게시용입니다게시게시용입니다용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니
                                       다게시용입내용입니다게시글내용입니다게시글글내용입니다게시글내용입니다게시글내용입니다게시글글내용입니다게시글
                                       내용입니다게시글내용입니다게시글글내용입니다게시글내용입니다게시글내용
                                       
                                       </div>
                                 </div>  
                             </div>
            
                         <!-- 작성 날짜 -->
                             <div class="col-md-12" style="padding-left: 0px; padding-right: 0px; text-align: right; padding-top: 10px; color: gray;">2020-12-25</div>
                             
                         <!-- 좋아요/댓글수 -->
                        
                              <img alt="image" id="likeImgOff" style="height: 40px; width: 40px; margin-top: 20px; margin-bottom: 10px;" src="resources/images/heartOff.png" >123
                              
                              <img alt="image" id="commentImg" style="height: 40px; width: 40px; margin-top: 20px; margin-bottom: 10px;" src="resources/images/comment.png">1517
                        
                        
                        <!-- 댓글 입력창 -->
                             <div class="text" style="margin-top: 20px;">
                                       <div class="commentinput" style="align-items: center">
                                          <div class="input-group align-items-center">
                                                <span class="icon d-flex align-items-center"></span>
                                                <input type="text" class="form-control" style="height:60px;  width: 700px; margin-left: 10px; padding-top: 10px; color: gray;" placeholder="댓글을 입력하세요" onfocus="this.placeholder=''" onblur="this.placeholder='댓글을 입력하세요'">
                                                <button type="button" class="btn btn-primary active" style="height: 52px; width: 100px;">게시</button>
                                          </div>
                                       </div>
                             </div>
                             
                             
                             <!-- 댓글 더보기 클릭버튼 -->
                             <div class="commentview col-md-3 col-md-offset-5" style="margin-top: 10px;">    -----댓글 더보기(5)</div>
                             
                             <!-- 댓글 부분 -->
                             <div class="commentall" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; padding-left: 0px; padding-right: 0px;">
                                <!-- 댓글 창 -->
                                <div class="text" style="margin-top: 20px;">
                                          <div class="comment" style="align-items: center">
                                             <div class="input-group align-items-center">
                                                   <span class="icon d-flex align-items-center"></span>
                                                  <div class="comments col-md-10 col-md-offset-1" style="margin-left: 20px;">와 정말 대단해요오오오오오오</div>
                                                  <img alt="image" id="commentLikeImgOff" style="height: 30px; width: 30px;" src="resources/images/heartOff.png" >123
                                                  
                                               </div>
                                        </div>
                           </div>
                           
                           <!-- 댓글 창 -->
                                <div class="text" style="margin-top: 20px;">
                                          <div class="comment" style="align-items: center">
                                             <div class="input-group align-items-center">
                                                   <span class="icon d-flex align-items-center"></span>
                                                  <div class="comments col-md-10 col-md-offset-1" style="margin-left: 20px;">하하하하하하하하하하</div>
                                                  <img alt="image" id="commentLikeImgOff2" style="height: 30px; width: 30px;" src="resources/images/heartOff.png" >123
                                                  
                                               </div>
                                        </div>
                           </div>
                           
                           
                            
                           <!-- 대댓글 선 -->
                           <!--
                           <div class="col-md-offset-5 underCommentLine" style="text-align: center;">-------------더보기</div>
                            -->
                           
                           <!-- 대댓글 창 -->
                                <div class="text" style="margin-top: 20px;">
                                          <div class="undercomment" style="align-items: center">
                                             <div class="input-group align-items-center">
                                                   <span class="icon d-flex align-items-center" style="margin-left: 60px;"></span>
                                                  <div class="comments col-md-8 col-md-offset-1" style="margin-left: 20px;">겁나 웃겨요오오오 대단해애애애애</div>
                                                  <img alt="image" id="commentLikeImgOff3" style="height: 30px; width: 30px;" src="resources/images/heartOff.png" >123   
                                               </div>
                                        </div>
                           </div>
                           <!-- 대댓글 창 -->
                                <div class="text" style="margin-top: 20px;">
                                          <div class="undercomment" style="align-items: center">
                                             <div class="input-group align-items-center">
                                                   <span class="icon d-flex align-items-center" style="margin-left: 60px;"></span>
                                                  <div class="comments col-md-8 col-md-offset-1" style="margin-left: 20px;">겁나 웃겨요오오오 대단해애애애애</div>
                                                  <img alt="image" id="commentLikeImgOff4" style="height: 30px; width: 30px;" src="resources/images/heartOff.png" >123   
                                               </div>
                                        </div>
                           </div>
                           
                           <!-- 댓글 창 -->
                                <div class="text" style="margin-top: 20px;">
                                          <div class="comment" style="align-items: center">
                                             <div class="input-group align-items-center">
                                                   <span class="icon d-flex align-items-center"></span>
                                                  <div class="comments col-md-10 col-md-offset-1" style="margin-left: 20px;">겁나 웃겨요오오오 대단해애애애애</div>
                                                  <img alt="image" id="commentLikeImgOff5" style="height: 30px; width: 30px;" src="resources/images/heartOff.png" >123
                                                  
                                               </div>
                                        </div>
                           </div>
                        
                        </div>
                        
                        
                        
                        

                            
                             
                             
                             
                           </div>
                        </div>
                        <!-- ============= 게시글 하나 끝 ============== -->


               </div>
            </div>
         </div>
        
   </section>
   
   
   
   
   
   
   <!-- 게시글 없을 때 -->
    <section class="ftco-section">
         <div class="container" style="margin-top: 100px;">
            <div class="row justify-content-center">
               <div class="col-md-10" style="margin-top: 100px; margin-bottom: 100px; text-align: center;">
               
                        더이상 볼 수 있는 게시글이 없어요


               </div>
            </div>
         </div>
   </section>
   <!-- 게시글 없을 때  끝 -->
            
         
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
    
    
    
<script src="resources/js/jquery.min.js"></script>
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
  
  
  