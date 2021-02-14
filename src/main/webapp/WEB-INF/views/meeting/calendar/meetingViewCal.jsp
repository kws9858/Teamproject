<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		
	
	
	<style type="text/css">
	thead {
	
	    text-align: center;
	
	}
	
	thead td {
	
	    width: 100px;
	
	}
	
	#tbody td {
	
	    height: 150px;
	
	}
	
	#yearMonth {
	
	    font: bold;
	
	    font-size: 18px;
	
	}
	</style>
	    
	    
	    
  


		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container-fluid">
	    
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav m-auto">
	        	<li class="nav-item"><a href="<c:url value='/town/AllOfMeeting.do'/>" class="nav-link">동네 둘러보기</a></li>
	            <li class="nav-item"><a href="<c:url value='/MeetingBBS.do'/>" class="nav-link">게시글</a></li>
				<li class="nav-item"><a href="<c:url value='/PerformanceList.do'/>" class="nav-link">공연</a></li>
				<li class="nav-item"><a href="<c:url value='/FundingList.do'/>" class="nav-link">펀딩</a></li>
	        	
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <!-- 모임 상세보기 TOP -->
    <a href=<c:url value='/MeetingView.do'/>><section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_5.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div style="background-color: pink" class="row no-gutters slider-text align-items-center justify-content-center">
         <img alt="image" style="height: 300px; width: 1110px;" src="resources/images/book-2.jpg">
        </div>
      </div>
    </section>
    </a>
    <!-- 모임 상세보기 TOP 끝 -->
    
    
    <!-- =======================모임 카테고리(소개,일정,게시글,채팅)=========================== -->
	<section class="ftco-section ftco-no-pt mt-5 mt-md-0">					
    	<div class="container">
    		<div class="row">
    			<div class="col-md-3 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<a href=<c:url value='/MeetingViewBBS.do'/>><span class="flaticon-fantasy"></span></a>
	    					</div>
    					</div>
    					<h2><a href=<c:url value='/MeetingViewBBS.do'/>>게시글</a></h2>
    					
    				</div>
    			</div>
    			<div class="col-md-3 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<a href=<c:url value='/MeetingViewCon.do'/>><span class="flaticon-heart"></span></a>
	    					</div>
    					</div>
    					<h2><a href=<c:url value='/MeetingViewCon.do'/>>공연</a></h2>
  						
    				</div>
    			</div>
    			<div class="col-md-3 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<a href=<c:url value='/MeetingViewFun.do'/>><span class="flaticon-model"></span></a>
	    					</div>
    					</div>
    					<h2><a href=<c:url value='/MeetingViewFun.do'/>>펀딩</a></h2>
  						
    				</div>
    			</div>
    			<div class="col-md-3 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    					<div class="icon-wrap">
	    					<div class="icon d-flex align-items-center justify-content-center" style="background-color: #95adbe">
	    						<a href=<c:url value='/MeetingViewCal.do'/>><span class="flaticon-history"></span></a>
	    					</div>
    					</div>
    					<h2><a href=<c:url value='/MeetingViewCal.do'/>>일정</a></h2>
  					
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
    <!-- =======================모임 카테고리(소개,일정,게시글,채팅)끝=========================== -->
    
    
    
    <!-- =======================일정 부분========================= -->
    <a href="<c:url value='/coding.do'/>">캘린더 coding.jsp 테스트</a>
    <section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center" style="margin-top: 50px;">
               			<input type="hidden" id="chk" value="0" />
    <input type="hidden" id="calendarId" value="${calendarId}" />
    <table class="table table-bordered">
        <thead id='thead'>
            <tr>
                <td colspan="7">
                    <button type='button' class='btn btn-sm btn-warning'
                        id='moveFastPre' onclick="moveFastMonthPre()">«</button> 
                    <button type='button' class='btn btn-sm btn-warning' id='movePre'
                        onclick="moveMonthPre()">‹</button>    <span
                    id='yearMonth'></span>   
                    <button type='button' class='btn btn-sm btn-warning' id='moveNext'
                        onclick="moveMonthNext()">›</button>  
                    <button type='button' class='btn btn-sm btn-warning'
                        id='moveFastNext' onclick="moveFastMonthNext()">»</button>
                    <div style="text-align: right;">
                        <span>${title}</span> <input class='btn btn-sm btn-info'
                            type="button" value="주" onclick='tabWeek()' /> <input
                            class='btn btn-sm btn-info' type="button" value="월"
                            onclick='tabMonth()' /> <input class='btn btn-sm btn-info'
                            type="button" value="목록" onclick='location.href="./coding.do"' />
                    </div>
                </td>
            </tr>
            <tr>
                <td>일<span class='week'></span></td>
                <td>월<span class='week'></span></td>
                <td>화<span class='week'></span></td>
                <td>수<span class='week'></span></td>
                <td>목<span class='week'></span></td>
                <td>금<span class='week'></span></td>
                <td>토<span class='week'></span></td>
            </tr>
        </thead>
        <tbody id='tbody'></tbody>
    </table>
    <!-- 일정 생성 modal -->
    <div class="modal fade" id="schduleForm" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title">일정등록</h4>
                </div>
                <div class="modal-body">
                    <form class='form-margin40' role='form' action="#" method='post'
                        id='frmSchdule'>
                        <div class='form-group'>
                            <label>제목</label> <input type='text' class='form-control'
                                id='summary' name='summary'
                                placeholder="예: 오후 7시에 멕시코 음식점에서 저녁식사">
                        </div>
                        <div class='form-group'>
                            <label>시작시간</label> <input class='form-control' type="time"
                                id='startTime' name='startTime'>
                        </div>
                        <div class='form-group'>
                            <label>시작날짜</label> <input class='form-control startDate'
                                type="date" id='startDate' name='startDate' readonly="readonly">
                        </div>
                        <div class='form-group'>
                            <label>종료시간</label> <input class='form-control' type="time"
                                id='endTime' name='endTime'>
                        </div>
                        <div class='form-group'>
                            <label>종료날짜</label> <input class='form-control startDate'
                                type="date" id='endDate' name='endDate'>
                        </div>
                        <div class='form-group'>
                            <label>내용</label>
                            <textarea rows="7" class='form-control' id="description"
                                name='description'></textarea>
                        </div>
                        <div class='modal-footer'>
                            <input type="button" class='btn btn-sm btn-warning' value="확인"
                                onclick="calendarSchduleAdd()" /> <input type="reset"
                                class='btn btn-sm btn-warning' value="초기화" /> <input
                                type='button' class='btn btn-sm btn-warning'
                                data-dismiss='modal' value="취소" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- 일정 수정 modal -->
    <div class="modal fade" id="schduleFormModify" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title">일정수정</h4>
                </div>
                <div class="modal-body">
                    <form class='form-margin40' role='form' action="#" method='post'
                        id='frmSchduleModify'>
                        <div class='form-group'>
                            <label>제목</label> <input type='text' class='form-control'
                                id='modifySummary' name='summary'>
                        </div>
                        <div class='form-group'>
                            <label>내용</label>
                            <textarea rows="7" class='form-control' id="modifyDescription"
                                name='description'></textarea>
                        </div>
                        <input type="hidden" id="modifyEventId" name="eventId" /> <input
                            type="hidden" name="calendarId" value="${calendarId}" />
                        <div class='modal-footer'>
                            <input type="button" class='btn btn-sm btn-warning' value="확인"
                                onclick="modifyEvent()" /> <input type="reset"
                                class='btn btn-sm btn-warning' value="초기화" /> <input
                                type='button' class='btn btn-sm btn-warning'
                                data-dismiss='modal' value="취소" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
               	<form action="./calendarRemove.do" method="post" id="frmCalendarRemove">
        <table class="table table-bordered">
            <tr>
                <th><input type='checkbox' onclick='checkAllDel(this.checked)' />전체</th>
                <th>캘린더이름</th>
                <th>캘린더코드</th>
            </tr>
            <c:forEach items="${items}" var="item">
                <tr>
                    <td><input type='checkbox' name='chkVal' value="${item.id}" /></td>
                    <td><input type="hidden" name='summarys' value="${item.summary}" />
                        <a href="./schdule.do?calendarId=${item.id}&title=${item.summary}">${item.summary}</a>
                    </td>
                    <td>${item.id}</td>
                </tr>
            </c:forEach>
        </table>
    </form>
    <input type="button" class='btn btn-sm btn-warning' value="캘린더 생성"
        onclick="calendarAddForm()" />
    <input type="button" class='btn btn-sm btn-warning' value="캘린더 수정"
        onclick="calendarModifyForm()" />
    <input type="button" class='btn btn-sm btn-warning' value="캘린더 삭제"
        onclick="calendarRemove()" />
    <!-- 캘린더 생성 modal -->
    <div class="modal fade" id="calendarAddForm" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title">캘린더 생성</h4>
                </div>
                <div class="modal-body">
                    <!-- 캘린더 생성처리 form -->
                    <form action="./calendarAdd.do" method='post' id='frmCalendarAdd'>
                        <div class='form-group'>
                            <label>캘린더이름</label><input class='form-control' type="text"
                                name='summary' id='summary' />
                        </div>
                        <div class='modal-footer'>
                            <input type="button" class='btn btn-sm btn-warning' value="확인"
                                onclick="calendarAdd()" /> <input type="reset"
                                class='btn btn-sm btn-warning' value="초기화" /> <input
                                type='button' class='btn btn-sm btn-warning'
                                data-dismiss='modal' value="취소" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- 캘린더 수정 modal -->
    <div class="modal fade" id="calendarModifyForm" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title">캘린더 수정</h4>
                </div>
                <div class="modal-body">
                    <!-- 캘린더 생성처리 form -->
                    <form action="./calendarModify.do" method='post'
                        id='frmCalendarModify'>
                        <div class='form-group'>
                            <label>캘린더이름</label><input class='form-control' type="text"
                                name='summary' id='summaryModify' />
                        </div>
                        <input type="hidden" name="calendarId" id='calendarIdModify' />
                        <div class='modal-footer'>
                            <input type="button" class='btn btn-sm btn-warning' value="확인"
                                onclick="calendarModify()" /> <input type="reset"
                                class='btn btn-sm btn-warning' value="초기화" /> <input
                                type='button' class='btn btn-sm btn-warning'
                                data-dismiss='modal' value="취소" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>		
		         </div>
		    </div>
	</section>
				


  