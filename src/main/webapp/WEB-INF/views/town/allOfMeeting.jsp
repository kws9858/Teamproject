<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav
   class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
   id="ftco-navbar">
   <div class="container-fluid">
      
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#ftco-nav" aria-controls="ftco-nav"
         aria-expanded="false" aria-label="Toggle navigation">
         <span class="fa fa-bars"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="ftco-nav">
         <ul class="navbar-nav m-auto">
            <li class="nav-item active"><a href="<c:url value='/AllOfMeeting.do'/>" class="nav-link">동네 둘러보기</a></li>
               <li class="nav-item"><a href="<c:url value='/MeetingBBS.do'/>" class="nav-link">게시글</a></li>
            <li class="nav-item"><a href="<c:url value='/Perform.do'/>" class="nav-link">공연</a></li>
            <li class="nav-item"><a href="<c:url value='/FundingList.do'/>" class="nav-link">펀딩</a></li>

         </ul>
      </div>
   </div>
</nav>
<!-- END nav -->

<div class="container">
      <div class="row">
         <div class="offset-5 col-7" >
            <span id="hide" style="display: none; float:right;">
               <a href="<c:url value='/CreateMeeting.do'/>"><span style="font-size: 0.8em">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;모임 만들기 &nbsp;</span></a>
                <a href="<c:url value='/AllOfMeeting.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp;전체 &nbsp;</span></a>
               <a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 스포츠 &nbsp;</span></a>
               <a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 공연 &nbsp;</span></a>
               <a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 예술 &nbsp;</span></a>
               <a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 프로그래밍 &nbsp;</span></a>
               <a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 게임 &nbsp;</span></a>
               <a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 음악 &nbsp;</span></a>
            </span>
            

            <span style="float: right;"> 
               <a href="<c:url value='/ShowUser.do'/>">
                  <span style="font-size: 1.0em;">&nbsp; 회원</span>
               </a>
               <a href="#" id="meeting">
                  <span style="font-size: 1.0em; font-weight: bold; color: black;" class="border-left">&nbsp;모임&nbsp;</span>
               </a>
            </span>
         </div>
      </div>
   </div>



<!-- 동네 둘러보기-->
      
<section class="ftco-section">
   <div class="container">
      <div class="row mb-5">
         <div class="col-lg-12">
            <div class="row">
            
               <div class="col-md-12">
                   <div class="book-wrap book-wrap-2 d-md-flex">
                   
                      <div class="img img-2 d-flex justify-content-end" style="background-image: url(images/leesunyoung/rockBand.jpg);">
                         <div class="in-text">
                            
                            <a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
                               <span class="flaticon-heart-1"></span>
                            </a>
                            
                         </div>
                      </div>
                      
                      <div class="text p-4">
                         <h2><a href="#">모임명</a></h2>
                         <p class="mb-2"><span class="place">위치</span></p>
                         <span class="position">대분류 | 세분류 | 인원 모집 여부</span>
                         <p>모임 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
                           <br>
                           
                           <div style="float: right;">
                           <a href="<c:url value='/MeetingView.do'/>"><input
                           type="button" class="btn btn-danger" value="자세히 보기" /></a>
                        </div>
                      </div>
                   </div>
                   
                </div>
                
                <div class="col-md-12">
                   <div class="book-wrap book-wrap-2 d-md-flex">
                   
                      <div class="img img-2 d-flex justify-content-end" style="background-image: url(images/leesunyoung/fashionShow.jpg);">
                         <div class="in-text">
                            
                            <a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
                               <span class="flaticon-heart-1"></span>
                            </a>
                            
                         </div>
                      </div>
                      
                      <div class="text p-4">
                         <h2><a href="#">모임명</a></h2>
                         <p class="mb-2"><span class="place">위치</span></p>
                         <span class="position">대분류 | 세분류 | 인원 모집 여부</span>
                         <p>모임 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
                           <br>
                           
                           <div style="float: right;">
                           <a href="<c:url value='/MeetingView.do'/>"><input
                           type="button" class="btn btn-danger" value="자세히 보기" /></a>
                        </div>
                      </div>
                   </div>
                   
                </div>
                
                <div class="col-md-12">
                   <div class="book-wrap book-wrap-2 d-md-flex">
                   
                      <div class="img img-2 d-flex justify-content-end" style="background-image: url(images/leesunyoung/book-1.jpg);">
                         <div class="in-text">
                            
                            <a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
                               <span class="flaticon-heart-1"></span>
                            </a>
                            
                         </div>
                      </div>
                      
                      <div class="text p-4">
                         <h2><a href="#">모임명</a></h2>
                         <p class="mb-2"><span class="place">위치</span></p>
                         <span class="position">대분류 | 세분류 | 인원 모집 여부</span>
                         <p>모임 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
                           <br>
                           
                           <div style="float: right;">
                           <a href="<c:url value='/MeetingView.do'/>"><input
                           type="button" class="btn btn-danger" value="자세히 보기" /></a>
                        </div>
                      </div>
                   </div>
                   
                </div>
                
                <div class="col-md-12">
                   <div class="book-wrap book-wrap-2 d-md-flex">
                   
                      <div class="img img-2 d-flex justify-content-end" style="background-image: url(images/leesunyoung/Play.jpg);">
                         <div class="in-text">
                            
                            <a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
                               <span class="flaticon-heart-1"></span>
                            </a>
                            
                         </div>
                      </div>
                      
                      <div class="text p-4">
                         <h2><a href="#">모임명</a></h2>
                         <p class="mb-2"><span class="place">위치</span></p>
                         <span class="position">대분류 | 세분류 | 인원 모집 여부</span>
                         <p>모임 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
                           <br>
                           
                           <div style="float: right;">
                           <a href="<c:url value='/MeetingView.do'/>"><input
                           type="button" class="btn btn-danger" value="자세히 보기" /></a>
                        </div>
                      </div>
                   </div>
                   
                </div>
                
                <div class="col-md-12">
                   <div class="book-wrap book-wrap-2 d-md-flex">
                   
                      <div class="img img-2 d-flex justify-content-end" style="background-image: url(images/leesunyoung/rockBand.jpg);">
                         <div class="in-text">
                            
                            <a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
                               <span class="flaticon-heart-1"></span>
                            </a>
                            
                         </div>
                      </div>
                      
                      <div class="text p-4">
                         <h2><a href="#">모임명</a></h2>
                         <p class="mb-2"><span class="place">위치</span></p>
                         <span class="position">대분류 | 세분류 | 인원 모집 여부</span>
                         <p>모임 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
                           <br>
                           
                           <div style="float: right;">
                           <a href="<c:url value='/MeetingView.do'/>"><input
                           type="button" class="btn btn-danger" value="자세히 보기" /></a>
                        </div>
                      </div>
                   </div>
                   
                </div>
                
                <div class="col-md-12">
                   <div class="book-wrap book-wrap-2 d-md-flex">
                   
                      <div class="img img-2 d-flex justify-content-end" style="background-image: url(images/leesunyoung/fashionShow.jpg);">
                         <div class="in-text">
                            
                            <a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
                               <span class="flaticon-heart-1"></span>
                            </a>
                            
                         </div>
                      </div>
                      
                      <div class="text p-4">
                         <h2><a href="#">모임명</a></h2>
                         <p class="mb-2"><span class="place">위치</span></p>
                         <span class="position">대분류 | 세분류 | 인원 모집 여부</span>
                         <p>모임 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
                           <br>
                           
                           <div style="float: right;">
                           <a href="<c:url value='/MeetingView.do'/>"><input
                           type="button" class="btn btn-danger" value="자세히 보기" /></a>
                        </div>
                      </div>
                   </div>
                   
                </div>

            </div><!-- class="row" -->
         </div>
      </div>
   </div>   
</section>


    <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script type="text/javascript">
      $('#meeting').click(function() {
         
         if($('#hide').css('display') == 'none'){
            $('#hide').show("slide");
            $('#meeting').css('backgroundColor','');
            $('#meeting').css('boder','right');
         }
         else{
            $('#hide').hide("slide");
            $('#meeting').css('backgroundColor','');
         }

      })
   </script>
   
   






    
    