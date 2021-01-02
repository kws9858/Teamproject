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
			<ul class="navbar-nav m-auto">W
	
				<li class="nav-item"><a href="<c:url value='/AllOfMeeting.do'/>" class="nav-link">동네 둘러보기</a></li>
	            <li class="nav-item"><a href="<c:url value='/MeetingBBS.do'/>" class="nav-link">게시글</a></li>
				<li class="nav-item"><a href="<c:url value='/Perform.do'/>" class="nav-link">공연</a></li>
				<li class="nav-item active"><a href="<c:url value='/FundingList.do'/>" class="nav-link">펀딩</a></li>
			</ul>
		</div>
	</div>
</nav>

<section class="ftco-section">
	<div class="container">
		<div class="row">

			<div class="col-12">
				<c:if test="${not empty town }" var="notTown">
					<span id="hide" style="float: left;">내동네 :<span
						style="color: green;">'${town }'</span>
					</span>
				</c:if>

				<c:if test="${not notTown }">
					<span id="hide" style="float: left;"><span
						style="color: green;">설정한 동네가 없어요</span> </span>
				</c:if>
				<span style="float: right;"> <a
					href="<c:url value="/FundingList.do"/>" id="meeting"><span
						style="font-size: 1.0em;">&nbsp;전체펀딩&nbsp;</span></a> <a
					href="<c:url value='/funding/FundingListMyTown.do'/>"><span
						style="font-size: 1.0em; font-weight: bold; color: black;"
						class="border-left">&nbsp; 내동네펀딩</span></a>
				</span>
				
			</div>
			
		</div>
		<hr />
	</div>
<c:if test="${town ne null and town ne '' }">
	<div class="container ">
		<div class="row mb-5">
			<div class="col-lg-12">
				<div class="row">
					<c:if test="${not empty list}" var="listNull">
					<c:forEach var="item" items="${list }" varStatus="loop">

						<div class="col-md-12 pt-5">
							<div class="book-wrap book-wrap-2 d-md-flex">
								<div class="img img-2 d-flex justify-content-end"
									style="background-image: url(<c:url value='/images/${item.bannerImg }'/>);">
									<div class="in-text">
										<a href="#"
											class="icon d-flex align-items-center justify-content-center"
											data-toggle="tooltip" data-placement="left"
											title="Add to Wishlist"> <span class="flaticon-heart-1"></span>
										</a>
									</div>
								</div>
								<div class="text p-4">
									<p class="mb-2">
									<div>
										<span class="price">${item.mainCategory }/${item.subCategory }</span>
										<div style="float: right; text-align: right;">
											<span style="color: red; font-weight: bold;">${item.calDateDays}일남음</span>
										</div>
									</div>


									</p>
									<h2>
										<a href="#">${item.meetingName }</a>
									</h2>
									<span class="position">모임장:${item.operator } <br />동네:${item.town }
									</span>
									<p>${item.meetingDescription }</p>
									<hr />
									<span style="font-style: oblique; font-weight: bold;">펀딩금액
										:${item.amount }</span><span>원</span>




									<div>
										<span style="font-style: oblique; font-weight: bold;">서포터
											:${item.donationList }</span><span>명</span>
										<div style="float: right;">
											<a
												href="<c:url value='/funding/Funding.do?meetingNo=${item.meetingNo }'/>"><input
												type="button" class="btn btn-danger" value="펀딩하러가기" /></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					</c:if>
					<c:if test="${not listNull }">
					<div style="margin:0 auto; padding-top: 20%">
					'${town }' 동네에서 펀딩하는 모임이 없어요 !
					</div>
					</c:if>

				</div>
				<!-- class="row" -->
			</div>
		</div>
	</div>
	</c:if>
</section>

<section class="ftco-section ftco-no-pt" id="section">
	<div class="container">
		<div class="row">
		<c:if test="${town eq null or town eq ''}">

			<div
				class="col-md-6 pt-3 d-flex justify-content-center align-items-center">
					<img id="real_img"
						src="<c:url value="/resources/images/quokka.png"/>"
						alt="Raised circle image"
						class="shadow-lg"
						style="width: 500px; height: 500px;">
			</div>
			<div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5">
				<div class="heading-section" style="text-align: center; padding-top: 40%">
					"마이페이지에서 개인정보수정으로 동네를 설정해보세요!"
				</div>
			</div>
			</c:if>
					</div>
				</div>
</section>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

