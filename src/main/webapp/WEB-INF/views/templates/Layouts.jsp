<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>모이까</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>">
    
    <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>">
    
    <link rel="stylesheet" href="<c:url value="/resources/css/flaticon.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    
    <!--
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	-->

  </head>
<body>
	<!--top부분 시작-->
	<tiles:insertAttribute name="top"/>
	<!--top부분 끝 -->
	
	<!--body부분 시작-->
	<tiles:insertAttribute name="body"/>
	
	<!--플로팅 메뉴 부분 시작-->
	
	<div style="height:5000px">
	</div>
	<div id="floatMenu">
		<div>
		모임 채팅
		</div>
		<div>
		자유게시판 글쓰기
		</div>
		<div>
		chatbot
		</div>
	</div>
	
	    <script>
			$(document).ready(function() {
			
				// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
				var floatPosition = parseInt($("#floatMenu").css('top'));
				// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
			
				$(window).scroll(function() {
					// 현재 스크롤 위치를 가져온다.
					var scrollTop = $(window).scrollTop();
					var newPosition = scrollTop + floatPosition + "px";
			
					/* 애니메이션 없이 바로 따라감
					 $("#floatMenu").css('top', newPosition);
					 */
			
					$("#floatMenu").stop().animate({
						"top" : newPosition
					}, 500);
			
				}).scroll();
			
			});
			
			$("#floatMenu").stop().animate({
				"top" : newPosition
			}, {
				'duration' : 500,
				'easing' : 'easeInOutCubic',
				'complete' : function() {
					console.log('이동 완료하였습니다.');
				}
			});
		</script>
	<!--플로팅 메뉴 부분 끝-->
	
	<!--body부분 끝 -->
	
	<!--footer부분 시작-->
	<tiles:insertAttribute name="footer"/>
	<!--footer부분 끝 -->
	
</body>
</html>
