<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>개인정보수정</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="resources/css/animate.css">

<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">

<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

 
	<div class="container-fluid px-md-12  pt-5 ">

		<div class="row justify-content-between">
			<div class="col-md-8 order-md-last">
				<div class="row">
				
					<div class="col-md-6 text-center">
					
						<a class="navbar-brand" href="<c:url value='/'/>"><h1>모이까</h1>
							<span></span> <small>개인정보 수정</small></a>
							


					
					</div>

					<div class="row no-gutters">
						<div class="col-md-7">
							<div class="contact-wrap w-100 p-md-5 p-4">
								<form method="POST" id="frm" name="contactForm" class="contactForm">
									<div class="row">
										
										<div class="col-md-10" style="display: block;">
											<div class="form-group">
												<label class="label" for="name" style="font: bold;">이름</label>
												<input type="text" class="form-control" name="name" id="name" value="${dto.name }" maxlength="10">
												<span id="nameDisplay" style="color: red; font-size: 0.8em;"></span>
												<input type="hidden" id="user_name" name="user_name" value="" />
											</div>
										</div>

										<div class="col-md-10" style="display: block;">
											<div class="form-group">
												<label class="label" for="age" style="font: bold;">나이</label>
												<input type="text" class="form-control" name="age" id="age" value="${dto.age}" maxlength="2">
												<span id="ageDisplay" style="color: red; font-size: 0.8em;"></span>
												<input type="hidden" id="user_age" name="user_age" value="" />
												
											</div>
										</div>

										<div class="col-md-10" style="display: block;">
											<div class="form-group">
												<label class="label" for="gender" > 성별</label> 
												<span style="font-size: 1em">남자 </span>
												<c:if test="${dto.gender eq 'M'}" var="male">
												<input type="radio" name="gender" value="M" checked="checked"> 
												<span style="font-size: 1em; margin-left: 5%">여자 </span>
												<input type="radio" name="gender" value="F">
												</c:if>
												<c:if test="${not male}">
												<input type="radio" name="gender" value="M" > 
												<span style="font-size: 1em; margin-left: 5%">여자 </span>
												<input type="radio" name="gender" value="F" checked="checked">
												</c:if>
												
												<span id="genderDisplay" style="color: red; font-size: 0.8em; display: block;"></span>
													
											</div>
											
										</div>
										

										<div class="col-md-10" style="display: block;">
											<div class="form-group">
												<label class="label" for="tel" style="font: bold;">전화번호</label>
												<input type="tel" class="form-control" name="tel" id="tel" value="${dto.tel }" maxlength="11"/>
												<span id="telDisplay" style="color: red; font-size: 0.8em;"></span>
											</div>
										</div>
										
										<div class="col-md-10 text-center" style="margin-top: 5%; margin-bottom: 5%">
											<div class="form-group">
												<input type="button" value="주소검색" id="search"
													class="btn btn-primary" /> 
												<input type="text" disabled="disabled" id="realAddress" name="addr" value="${townDTO.town }" maxlength="30"/>
												<input type="hidden" name="addr" id="addr"/>
											</div>
										</div>


										<div class="col-md-10 pt-3">
											<div class="form-group">
												<input id="updateBtn" type="button" value="정보수정"
													class="btn btn-success btn-block">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- 로고 가운데 배치용 -->
			<div class="col-md-4 d-flex"></div>
		</div>



	</div>
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/jquery.animateNumber.min.js"></script>
	<script src="resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/js/google-map.js"></script>
	<script src="resources/js/main.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

	<script>
		//이름 에이작스 처리
		$('#name').blur(function() {
			console.log('포커스 잃었다');
			console.log($(this).val());
			$.ajax({
				url : "<c:url value="/ajaxName.do"/>",
				type : 'post',
				dataType : 'json',
				data : "name=" + $('#name').val(),
				success : function(data) {

					$('#nameDisplay').html(data.chName);
					$('#user_name').val(data.user_name);
				}
			});
		});
		
		//나이 입력유무
		$('#age').blur(function() {
			console.log('포커스 잃었다');
			console.log($(this).val());
			$.ajax({
				url : "<c:url value="/ajaxAge.do"/>",
				type : 'post',
				dataType : 'json',
				data : "age=" + $('#age').val(),
				success : function(data) {

					$('#ageDisplay').html(data.chAge);
					$('#user_age').val(data.user_age);
				}
			});
		});

		//회원가입 버튼 클릭
		$('#updateBtn').click(function() {
			
			var genders = document.getElementsByName('gender');
			var gender; // 여기에 선택된 radio 버튼의 값이 담기게 된다.
			for(var i=0; i<genders.length; i++) {
			    if(genders[i].checked) {
			    	gender = genders[i].value;
			    }
			}
			console.log(gender);
			if ($('#user_name').val() == "") {
				$('#name').focus();
				return;
			}else if ($('#user_age').val()==""){
				$('#age').focus();
				return;
			}else if($('#tel').val() ==""){
				$('#telDisplay').html('전화번호를 입력해주세요');
				$('#tel').focus();
				return;
			}else if($('#tel').val().length!=11){
				$('#telDisplay').html('전화번호를 정확히 입력해주세요');
				$('#tel').focus();
				return;
			}
			//form태그의 action속성 및 method속성 설정
			$('#frm').prop({
				action : "<c:url value='/InfoUpdate.do'/>"
			});
			//폼객체의 submit()함수로 서버로 전송
			$('#frm').submit();
		});
		
		$('#search').click(function(){
			 openWin = window.open("<c:url value='/SearchAddress.do'/>",
	                "addressForm", "width=1000, height=600 ,resizable = no, scrollbars = no");
		});
	</script>
</body>
</html>