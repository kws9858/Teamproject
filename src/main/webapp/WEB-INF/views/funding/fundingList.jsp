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
				<li class="nav-item"><a href="<c:url value='/Perform.do'/>" class="nav-link">공연</a></li>
				<li class="nav-item active"><a href="<c:url value='/FundingList.do'/>" class="nav-link">펀딩</a></li>
			</ul>
		</div>
	</div>
</nav>
<section class="ftco-section">
	<div class="container">
		<div class="row">

			<div class="offset-6 col-6">
				<span id="hide" style="display: none; float: right;"> </span> <span
					style="float: right;"> <a
					href="<c:url value="/FundingList.do"/>" id="meeting"><span
						style="font-size: 1.0em; font-weight: bold; color: black;">&nbsp;전체펀딩&nbsp;</span></a>
					<a href="<c:url value='/funding/FundingListMyTown.do'/>"><span
						style="font-size: 1.0em;" class="border-left">&nbsp; 내동네펀딩</span></a>
				</span>

			</div>
		</div>
	</div>
	<div class="container ">
		<div class="row mb-5">
			<div class="col-lg-12">
				<div class="row">

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
										<span class="price">${item.mainCategory } > ${item.subCategory }</span>
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
											<a href="<c:url value='/funding/Funding.do?meetingNo=${item.meetingNo }'/>"><input
											type="button" class="btn btn-danger" value="펀딩하러가기" /></a></div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
				<!-- class="row" -->
			</div>
		</div>
	</div>
</section>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

