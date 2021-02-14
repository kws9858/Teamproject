<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>

#image {
  width: 100%;
  height: 100%;
  text-align: center;
  position: relative;
  z-index: 1;
}
#image::after {
  width: 100%;
  height: 100%;
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
  opacity: 0.3!important; filter:alpha(opacity=30);

}

</style>


<!-- =========== 상단 메뉴 ===========
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
				<li class="nav-item"><a href="<c:url value='/town/AllOfMeeting.do'/>" class="nav-link" style="font-size:1.0em"> 동네 둘러보기</a></li>
				<li class="nav-item"><a href="<c:url value='/MeetingBBS.do'/>" class="nav-link" style="font-size:1.0em">게시글</a></li>
				<li class="nav-item"><a href="<c:url value='/PerformanceList.do'/>" class="nav-link" style="font-size:1.0em">공연</a></li>
				<li class="nav-item"><a href="<c:url value='/FundingList.do'/>" class="nav-link" style="font-size:1.0em">펀딩</a></li>
			</ul>
		</div>
	</div>
</nav>
 -->
<!-- =========== 상단 메뉴 END =========== -->


    <!-- 모임 상세보기 TOP -->
    
	<div id="image"
		 style="margin:0 auto; margin-top: 5%; height: 350px; width: 75%;  border: 1px solid gray;
		 background-repeat: no-repeat; background-size: cover; background-image: url('/app/images/${meetingDTO.operator }/${meetingDTO.meetingName }/${meetingDTO.bannerImg }');">
		<div class="overlay"></div>
	      
	      		<c:choose>
					<c:when test="${id eq meetingDTO['operator'] }">
						<div class="btn-group justify-content-right" style="text-align: right; float: right;">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								● ● ● <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href='<c:url value="/UpdateMeeting.do?meetingNo=${meetingDTO['meetingNo']}"/>'>모임 수정하기</a></li>
								<li><a href='<c:url value="/DeleteMeeting.do?meetingNo=${meetingDTO['meetingNo']}"/>'>모임 삭제하기</a></li>
								<c:if test="${endPerform }">
									<li><a href='<c:url value="/CreatePerformance.do?meetingNo=${meetingDTO['meetingNo']}"/>'>공연 만들기</a></li>
								</c:if>
								<c:if test="${empty dto }">
									<li data-toggle="modal" data-target="#myModal" style="color: #FFB8A8; cursor: pointer;">펀딩 신청하기</li>
								</c:if>
								<li data-toggle="modal" data-target="#joinMeetinglist" style="color: #FFB8A8; cursor: pointer;">가입신청목록</li>
							</ul>
						</div>
					</c:when>
					<c:when test="${id ne meetingDTO['operator']}">
						<div class="btn-group justify-content-right" style="text-align: right; float: right;">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								&nbsp <span class="caret"></span>
							</button>
						</div>
					</c:when>
				</c:choose>
	      
	      <a href="<c:url value='#'/>">
	      <div class="container" style="width: 90%;">
	     	
	        <div class="row no-gutters align-items-center justify-content-left">

	          <div class="col-md-12 ftco-animate mb-0 text-left">
	          	<div class="col-md-12" style="padding-top: 2%; max-width: initial;">
		          	<p class="breadcrumbs mb-0" style="padding: 1%; width: fit-content; background-color:rgba(239,239,239,0.7);">
		          		${category['maincategory'] } > ${category['subcategory'] }
		          	</p>
				</div>
	          	
	            <div class="col-md-10" style="padding-top: 2%; max-width: initial;">
					<h1 style="padding: 1%; width: fit-content; font-weight:800; background-color:rgba(239,239,239,0.7);">
						${meetingDTO['meetingName']}
					</h1>
				</div>
				
				<div class="col-md-10" style="padding-top: 2%; margin-bottom: 5%">
					<div class="form-group">
						<p style="padding: 1%; width: fit-content; background-color:rgba(239,239,239,0.7);">${meetingDTO['town']}</p>
					</div>
				</div>
								
	          </div>
	        </div>
	      </div>
	    </a>
	 </div>

    <!-- 모임 상세보기 TOP 끝 -->




<!-- ==========펀딩 신청 Modal============== -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      	<h4 class="modal-title" id="myModalLabel">펀딩 신청하기</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
      펀딩을 통해 모임 활동과 공연을 개최하는 데에 도움을 받을 수 있습니다.<br><br>
      펀딩은 모임 종료일로부터 7일 전에 종료됩니다.<br>
      펀딩은 신청 후에 수정 또는 삭제 불가합니다.<br>
      모임이 정지되었을 경우 또는 관리자에 의해 펀딩이 강제로 정지 또는 종료 될 수 있습니다.<br>
      정상 종료가 아닌 펀딩 종료시에는 펀딩으로 모인 금액 전액 환불처리 됩니다.<br>
      펀딩 신청 후 펀딩의 내용은 모임 상세페이지의 펀딩 탭에서 확인 가능합니다.<br>
      <br>여러분의 모임을 응원하는 소중한 팬들의 기대에 부응해주세요!<br>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        <a href='<c:url value="/CreateFunding.do?meetingNo=${meetingDTO['meetingNo'] }"/>'>
        	<button class="btn btn-primary" type="button" id="submitBtn" >신청 보내기</button>
        </a>
      </div>
    </div>
  </div>
</div>


<!-- ======================가입신청 리스트 모달================== -->
<div class="modal fade" id="joinMeetinglist" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">모임 가입신청 목록</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
		<c:forEach var="item" items="${thisMeetingRole}">
			<c:if test="${item.enabled eq 0 and not empty item.name }">
				선택 역할 : ${item.roleName } / 신청인 : ${item.name}
				<a href='<c:url value="/JoinMeetingReject.do?roleNo=${item.roleNo }"/>'>
					<button class="btn btn-default" type="button" id="submitBtn">거절하기</button>
				</a>  
				<a href='<c:url value="/JoinMeetingOk.do?roleNo=${item.roleNo }"/>'>
		        	<button class="btn btn-primary" type="button" id="submitBtn" style="padding: 0.5%;">수락하기</button>
		        </a><br>
			</c:if>
		</c:forEach>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>

</script>