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
					<span style="float: right;"> 
						<a href="<c:url value='/ShowUser.do'/>">
							<span style="font-size: 1.0em; font-weight: bold; color: black;">&nbsp; 회원</span>
						</a>
						<a href="<c:url value='/AllOfMeeting.do'/>" id="meeting">
							<span style="font-size: 1.0em;" class="border-left">&nbsp;모임&nbsp;</span>
						</a>
					</span>
					
				</div>
			</div>
		</div>
	</div>



    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/leesunyoung/14.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-0 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">모이까 <i class="fa fa-chevron-right"></i></a></span> <span>동네 둘러보기 <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">우리 동네 이웃 보기</h1>
          </div>
        </div>
      </div>
    </section>
    
    
    
    <!-- 동네 둘러보기-->
		
	<section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 ftco-animate">
					<div class="row">
		    			<div class="col-md-3 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-1.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-3 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-2.jpg);">
		    					</div>
		    					<div class="text px-3 py-3 w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-3 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-3.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-3 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-3.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>

		    			<div class="col-md-4 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-4.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 order-md-first w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-5.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 order-md-first w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-6.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 order-md-first w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>

		    			<div class="col-md-4 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-7.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-8.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 d-flex">
		    				<div class="book-wrap">
		    					<div class="img d-flex justify-content-end w-100" style="background-image: url(images/book-9.jpg);">
		    					</div>
		    					<div class="text px-4 py-3 w-100">
		    						<p class="mb-2"><span class="price">회원 이름</span></p>
		    						<h2><a href="#">한 줄 소개 메시지</a></h2>
		    						<span class="position">관심사</span>
		    					</div>
		    				</div>
		    			</div>
		    		</div>
		    		<div class="row mt-5">
		          <div class="col">
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
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->



<!-- 동네 둘러보기-->
		
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    