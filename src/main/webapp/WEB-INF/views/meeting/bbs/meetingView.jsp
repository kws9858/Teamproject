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
				<li class="nav-item"><a href="<c:url value='/MeetingView.do'/>"
					class="nav-link">동네 둘러보기</a></li>
				<li class="nav-item"><a href="about.jsp" class="nav-link">게시글</a></li>
				<li class="nav-item"><a href="coming-soon.jsp" class="nav-link">공연</a></li>
				<li class="nav-item"><a href="<c:url value='/FundingList.do'/>" class="nav-link">펀딩</a></li>

			</ul>
		</div>
	</div>
</nav>
<!-- END nav -->

<!-- 모임 상세보기 TOP -->
<a href="<c:url value='/MeetingView.do'/>">
<section
		class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_5.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div style="background-color: pink"
				class="row no-gutters slider-text align-items-center justify-content-center">
				<img alt="image" style="height: 300px; width: 1110px;"
					src="resources/images/book-2.jpg">
			</div>
		</div>
	</section> </a>
<!-- 모임 상세보기 TOP 끝 -->


<!-- =======================모임 카테고리(소개,일정,게시글,채팅)=========================== -->
<section class="ftco-section ftco-no-pt mt-5 mt-md-0">
	<div class="container">
		<div class="row">
			<div class="col-md-3 d-flex align-items-stretch ftco-animate">
				<div class="services-2 text-center">
					<div class="icon-wrap">
						<div class="icon d-flex align-items-center justify-content-center">
							<a href=<c:url value='/MeetingViewBBS.do'/>><span
								class="flaticon-fantasy"></span></a>
						</div>
					</div>
					<h2>
						<a href=<c:url value='/MeetingViewBBS.do'/>>게시글</a>
					</h2>

				</div>
			</div>
			<div class="col-md-3 d-flex align-items-stretch ftco-animate">
				<div class="services-2 text-center">
					<div class="icon-wrap">
						<div class="icon d-flex align-items-center justify-content-center">
							<a href="<c:url value='/MeetingViewCon.do'/>"><span
								class="flaticon-heart"></span></a>
						</div>
					</div>
					<h2>
						<a href="<c:url value='/MeetingViewCon.do'/>">공연</a>
					</h2>

				</div>
			</div>
			<div class="col-md-3 d-flex align-items-stretch ftco-animate">
				<div class="services-2 text-center">
					<div class="icon-wrap">
						<div class="icon d-flex align-items-center justify-content-center">
							<a href="<c:url value='/MeetingViewFun.do'/>"><span
								class="flaticon-model"></span></a>
						</div>
					</div>
					<h2>
						<a href="<c:url value='/MeetingViewFun.do'/>">펀딩</a>
					</h2>

				</div>
			</div>
			<div class="col-md-3 d-flex align-items-stretch ftco-animate">
				<div class="services-2 text-center">
					<div class="icon-wrap">
						<div class="icon d-flex align-items-center justify-content-center">
							<a href="<c:url value='/MeetingViewCal.do'/>"><span
								class="flaticon-history"></span></a>
						</div>
					</div>
					<h2>
						<a href="<c:url value='/MeetingViewCal.do'/>">일정</a>
					</h2>

				</div>
			</div>
		</div>
	</div>
</section>
<!-- =======================모임 카테고리(소개,일정,게시글,채팅)끝=========================== -->




<!-- =======================모임 설명부분========================= -->
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10" style="margin-top: 100px">
				<div class="heading-section text-center ftco-animate pb-4">
					<span class="subheading">음악>밴드</span>
					<h2>음사모</h2>
				</div>
				<p>음악을 사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의 모임입니다음악을
					사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의
					모임입니다음악을 사랑하는 사람들의 모임입니다</p>
				<blockquote class="blockquote my-5">
					<span class="fa fa-quote-left"></span>
					<h3>Music is my Life!</h3>
				</blockquote>
				<p>음악을 사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의 모임입니다음악을
					사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의 모임입니다음악을 사랑하는 사람들의 모임입니다</p>
				<form method="POST" id="contactForm" name="contactForm"
					class="contactForm">
					<blockquote class="blockquote my-5">
						<div class="row" style="padding-top: 100px">
							<!-- 인원 -->
							<div class="col-md-6">

								<div class="form-group">
									<label class="label" for="">인원</label>
								</div>
							</div>
							<div class="col-md-6">6/10</div>

							<!-- 역할 -->
							<div class="col-md-6">

								<div class="form-group">
									<label class="label" for="">역할</label>
								</div>
							</div>
							<div class="col-md-6">
								고수현 / 피아노</br> 김우석 / 베이스</br> 나유진 / 기타</br> 권기주 / 바이올린</br> 박규현 / 드럼</br> 이선영 / 일렉</br>

							</div>


							<!-- 동네 -->
							<div class="col-md-6" style="margin-top: 10px;">
								<div class="form-group">
									<label class="label" for="">동네</label>
								</div>
							</div>
							<div class="col-md-6" style="margin-top: 10px;">가산동 / 상대동</div>



							<!-- 활동 사진 -->
							<div class="col-md-12" style="margin-top: 10px;">
								<div class="form-group">
									<label class="label" for="#">활동 사진</label>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<div>
										<img alt="image" style="height: 250px; width: 300px;"
											src="resources/images/book-2.jpg"> <img alt="image"
											style="height: 250px; width: 300px;"
											src="resources/images/book-3.jpg"> <img alt="image"
											style="height: 250px; width: 300px;"
											src="resources/images/book-5.jpg"> <img alt="image"
											style="height: 250px; width: 300px;"
											src="resources/images/book-6.jpg"> <img alt="image"
											style="height: 250px; width: 300px;"
											src="resources/images/book-9.jpg">
									</div>
								</div>
							</div>
						</div>
					</blockquote>
				</form>

			</div>
		</div>
	</div>

</section>









<footer class="ftco-footer">
	<div class="container">
		<div class="row mb-5">
			<div class="col-sm-12 col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2 logo">
						<a href="#">Connect</a>
					</h2>
					<p>Far far away, behind the word mountains, far from the
						countries.</p>
					<ul class="ftco-footer-social list-unstyled mt-2">
						<li class="ftco-animate"><a href="#"><span
								class="fa fa-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="fa fa-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="fa fa-instagram"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-12 col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">Extra Links</h2>
					<ul class="list-unstyled">
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Affiliate
								Program</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Business
								Services</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Education
								Services</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Gift
								Cards</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-12 col-md">
				<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">Legal</h2>
					<ul class="list-unstyled">
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Join
								us</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Blog</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Privacy
								&amp; Policy</a></li>
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Term
								&amp; Conditions</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-12 col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Company</h2>
					<ul class="list-unstyled">
						<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About
								Us</a></li>
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
							<li><span class="icon fa fa-map marker"></span><span
								class="text">203 Fake St. Mountain View, San Francisco,
									California, USA</span></li>
							<li><a href="#"><span class="icon fa fa-phone"></span><span
									class="text">+2 392 3929 210</span></a></li>
							<li><a href="#"><span
									class="icon fa fa-paper-plane pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
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

					<p class="mb-0" style="color: rgba(255, 255, 255, .5);">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib.com</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</div>
</footer>













