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
				<li class="nav-item"><a href="<c:url value='/AllOfMeeting.do'/>" class="nav-link">동네 둘러보기</a></li>
	            <li class="nav-item"><a href="<c:url value='/MeetingBBS.do'/>" class="nav-link">게시글</a></li>
				<li class="nav-item active"><a href="<c:url value='/Perform.do'/>" class="nav-link">공연</a></li>
				<li class="nav-item"><a href="<c:url value='/FundingList.do'/>" class="nav-link">펀딩</a></li>

			</ul>
		</div>
	</div>
</nav>
<!-- END nav -->


<!-- =====================카테고리========================== 
    <div class="container">
		<div class="row">

			<div class="offset-6 col-6" >
				<span id="hide" style="display: none; float:right;">
					<a href="<c:url value='/AllOfMeeting.do'/>"><span style="font-size: 0.8em">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전체 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 스포츠 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 공연 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 예술 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 프로그래밍 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 게임 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 음악 &nbsp;</span></a>
				</span>
				
				<span id="hide" style="display: none; float: right;"> </span> <span
					style="float: right;"> <a
					href="<c:url value="/MeetingBBS.do"/>" id="meeting"><span
						style="font-size: 1.0em; font-weight: bold; color: black;">&nbsp;모임&nbsp;</span></a>
					<a href="<c:url value='/FreebbsList.do'/>"><span
						style="font-size: 1.0em;" class="border-left">&nbsp; 자유</span></a>
				</span>
				
			</div>
		</div>
	</div>
    =====================카테고리 끝========================== -->


<!-- 동네 둘러보기
		
<section class="ftco-section">
	<div class="container">
		<div class="row">

			<div class="offset-6 col-6" >
				<span id="hide" style="display: none; float:right;">
					<a href="<c:url value='/AllOfMeeting.do'/>"><span style="font-size: 0.8em">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전체 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 스포츠 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 공연 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 예술 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 프로그래밍 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 게임 &nbsp;</span></a>
					<a href="<c:url value='/logout.do'/>"><span style="font-size: 0.8em" class="border-left">&nbsp; 음악 &nbsp;</span></a>
				</span>
				
				<span style="float: right;">
				<a href="<c:url value='/CreatePerformance.do'/>" id="meeting"><span style="font-size: 1.0em;  " class="border-left">&nbsp; 공연 신청 &nbsp;</span></a>
					<a href="#" id="meeting"><span style="font-size: 1.0em;  " class="border-left">&nbsp; 전체 &nbsp;</span></a>
					<a href="<c:url value='/Member.do'/>"><span style="font-size: 1.0em; " class="border-left">&nbsp; 내 동네</span></a>
				</span>
				
			</div>
		</div>
	</div>
-->
	
	
	
	
	
    <section class="hero-wrap hero-wrap-2" style="background-image: url(images/leesunyoung/perform.jpg);" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-0 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">모이까 <i class="fa fa-chevron-right"></i></a></span> <span>공연보기 <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">공연 보기</h1>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center mb-4">
		          <div class="col-md-10">
		          	<div class="row mb-4">
						<div class="col-md-12 d-flex justify-content-between align-items-center">
							<h4 class="product-select">진행 중인 공연이 궁금하시다면 지역을 선택해주세욥</h4>
							<select class="selectpicker" multiple>
					          <option>전체</option>
					          <option>내 동네</option>
					          <option>옆 동네</option>
					          <option>저 동네</option>
					          <option>그 동네</option>
					        </select>
		               		<a href="<c:url value='/WriteFreebbs.do'/>">
		                        <button class="btn btn-primary" style="width: 100px; height: 50;">작성하기</button>
							</a>
						</div>
					</div>
		          </div>
		        </div>
			</div>
    	<div class="container-fluid px-md-5">
    		<div class="row">
    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/1.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4">
    						<p class="mb-2"><span class="price">롤플레잉</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">이 할애비는 말이다</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/5.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4">
    						<p class="mb-2"><span class="price">블랙재킷</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">검정 고무신</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/3.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4">
    						<p class="mb-2"><span class="price">두둥탁</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">반죽은 이렇게요!</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>

    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/8.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4 order-md-first">
    						<p class="mb-2"><span class="price">모임이름</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">공연 제목</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/7.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4 order-md-first">
    						<p class="mb-2"><span class="price">모임이름</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">공연 제목</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/9.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4 order-md-first">
    						<p class="mb-2"><span class="price">모임이름</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">공연 제목</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>

    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/2.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4">
    						<p class="mb-2"><span class="price">모임이름</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">공연 제목</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/12.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4">
    						<p class="mb-2"><span class="price">모임이름</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">공연 제목</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6 col-lg-4 d-flex">
    				<div class="book-wrap d-lg-flex">
    					<div class="img d-flex justify-content-end" style="background-image: url(images/leesunyoung/10.jpg);">
    						<div class="in-text">
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="좋아요♡ 관심목록에 추가">
    								<span class="flaticon-heart-1"></span>
    							</a>
    							<a href="<c:url value='/MeetingViewCon.do'/>" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="자세히 보기">
    								<span class="flaticon-search"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="공유하기">
    								<span class="flaticon-visibility"></span>
    							</a>
    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="신고하기">
    								<span class="flaticon-shopping-cart"></span>
    							</a>
    						</div>
    					</div>
    					<div class="text p-4">
    						<p class="mb-2"><span class="price">모임이름</span></p>
    						<h2><a href="<c:url value='/MeetingViewCon.do'/>">공연 제목</a></h2>
    						<span class="position">공연 장소</span>
    						<span class="position">공연 일시</span>
    					</div>
    				</div>
    			</div>
    		</div>
    		<div class="row mt-5">
	          <div class="col text-center">
	            <div class="block-27">
	              <ul>
	                <li><a href="#">&lt;</a></li>
	                <li class="active"><span>1</span></li>
	                <li><a href="#">2</a></li>
	                <li><a href="#">3</a></li>
	                <li><a href="#">4</a></li>
	                <li><a href="#">5</a></li>
	                <li><a href="#">&gt;</a></li>
	              </ul>
	            </div>
	          </div>
	        </div>
    	</div>
    </section>
    
    
    
    
    
    
    
<!--     
	<div class="container">
		<div class="row mb-5">
			<div class="col-lg-12">
				<div class="row">
				
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
	    						<p class="mb-2"><span>모임 카테고리</span></p>
	    						<h2><a href="#">공연명</a></h2>
	    						<p class="mb-2"><span class="place">모임명</span></p>
	    						<span class="position">공연 일시 | 장소</span>
	    						<p>공연 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<div style="float: right;">
									<a href="<c:url value='/MeetingViewCon.do'/>"><input
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
	    						<p class="mb-2"><span>모임 카테고리</span></p>
	    						<h2><a href="#">공연명</a></h2>
	    						<p class="mb-2"><span class="place">모임명</span></p>
	    						<span class="position">공연 일시 | 장소</span>
	    						<p>공연 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<div style="float: right;">
									<a href="<c:url value='/MeetingViewCon.do'/>"><input
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
	    						<p class="mb-2"><span>모임 카테고리</span></p>
	    						<h2><a href="#">공연명</a></h2>
	    						<p class="mb-2"><span class="place">모임명</span></p>
	    						<span class="position">공연 일시 | 장소</span>
	    						<p>공연 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<div style="float: right;">
									<a href="<c:url value='/MeetingViewCon.do'/>"><input
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
	    						<p class="mb-2"><span>모임 카테고리</span></p>
	    						<h2><a href="#">공연명</a></h2>
	    						<p class="mb-2"><span class="place">모임명</span></p>
	    						<span class="position">공연 일시 | 장소</span>
	    						<p>공연 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<div style="float: right;">
									<a href="<c:url value='/MeetingViewCon.do'/>"><input
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
	    						<p class="mb-2"><span>모임 카테고리</span></p>
	    						<h2><a href="#">공연명</a></h2>
	    						<p class="mb-2"><span class="place">모임명</span></p>
	    						<span class="position">공연 일시 | 장소</span>
	    						<p>공연 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<div style="float: right;">
									<a href="<c:url value='/MeetingViewCon.do'/>"><input
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
	    						<p class="mb-2"><span>모임 카테고리</span></p>
	    						<h2><a href="#">공연명</a></h2>
	    						<p class="mb-2"><span class="place">모임명</span></p>
	    						<span class="position">공연 일시 | 장소</span>
	    						<p>공연 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<div style="float: right;">
									<a href="<c:url value='/MeetingViewCon.do'/>"><input
									type="button" class="btn btn-danger" value="자세히 보기" /></a>
								</div>
	    					</div>
	    				</div>
    				</div>

				</div>
			</div>
		</div>
	</div>		
</section>

-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script type="text/javascript">
		$('#meeting').click(function() {
			
			if($('#hide').css('display') == 'none'){
				$('#hide').show("slide");
				$('#meeting').css('backgroundColor','red');
			}
			else{
				$('#hide').hide("slide");
				$('#meeting').css('backgroundColor','');
			}

		})
	</script>
    
    
