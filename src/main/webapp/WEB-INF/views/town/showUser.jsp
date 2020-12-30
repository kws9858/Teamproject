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


<!-- 동네 둘러보기-->
		
<section class="ftco-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-lg-12">
				<div class="row">
				
					<div class="col-md-12">
	    				<div class="book-wrap book-wrap-2 d-md-flex">
	    				
	    					<div class="img img-2 d-flex justify-content-end" style="background-image: url(images/book-1.jpg);">
	    						<div class="in-text">
	    							
	    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
	    								<span class="flaticon-heart-1"></span>
	    							</a>
	    							
	    						</div>
	    					</div>
	    					
	    					<div class="text p-4">
	    						<h2><a href="#">닉네임</a></h2>
	    						<p class="mb-2"><span class="place">나이 | 성별</span></p>
	    						<span class="position">관심사</span>
	    						<p>한 줄 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<br>
	   							<br>
	   							
	   							<div style="float: right;">
									<a href="#"><input
									type="button" class="btn btn-danger" value="자세히 보기" /></a>
								</div>
	    					</div>
	    				</div>
    				</div>
    				
					<div class="col-md-12">
	    				<div class="book-wrap book-wrap-2 d-md-flex">
	    				
	    					<div class="img img-2 d-flex justify-content-end" style="background-image: url(images/book-1.jpg);">
	    						<div class="in-text">
	    							
	    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
	    								<span class="flaticon-heart-1"></span>
	    							</a>
	    							
	    						</div>
	    					</div>
	    					
	    					<div class="text p-4">
	    						<h2><a href="#">닉네임</a></h2>
	    						<p class="mb-2"><span class="place">나이 | 성별</span></p>
	    						<span class="position">관심사</span>
	    						<p>한 줄 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<br>
	   							<br>
	   							
	   							<div style="float: right;">
									<a href="#"><input
									type="button" class="btn btn-danger" value="자세히 보기" /></a>
								</div>
	    					</div>
	    				</div>
    				</div>
    				
    				<div class="col-md-12">
	    				<div class="book-wrap book-wrap-2 d-md-flex">
	    				
	    					<div class="img img-2 d-flex justify-content-end" style="background-image: url(images/book-1.jpg);">
	    						<div class="in-text">
	    							
	    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
	    								<span class="flaticon-heart-1"></span>
	    							</a>
	    							
	    						</div>
	    					</div>
	    					
	    					<div class="text p-4">
	    						<h2><a href="#">닉네임</a></h2>
	    						<p class="mb-2"><span class="place">나이 | 성별</span></p>
	    						<span class="position">관심사</span>
	    						<p>한 줄 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<br>
	   							<br>
	   							
	   							<div style="float: right;">
									<a href="#"><input
									type="button" class="btn btn-danger" value="자세히 보기" /></a>
								</div>
	    					</div>
	    				</div>
    				</div>
    				
    				<div class="col-md-12">
	    				<div class="book-wrap book-wrap-2 d-md-flex">
	    				
	    					<div class="img img-2 d-flex justify-content-end" style="background-image: url(images/book-1.jpg);">
	    						<div class="in-text">
	    							
	    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
	    								<span class="flaticon-heart-1"></span>
	    							</a>
	    							
	    						</div>
	    					</div>
	    					
	    					<div class="text p-4">
	    						<h2><a href="#">닉네임</a></h2>
	    						<p class="mb-2"><span class="place">나이 | 성별</span></p>
	    						<span class="position">관심사</span>
	    						<p>한 줄 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<br>
	   							<br>
	   							
	   							<div style="float: right;">
									<a href="#"><input
									type="button" class="btn btn-danger" value="자세히 보기" /></a>
								</div>
	    					</div>
	    				</div>
    				</div>
    				
    				<div class="col-md-12">
	    				<div class="book-wrap book-wrap-2 d-md-flex">
	    				
	    					<div class="img img-2 d-flex justify-content-end" style="background-image: url(images/book-1.jpg);">
	    						<div class="in-text">
	    							
	    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
	    								<span class="flaticon-heart-1"></span>
	    							</a>
	    							
	    						</div>
	    					</div>
	    					
	    					<div class="text p-4">
	    						<h2><a href="#">닉네임</a></h2>
	    						<p class="mb-2"><span class="place">나이 | 성별</span></p>
	    						<span class="position">관심사</span>
	    						<p>한 줄 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<br>
	   							<br>
	   							
	   							<div style="float: right;">
									<a href="#"><input
									type="button" class="btn btn-danger" value="자세히 보기" /></a>
								</div>
	    					</div>
	    				</div>
    				</div>
    				
    				<div class="col-md-12">
	    				<div class="book-wrap book-wrap-2 d-md-flex">
	    				
	    					<div class="img img-2 d-flex justify-content-end" style="background-image: url(images/book-1.jpg);">
	    						<div class="in-text">
	    							
	    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
	    								<span class="flaticon-heart-1"></span>
	    							</a>
	    							
	    						</div>
	    					</div>
	    					
	    					<div class="text p-4">
	    						<h2><a href="#">닉네임</a></h2>
	    						<p class="mb-2"><span class="place">나이 | 성별</span></p>
	    						<span class="position">관심사</span>
	    						<p>한 줄 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<br>
	   							<br>
	   							
	   							<div style="float: right;">
									<a href="#"><input
									type="button" class="btn btn-danger" value="자세히 보기" /></a>
								</div>
	    					</div>
	    				</div>
    				</div>
    				
    				<div class="col-md-12">
	    				<div class="book-wrap book-wrap-2 d-md-flex">
	    				
	    					<div class="img img-2 d-flex justify-content-end" style="background-image: url(images/book-1.jpg);">
	    						<div class="in-text">
	    							
	    							<a href="#" class="icon d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="left" title="Add to Wishlist">
	    								<span class="flaticon-heart-1"></span>
	    							</a>
	    							
	    						</div>
	    					</div>
	    					
	    					<div class="text p-4">
	    						<h2><a href="#">닉네임</a></h2>
	    						<p class="mb-2"><span class="place">나이 | 성별</span></p>
	    						<span class="position">관심사</span>
	    						<p>한 줄 소개입니다아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아</p>
	   							<br>
	   							<br>
	   							<br>
	   							
	   							<div style="float: right;">
									<a href="#"><input
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    