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
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/th
    emes/base/jquery-ui.css">
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
	<!-- 
	<div style="height:5000px">
	</div>
	<div id="floatMenu">
		<div>
			모임채팅
		</div>
		<div>
		자유게시판 글쓰기
		</div>
		<div>
		chatbot
		</div>
	
		<div id="body">  -->
		
		<!--============== 플러팅 메뉴 버튼 ==================-->
		<div id="menu-circle" class="btn btn-raised">
			<div id="chat-overlay"></div>
			<i class="material-icons" style="margin-left:-9px">MENU</i>
		</div>
		<!--============== 플러팅 메뉴 버튼 끝 ==============-->
		
		<!--============== 세부 메뉴 ==============-->
		<div class="menu">
			<div class="menu-body">
				<h6 class="menu-exit pull-right">X</h6><br/>
				<div id="write-circle" class="btn btn-raised" style="margin-bottom:180px">
					<div id="chat-overlay"></div>
					<i class="material-icons" style="margin-left:-10px;">write</i>
				</div>
				<div id="chatbot-circle" class="btn btn-raised" style="margin-bottom:90px">
					<div id="chat-overlay"></div>
					<a href="<c:url value='/Meeting/Chat.do'/>"><i class="material-icons" style="margin-left:-15px;">chatbot</i></a>
				</div>
				<div id="chat-circle" class="btn btn-raised">
					<div id="chat-overlay"></div>
					<i class="material-icons" style="margin-left:-15px;">chatting</i>
				</div>
			</div>
		</div>
		<!--============== 세부 메뉴 끝 ==============-->
		
		<!--=============== 채팅방 ===============-->
		<div class="chat-box">
			<div class="chat-box-header">
				<span class="chat-list-toggle" style="float:left;margin-left:20px">
					<i class="material-icons" style="font-style:normal;font-weight:bold;">《</i>
				</span>
				<span class="title">
					<i class="material-icons">Chatting</i>
				</span>
				<span class="chat-box-toggle">
					<i class="material-icons">X&nbsp;</i>
				</span>
			</div>
			<div class="chat-box-body">
				<div class="chat-box-overlay"></div>
				<div class="chat-logs"></div>
				<!--chat-log -->
			</div>
			<div class="chat-input">
				<form>
					<input type="text" id="chat-input" placeholder="Send a message..." />
					<button type="submit" class="chat-submit" id="chat-submit">
						<i class="material-icons" style="margin-left:-20px">send</i>
					</button>
				</form>
			</div>
		</div>
		<!--=============== 채팅방 ===============-->
		
		
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
				
				
				/*============================================*/
				
				$(function() {
				  var INDEX = 0; 
				  $("#chat-submit").click(function(e) {
				    e.preventDefault();
				    var msg = $("#chat-input").val(); 
				    if(msg.trim() == ''){
				      return false;
				    }
				    generate_message(msg, 'self');
				    var buttons = [
				        {
				          name: 'Existing User',
				          value: 'existing'
				        },
				        {
				          name: 'New User',
				          value: 'new'
				        }
				      ];
				    setTimeout(function() {      
				      generate_message(msg, 'user');  
				    }, 1000)
				    
				  })
				  
				  function generate_message(msg, type) {
				    INDEX++;
				    var str="";
				    str += "<div id='cm-msg-"+INDEX+"' class=\"chat-msg "+type+"\">";
				    str += "          <span class=\"msg-avatar\">";
				    str += "            <img src=\" resources/images/image_1.jpg \">";
				    str += "          <\/span>";
				    str += "          <div class=\"cm-msg-text\">";
				    str += msg;
				    str += "          <\/div>";
				    str += "        <\/div>";
				    $(".chat-logs").append(str);
				    $("#cm-msg-"+INDEX).hide().fadeIn(300);
				    if(type == 'self'){
				     $("#chat-input").val(''); 
				    }    
				    $(".chat-logs").stop().animate({ scrollTop: $(".chat-logs")[0].scrollHeight}, 1000);    
				  }  
				  
				  function generate_button_message(msg, buttons){    
				    /* Buttons should be object array 
				      [
				        {
				          name: 'Existing User',
				          value: 'existing'
				        },
				        {
				          name: 'New User',
				          value: 'new'
				        }
				      ]
				    */
				    INDEX++;
				    var btn_obj = buttons.map(function(button) {
				       return  "              <li class=\"button\"><a href=\"javascript:;\" class=\"btn btn-primary chat-btn\" chat-value=\""+button.value+"\">"+button.name+"<\/a><\/li>";
				    }).join('');
				    var str="";
				    str += "<div id='cm-msg-"+INDEX+"' class=\"chat-msg user\">";
				    str += "          <span class=\"msg-avatar\">";
				    str += "            <img src=\"https:\/\/image.crisp.im\/avatar\/operator\/196af8cc-f6ad-4ef7-afd1-c45d5231387c\/240\/?1483361727745\">";
				    str += "          <\/span>";
				    str += "          <div class=\"cm-msg-text\">";
				    str += msg;
				    str += "          <\/div>";
				    str += "          <div class=\"cm-msg-button\">";
				    str += "            <ul>";   
				    str += btn_obj;
				    str += "            <\/ul>";
				    str += "          <\/div>";
				    str += "        <\/div>";
				    $(".chat-logs").append(str);
				    $("#cm-msg-"+INDEX).hide().fadeIn(300);   
				    $(".chat-logs").stop().animate({ scrollTop: $(".chat-logs")[0].scrollHeight}, 1000);
				    $("#chat-input").attr("disabled", true);
				  }
				  
				  $(document).delegate(".chat-btn", "click", function() {
				    var value = $(this).attr("chat-value");
				    var name = $(this).html();
				    $("#chat-input").attr("disabled", false);
				    generate_message(name, 'self');
				  })
				  
				  $("#menu-circle").click(function() {    
				    $("#menu-circle").toggle('scale');
				    $(".menu").toggle('scale');
				  })
				  
				  $(".chat-box-toggle").click(function() {
				    $(".chat-box").toggle('scale');
				    $(".menu").toggle('scale');
				  })
				  
				  $("#chat-circle").click(function() {
				    $(".chat-box").toggle('scale');
				    $(".menu").toggle('scale');
				  })
				 
				  $(".menu-exit").click(function() {
				    $(".menu").toggle('scale');
				    $("#menu-circle").toggle('scale');
				  })
				  
				})
				
				/*============================================*/
				
				
				
			
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
