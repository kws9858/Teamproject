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
				<li class="nav-item active"><a
					href="<c:url value="/funding/FundingList.do"/>" class="nav-link">펀딩</a></li>

			</ul>
		</div>
	</div>
</nav>
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center mb-5">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<span class="subheading">밴드</span>
				<h2>윤도현밴드</h2>
			</div>
		</div>
		<div class="row">
			<div class="">
				<div class="item">
					<div class="col-md-6 img img-3 " style="float: left;">
						<img style="height: 100%; width: 100%"
							src="<c:url value='/images/band.jpg'/>" alt="image">
					</div>
					<div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5"
						style="float: right;">
						<div class="heading-section">
							<h2 class="mb-4" style="font-size: 35px">20일 남음</h2>
							<hr />
							<p>가장 많이 후원하신 3분께 이번달 열리는 공연 MVP좌석 티켓을 드려요</p>
							<span style="font-weight: bold;">45000</span><small>원 펀딩</small>
							<br />
							<div style="margin-top: 10%">
								<span style="font-weight: bold;">23</span><small>명의 서포터</small>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-center mb-5">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<form class="form-inline">
					<div class="form-group col-md-12 offset-md-3" style="margin-top: 10%">
						<input type="text" class="form-control" name="cost"
							id="cost" placeholder="0원">&nbsp;<input id="funding" type="button" class="form-control btn btn-success" value="펀딩하기" /></a>

					</div>
					
				</form>

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
