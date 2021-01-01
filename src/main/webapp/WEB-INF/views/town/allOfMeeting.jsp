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
   




    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/leesunyoung/14.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-0 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">모이까 <i class="fa fa-chevron-right"></i></a></span> <span>동네 둘러보기 <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">우리 동네 모임 보기</h1>
          </div>
        </div>
      </div>
    </section>



   
   
   <p style="margin-top:12px">
	     사용한 데이터를 보시려면
	    <em class="link">
	       <a href="/download/web/data/chicken.json" target="_blank">여기를 클릭하세요!</a>
	    </em>
	</p>
	<div id="map" style="width:80%;height:350px; text-align: center;"></div>
	
	

<!-- 동네 둘러보기-->
      
<section class="ftco-section">
   <div class="container">
      <div class="row mb-5">
         <div class="col-lg-12">
            <div class="row">
            
               <div class="col-md-12">
                   <div class="book-wrap book-wrap-2 d-md-flex">
                   		<div class="img img-3 d-flex justify-content-end" style="background-image: url(images/leesunyoung/rockBand.jpg);"></div>
                   		<div class="img img-3 d-flex justify-content-end" style="background-image: url(images/leesunyoung/rockBand.jpg);">
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
                         <p>모임 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5df4291e2d99c275b1ea40e928f7d96c&libraries=clusterer"></script>

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
      
      
      
	var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
	    center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표
	    level : 14 // 지도의 확대 레벨
	});
	
	// 마커 클러스터러를 생성합니다
	// 마커 클러스터러를 생성할 때 disableClickZoom 값을 true로 지정하지 않은 경우
	// 클러스터 마커를 클릭했을 때 클러스터 객체가 포함하는 마커들이 모두 잘 보이도록 지도의 레벨과 영역을 변경합니다
	// 이 예제에서는 disableClickZoom 값을 true로 설정하여 기본 클릭 동작을 막고
	// 클러스터 마커를 클릭했을 때 클릭된 클러스터 마커의 위치를 기준으로 지도를 1레벨씩 확대합니다
	var clusterer = new kakao.maps.MarkerClusterer({
	    map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
	    averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
	    minLevel: 10, // 클러스터 할 최소 지도 레벨
	    disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
	});
	
	// 데이터를 가져오기 위해 jQuery를 사용합니다
	// 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
	$.get("/download/web/data/chicken.json", function(data) {//https://apis.map.kakao.com/download/web/data/chicken.json
	    // 데이터에서 좌표 값을 가지고 마커를 표시합니다
	    // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
	    var markers = $(data.positions).map(function(i, position) {
	        return new kakao.maps.Marker({
	            position : new kakao.maps.LatLng(position.lat, position.lng)
	        });
	    });
	
	    // 클러스터러에 마커들을 추가합니다
	    clusterer.addMarkers(markers);
	});
	
	// 마커 클러스터러에 클릭이벤트를 등록합니다
	// 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우
	// 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있습니다
	kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
	
	    // 현재 지도 레벨에서 1레벨 확대한 레벨
	    var level = map.getLevel()-1;
	
	    // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
	    map.setLevel(level, {anchor: cluster.getCenter()});
	}); 
      
      
</script>
   
   






    
    