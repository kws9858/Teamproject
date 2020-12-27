<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.subMenu {
	display: none;
}

.imageText {
	position: relative;
	text-align: center;
	color: red;
}

.imageText:hover div {
	opacity: 1
}

.imageText div {
	position: absolute;
	background-color: red;
	top: 80%;
	left: 50%;
	transform: translate(-50%, -50%);
	opacity: 0;
}

.imageText:hover img {
	filter: brightness(50%);
}
</style>
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
				<li class="nav-item" id="update"><a href="#" class="nav-link">개인정보수정</a>
					<ul class="subMenu text-left"
						style="list-style: none; font-size: 0.8em;" id="subMenu">
						<li id="infoUpdate"><a href="#">개인정보수정</a></li>
						<li id="pwdUpdate"><a href="#">비밀번호수정</a></li>
						<li id="withdraw"><a href="#">회원 탈퇴</a></li>
					</ul></li>
				<li class="nav-item"><a
					href="<c:url value="/ProfileUpdate.do"/>" class="nav-link">프로필수정</a></li>
				<li class="nav-item" id="bookMark"><a href="#" class="nav-link">즐겨찾기한모임</a></li>
				<li class="nav-item" id="bookMark"><a id="Myquestion" href="javascript:Myquestion()" class="nav-link">내 문의함</a></li>
			</ul>    
		</div>
	</div>
</nav>

<form method="post" id="MyquestionForm" action="<c:url value='MyQuestion.do'/>">

<input type="hidden" name="id" value="${dto.id}" />

</form>
<!-- END nav -->
<section class="ftco-section ftco-no-pt" id="section">
	<div class="container">
		<div class="row">

			<div
				class="col-md-6 pt-3 d-flex justify-content-center align-items-center">
				<c:if test="${dto.profileimg == null}" var="notNull">
					<img id="real_img"
						src="<c:url value="resources/images/anony.PNG"/>"
						alt="Raised circle image"
						class="img-fluid rounded-circle shadow-lg"
						style="width: 300px; height: 300px;">

				</c:if>
				<c:if test="${not notNull}">
					<img id="real_img"
						src="<c:url value="/images/${dto.id}/${dto.profileimg}"/>"
						alt="Raised circle image"
						class="img-fluid rounded-circle shadow-lg"
						style="width: 300px; height: 300px;">
				</c:if>
			</div>
			<div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5">
				<div class="heading-section">
					<p>
						<span class="badge badge-success">가입일</span> <span>${dto.postdate}</span>
						<br /> <span class="badge badge-info">이름</span> <span>${dto.name }
						</span> <br /> <span class="badge badge-info">성별</span> <span>${dto.gender}</span>
						<br /> <span class="badge badge-info">나이</span> <span>${dto.age}</span>

						<br />
						<c:if test="${townDTO.town !=null }">
							<span class="badge badge-info">주소</span>
							<span>${townDTO.town }</span>
						</c:if>
						<c:if test="${townDTO.town ==null }">
							<span class="badge badge-info">주소</span>
							<span style="color: red;">입력된 주소정보가 없어요 !</span>
						</c:if>
						<br /> <span class="badge badge-info">전화번호</span> <span>${dto.tel}</span>

						<br /> <span class="badge badge-info">상태메세지</span>
					</p>
					<c:if test="${dto.pr ==null }">
						<p style="font-size: 0.8em;">입력된 상태메세지가 없어요 !</p>
					</c:if>
					<c:if test="${dto.pr !=null }">
						<p style="font-size: 0.8em">${dto.pr}</p>
					</c:if>
				</div>

			</div>
			<div class="col-md-12 wrap-about pl-md-5 ftco-animate py-5"
				style="display: block;">
				<div class="heading-section">
					<span class="badge badge-info">내소개</span>
					<c:if test="${dto.about_me ==null }">
						<p style="text-align: center;">입력된 소개글이 없어요 !</p>
					</c:if>
					<c:if test="${dto.about_me !=null }">
						<p>${dto.about_me }</p>
					</c:if>

				</div>

			</div>

			<div class="col-md-12 wrap-about pl-md-5 ftco-animate py-5">
				<span class="badge badge-info">어필용사진</span> <span
					class="btn btn-success offset-9" id="addAppealImg">+</span>
				<form id="frm" method="post" enctype="multipart/form-data"
					action="<c:url value='/insertAppealImg.do'/>">
					<input type="file" id="gdsImg" name="appeal" style="display: none;" />
				</form>
			</div>

			<c:if test="${empty appealList}" var="appealResult">
				<div class="offset-md-5">&nbsp;등록된 사진이 없어요!</div>
			</c:if>
			<c:if test="${not appealResult}">
				<c:forEach var="item" items="${appealList }" varStatus="loop">

					<div class="offset-1 pt-5">
						<div class="imageText">
							<img id="appeal_img${loop.index }"
								src="<c:url value="/images/${dto.id}/${item['IMG']}"/>"
								alt="Raised circle image" class="img-fluid shadow-lg"
								style="width: 200px; height: 200px;">
							<div class="btn">
								<a href="javascript:isDelete(${item['APPEALNO']});">삭제</a>
							</div>

						</div>
					</div>
				</c:forEach>
			</c:if>






			<div class="col-md-12 wrap-about pl-md-5 ftco-animate py-5"
				style="display: block;">
				<hr />
				<span class="badge badge-info">가입한 모임</span>
			</div>
		</div>
		<div class="col-lg-12 pt-3">
			<div class="row">
				<div class="col-md-12">
					<div class="book-wrap book-wrap-2 d-md-flex">
						<div class="img img-2 d-flex justify-content-end"
							style="background-image: url(images/rnjsrlwn2/dog-1.jpg);">
							<div class="in-text">
								<a href="#"
									class="icon d-flex align-items-center justify-content-center"
									data-toggle="tooltip" data-placement="left" title="좋아요"> <span
									class="flaticon-heart-1"></span>
								</a> <a href="#"
									class="icon d-flex align-items-center justify-content-center"
									data-toggle="tooltip" data-placement="left" title="신고하기"> <span
									class="fa fa-paper-plane"></span>
								</a>

							</div>
						</div>
						<div class="text p-4">
							<p class="mb-2">
								<span class="price">밴드</span>
							</p>
							<h2>
								<a href="#">T-rex</a>
							</h2>
							<span class="position">모임장:권기주</span>
							<p>
								안녕하세요 밴드<br /> 모임입니다<br /> 모집중
							</p>
							<div class="text-right" style="margin-top: 50px">
								<input type="button" class="btn btn-warning" value="모임보기" />
							</div>
						</div>

					</div>

				</div>


			</div>
		</div>
	</div>

</section>
<section class="ftco-section ftco-no-pt" id="checkInfoPwd"
	style="display: none;">

	<div class="container-fluid px-md-12  pt-2 ">


		<div class="row justify-content-between">

			<div class="col-md-8 order-md-last">

				<div class="row">

					<div class="col-md-6 text-center">
						<div class="jumbotron">
							<h1>개인정보 수정</h1>

						</div>

					</div>
					<div class="d-md-flex justify-content-end mb-md-0 mb-3"></div>
				</div>
			</div>

			<div class="col-md-4 d-flex"></div>
		</div>
	</div>
	<div class="container-fluid px-md-12">

		<div class="row justify-content-between">
			<div class="col-md-8 order-md-last">
				<div class="row">

					<div class="col-md-6">

						<div class="row no-gutters">
							<div class="col-md-12">
								<div class="contact-wrap w-100 p-md-5">
									<form id="infoPwdFrm">
										<div class="row">

											<div class="col-md-12">
												<div class="form-group">
													<span class="badge text-center">비밀번호 확인</span> <input
														type="password" class="form-control" name="infoPwd"
														id="infoPwd" maxlength="15"> <span
														id="infoPwdDisplay" style="color: red; font-size: 0.8em"></span>
													<input type="hidden" id="infoPwdCheck" name="infoPwdCheck"
														value="no" />

												</div>
											</div>
											<div class="col-md-12 pt-3">
												<div class="form-group">
													<input id="infoCheckBtn" type="button" value="비밀번호확인"
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

			</div>

			<div class="col-md-4 d-flex"></div>
		</div>
	</div>
</section>
<section class="ftco-section ftco-no-pt" id="checkUpdatePwd"
	style="display: none;">

	<div class="container-fluid px-md-12  pt-2 ">


		<div class="row justify-content-between">

			<div class="col-md-8 order-md-last">

				<div class="row">

					<div class="col-md-6 text-center">
						<div class="jumbotron">
							<h1>비밀번호 수정</h1>

						</div>

					</div>
					<div class="d-md-flex justify-content-end mb-md-0 mb-3"></div>
				</div>
			</div>

			<div class="col-md-4 d-flex"></div>
		</div>
	</div>
	<div class="container-fluid px-md-12">

		<div class="row justify-content-between">
			<div class="col-md-8 order-md-last">
				<div class="row">

					<div class="col-md-6">

						<div class="row no-gutters">
							<div class="col-md-12">
								<div class="contact-wrap w-100 p-md-5">
									<form id="pwdUpdatefrm">
										<div class="row">

											<div class="col-md-12">
												<div class="form-group">
													<span class="badge text-center">원래비밀번호</span> <input
														type="password" class="form-control" name="updatePwd"
														id="updatePwd" maxlength="15"> <span
														id="updatePwdDisplay" style="color: red; font-size: 0.8em"></span>
													<input type="hidden" id="updatePwdCheck"
														name="updatePwdCheck" value="no" />

												</div>
											</div>

											<div class="col-md-12">
												<div class="form-group">
													<span class="badge text-center">새비밀번호</span> <input
														type="password" class="form-control" name="newPwd"
														id="newPwd" maxlength="15">

												</div>
											</div>

											<div class="col-md-12">
												<div class="form-group">
													<span class="badge text-center">새비밀번호 확인</span> <input
														type="password" class="form-control" name="newPwdCheck"
														id="newPwdCheck" maxlength="15"> <span
														id="newPwdDisplay" style="color: red; font-size: 0.8em"></span>

													<input type="hidden" id="newPwdCheckValue"
														name="newPwdCheckValue" value="no" />

												</div>
											</div>

											<div class="col-md-12 pt-3">
												<div class="form-group">
													<input id="pwdUpdateBtn" type="button" value="비밀번호수정"
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

			</div>

			<div class="col-md-4 d-flex"></div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-no-pt" id="checkwithdrawPwd"
	style="display: none;">

	<div class="container-fluid px-md-12  pt-2 ">


		<div class="row justify-content-between">

			<div class="col-md-8 order-md-last">

				<div class="row">

					<div class="col-md-6 text-center">
						<div class="jumbotron">
							<h1>회원탈퇴</h1>

						</div>

					</div>
					<div class="d-md-flex justify-content-end mb-md-0 mb-3"></div>
				</div>
			</div>

			<div class="col-md-4 d-flex"></div>
		</div>
	</div>
	<div class="container-fluid px-md-12">

		<div class="row justify-content-between">
			<div class="col-md-8 order-md-last">
				<div class="row">

					<div class="col-md-6">

						<div class="row no-gutters">
							<div class="col-md-12">
								<div class="contact-wrap w-100 p-md-5">
									<form id="withdrawFrm">
										<div class="row">
											<div class="col-md-12">
												<div>
													<span class="fa fa-chevron-right"
														style="color: green; display: inline-block;"></span> <span
														style="color: red;"> 탈퇴 후에는 <span
														style="text-decoration: underline;">모임</span> <span
														style="text-decoration: underline;">개인정보</span> <span
														style="text-decoration: underline;">게시판 </span>
														 <span
														style="text-decoration: underline;"> 공연</span> <span
														style="text-decoration: underline;">펀딩</span> 등 <span
														style="color: green;">${dto.id}</span> 아이디로 활동한 모든 기록이
														지워집니다.
													</span> <br /> <input type="checkbox" id="agree" /> 네, 모두 동의합니다.
												</div>
											</div>
											<div class="col-md-12 pt-5">
												<div class="form-group">
													<span class="badge text-center">비밀번호 확인</span> <input
														type="password" class="form-control" name="withdrawPwd"
														id="withdrawPwd"> <span id="withdrawPwdDisplay"
														style="color: red; font-size: 0.8em"></span> <input
														type="hidden" id="withdrawPwdCheck"
														name="withdrawPwdCheck" value="no" />
												</div>
											</div>

											<div class="col-md-12 pt-3">
												<div class="form-group">
													<input id="withdrawBtn" type="button" value="회원탈퇴"
														class="btn btn-success btn-block" disabled="disabled" style="cursor: not-allowed;">
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>

						</div>



					</div>

				</div>

			</div>

			<div class="col-md-4 d-flex"></div>
		</div>
	</div>
</section>
<section class="ftco-section ftco-no-pt" id="bookMarks"
	style="display: none;">

	<div class="container">

		<div class="col-lg-12 pt-3">
			<div class="row">
				<div class="col-md-12">
					<div class="book-wrap book-wrap-2 d-md-flex">
						<div class="img img-2 d-flex justify-content-end"
							style="background-image: url(images/rnjsrlwn2/dog-1.jpg);">
							<div class="in-text">
								<a href="#"
									class="icon d-flex align-items-center justify-content-center"
									data-toggle="tooltip" data-placement="left" title="좋아요"> <span
									class="flaticon-heart-1"></span>
								</a> <a href="#"
									class="icon d-flex align-items-center justify-content-center"
									data-toggle="tooltip" data-placement="left" title="신고하기"> <span
									class="fa fa-paper-plane"></span>
								</a>

							</div>
						</div>
						<div class="text p-4">
							<p class="mb-2">
								<span class="price">밴드</span>
							</p>
							<h2>
								<a href="#">T-rex</a>
							</h2>
							<span class="position">모임장:권기주</span>
							<p>
								안녕하세요 밴드<br /> 모임입니다<br /> 모집중
							</p>
							<div class="text-right" style="margin-top: 50px">
								<input type="button" class="btn btn-warning" value="모임보기" />
							</div>
						</div>

					</div>

				</div>


			</div>
		</div>

	</div>
</section>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	$('#update').click(function() {
		console.log('들어옴');
		$('.subMenu').slideToggle(1);

	});
	//개인정보변경 -개인정보변경
	$('#infoUpdate').click(function() {
		console.log('들어옴');
		$('#update').attr('class', 'nav-item active');
		$('#section').attr('style', 'display : none');
		$('#checkInfoPwd').attr('style', 'display : ');
		$('#checkUpdatePwd').attr('style', 'display : none');
		$('#checkwithdrawPwd').attr('style', 'display : none');
		$('#bookMarks').attr('style', 'display :none ');
		$('#bookMark').attr('class', 'nav-item');

	});

	//개인정보변경-비밀번호변경
	$('#pwdUpdate').click(function() {
		$('#infoPwd').val("");
		$('#infoPwdDisplay').html("");
		$('#update').attr('class', 'nav-item active');
		$('#section').attr('style', 'display : none');
		$('#checkUpdatePwd').attr('style', 'display : ');
		$('#checkInfoPwd').attr('style', 'display : none');
		$('#checkwithdrawPwd').attr('style', 'display : none');
		$('#bookMarks').attr('style', 'display :none ');
		$('#bookMark').attr('class', 'nav-item');
	});
	//개인정보변경-회원탈퇴
	$('#withdraw').click(function() {
		console.log('들어옴');
		$('#update').attr('class', 'nav-item active');
		$('#section').attr('style', 'display : none');
		$('#checkUpdatePwd').attr('style', 'display :none ');
		$('#checkInfoPwd').attr('style', 'display : none');
		$('#checkwithdrawPwd').attr('style', 'display : ');
		$('#bookMarks').attr('style', 'display :none ');
		$('#bookMark').attr('class', 'nav-item');
	});

	//즐겨찾기
	$('#bookMark').click(function() {
		console.log('들어옴');
		$('.subMenu').slideUp(1);
		$('#section').attr('style', 'display : none');
		$('#checkUpdatePwd').attr('style', 'display :none ');
		$('#checkInfoPwd').attr('style', 'display : none');
		$('#checkwithdrawPwd').attr('style', 'display :none ');
		$('#bookMarks').attr('style', 'display : ');
		$('#bookMark').attr('class', 'nav-item active');
		$('#update').attr('class', 'nav-item');

	});

	//어필사진 등록
	
	$('#addAppealImg').click(function() {
		if(${appealList.size()} ==6){
			alert('이미지는 6개까지만 등록 가능해요!');
			return;
		}
		$("input[name='appeal']").click();
	});
	
	$('#gdsImg').change(function(){
		console.log('들어와써');
		$('#frm').submit();
	});
	
	//어필사진 삭제
	function isDelete(appealNo) {
   if (confirm("정말로 삭제 하시겠습니까?")) {
	  	location.replace("<c:url value='/deleteAppealImg.do?appealNo="+appealNo+"'/>");
   }
}////////////isDelete

//개인정보수정 위한 비밀번호 확인 ajax
$('#infoPwd').blur(function() {
	console.log('포커스 잃었다');
	console.log($(this).val());
	$.ajax({
		url : "<c:url value="/infoPwdAjax.do"/>",
		type : 'post',
		dataType : 'json',
		data : "infoPwd=" + $('#infoPwd').val(),
		success : function(data) {
			$('#infoPwdDisplay').html(data.infoPwdDisplay);
			$('#infoPwdCheck').val(data.infoPwdCheck);
			
		}
	});
});

	$('#infoCheckBtn').click(function(){
		if($('#infoPwdCheck').val()=='no'){
			$('#infoPwd').focus();
			return;
		}
		
		$('#infoPwdFrm').prop({
			action : "<c:url value='/CheckPwdForInfoUpdate.do'/>",
			method : 'POST'
		});
		//폼객체의 submit()함수로 서버로 전송
		$('#infoPwdFrm').submit();
	});
	
	//비밀번호 수정위한 원래비밀번호 확인 ajax
	$('#updatePwd').blur(function() {
		
		$.ajax({
			url : "<c:url value="/updatePwdAjax.do"/>",
			type : 'post',
			dataType : 'json',
			data : "updatePwd=" + $('#updatePwd').val(),
			success : function(data) {
				$('#updatePwdDisplay').html(data.updatePwdDisplay);
				$('#updatePwdCheck').val(data.updatePwdCheck);
				
			}
		});
	});
	//비밀번호 수정위한 새비밀번호 확인
				$('#newPwdCheck').keyup(function() {
					console.log('키눌렀다');
					if($(this).val()==$('#newPwd').val()){
						$('#newPwdDisplay').html('새비밀번호가 일치해요');
						$('#newPwdCheckValue').val('yes');
					}else{
						$('#newPwdDisplay').html('새비밀번호가 일치하지않아요');
						$('#newPwdCheckValue').val('no');
					}
					
					
				});
	
				$('#newPwd').keyup(function() {
					console.log('키눌렀다');
					if($(this).val()==$('#newPwdCheck').val() && $('#newPwdCheck').val()!=''){
						$('#newPwdDisplay').html('새비밀번호가 일치해요');
						$('#newPwdCheckValue').val('yes');
					}else if($(this).val()!=$('#newPwdCheck').val() && $('#newPwdCheck').val()!=''){
						$('#newPwdDisplay').html('새비밀번호가 일치하지않아요');
						$('#newPwdCheckValue').val('no');
					}else if($(this).val().length<5){
						$('#newPwdCheckValue').val('no');
					}
					
					
				});
	//비밀번호 수정 페이지로 넘기기
				$('#pwdUpdateBtn').click(function(){
					if($('#updatePwdCheck').val()=='no'){
						$('#updatePwd').focus();
						return;
					}else if($('#newPwd').val()==''){
						$('#newPwd').focus();
						return;
					}else if($('#newPwdCheckValue').val()=='no'){
						$('#newPwdCheck').focus();
						return;
					}else if($('#newPwd').val().length<5){
						$('#newPwdDisplay').html('비밀번호는 5자 이상으로 입력해주세요');
						$('#newPwd').focus();
					}
					
					$('#pwdUpdatefrm').prop({
						action : "<c:url value='/UpdatePwd.do'/>",
						method : 'POST'
					});
					//폼객체의 submit()함수로 서버로 전송
					$('#pwdUpdatefrm').submit();
				});
	//회원탈퇴 체크박스
	$('#agree').click(function(){
		if(document.getElementById('agree').checked){
			$('#withdrawBtn').prop({
				disabled :'',
				style : 'cursor: pointer'
			});
		}else{
			$('#withdrawBtn').prop({
				disabled :'disabled',
				style : 'cursor: not-allowed'
			});
		}
		
	});
	//회원탈퇴 위한 비번확인
	$('#withdrawPwd').blur(function() {
		$.ajax({
			url : "<c:url value="/withdrawPwdAjax.do"/>",
			type : 'post',
			dataType : 'json',
			data : "withdrawPwd=" + $('#withdrawPwd').val(),
			success : function(data) {
				$('#withdrawPwdDisplay').html(data.withdrawPwdDisplay);
				$('#withdrawPwdCheck').val(data.withdrawPwdCheck);
				
			}
		});
	});
	
					$('#withdrawBtn').click(function(){
					if($('#withdrawPwdCheck').val()=='no'){
						$('#withdrawPwd').focus();
						return;
					}
					
					if(confirm('정말로 탈퇴 하시겠어요?')){
					
					$('#withdrawFrm').prop({
						action : "<c:url value='/Withdraw.do'/>",
						method : 'POST'
					});
					//폼객체의 submit()함수로 서버로 전송
					$('#withdrawFrm').submit();
					}
					
				});
	
		
	function Myquestion(){
		
		$('#MyquestionForm').submit();
		
	};

	
</script>
