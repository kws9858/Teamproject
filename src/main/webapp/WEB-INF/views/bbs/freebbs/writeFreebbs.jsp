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
				<li class="nav-item active"><a href="<c:url value='/FreebbsList.do'/>" class="nav-link">게시글</a></li>
				<li class="nav-item"><a href="<c:url value='/Perform.do'/>" class="nav-link">공연</a></li>
				<li class="nav-item"><a href="<c:url value="/funding/FundingList.do"/>" class="nav-link">펀딩</a></li>

			</ul>
		</div>
	</div>
</nav>
<!-- END nav -->



	<div class="container">
		<div class="row">

			<div class="offset-6 col-6" >
				<span id="hide" style="display: none; float:right;">
					<a href="<c:url value='/WriteFreebbs.do'/>"><span style="font-size: 0.8em">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시글 쓰기 &nbsp;</span></a>
				</span>
				
				<span style="float: right;">
					<a href="#"><span style="font-size: 1.0em;  " class="border-left">&nbsp; 모임 &nbsp;</span></a>
					<a href="#" id="freebbs"><span style="font-size: 1.0em; " class="border-left">&nbsp; 자유</span></a>
				</span>
				
			</div>
		</div>
	</div>
	
	
	<!-- =======================모임 게시판부분========================= -->
    <section class="ftco-section">
         <div class="container">
         

				
				
				
               <div class="row">
				<div class="col-md-12">
					<form class="form-horizontal" method="post" action="#">
						<div class="toolbar">
      <button id="print">Print</button>
      <button id="undo">Undo</button>
      <button id="redo">Redo</button>
      <select id="zoom">
        <option selected disabled>Zoom</option>
        <option>50%</option>
        <option>75%</option>
        <option>90%</option>
        <option>100%</option>
        <option>125%</option>
        <option>150%</option>
        <option>200%</option>
      </select>
      <select id="fontname">
        <option selected disabled>Font</option>
        <option>Arial</option>
        <option>Comic Sans MS</option>
        <option>Courier New</option>
        <option>Georgia</option>
        <option>Impact</option>
        <option>Lucida Grande</option>
        <option>Times New Roman</option>
        <option>Verdana</option>
      </select>
      <select id="fontsize">
        <option selected disabled>Size</option>
        <option value="1">8px</option>
        <option value="2">9px</option>
        <option value="3">10px</option>
        <option value="4">11px</option>
        <option value="5">12px</option>
        <option value="6">14px</option>
        <option value="7">18px</option>
        <option value="8">24px</option>
        <option value="9">30px</option>
        <option value="10">36px</option>
      </select>
      <select id="hilitecolor" title="Background color">
        <option selected disabled>Highlight</option>
        <option value="white">None</option>
        <option value="red">Red</option>
        <option value="yellow">Yellow</option>
        <option value="green">Green</option>
        <option value="blue">Blue</option>
        <option value="grey">Grey</option>
        <option value="purple">Purple</option>
        <option value="orange">Orange</option>
      </select>
      <select id="forecolor" title="Color">
        <option selected disabled>Color</option>
        <option value="black">Black</option>
        <option value="white">White</option>
        <option value="red">Red</option>
        <option value="yellow">Yellow</option>
        <option value="green">Green</option>
        <option value="blue">Blue</option>
        <option value="#ccc">Grey</option>
        <option value="purple">Purple</option>
        <option value="orange">Orange</option>
      </select>
      <button id="bold">B</button>
      <button id="italic">I</button>
      <button id="underline">U</button>
 
  </div>
						<div class="form-group">
							<!-- 중첩 컬럼 사용 -->
							<div>
								<div class="row">
									<div>
										<textarea class="form-control" name="content" rows="20" cols="200"
											placeholder="내용 입력하세요" id="page" contenteditable="true"></textarea>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 이미지 -->      
						<div style="text-align: right;">
							<div>
								<input type="button" id="target_img" value="사진선택"
									class="btn btn-success" />
								<button type="submit" class="btn btn-primary">등록</button>
							</div>
						</div>
		
					</form>
				</div>
			</div>

            </div>
        
   </section>
	
	
	
	
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
    <script type="text/javascript">
		$('#freebbs').click(function() {
			
			if($('#hide').css('display') == 'none'){
				$('#hide').show("slide");
				$('#freebbs').css('backgroundColor','');
			}
			else{
				$('#hide').hide("slide");
				$('#freebbs').css('backgroundColor','');
			}

		})
		
		
		  $( function() {
			    var page = $( "#page" );
			    var basicControls = [ "#print", "#bold", "#italic", "#undo", "#redo" ];
			    var valueControls = [ "#fontsize", "#forecolor", "#hilitecolor", "#backcolor", "fontname" ];
			 
			    $( "#print" ).button({
			      "icon": "ui-icon-print",
			      "showLabel": false
			    });
			    $( "#redo" ).button({
			      "icon": "ui-icon-arrowreturnthick-1-e",
			      "showLabel": false
			    });
			    $( "#undo" ).button({
			      "icon": "ui-icon-arrowreturnthick-1-w",
			      "showLabel": false
			    });
			 
			    $( ".toolbar" ).controlgroup();
			    $( "#zoom" ).on( "selectmenuchange", function() {
			      page.css({ "zoom": $( this ).val() });
			    })
			    $( basicControls.concat( valueControls ).join( ", " ) ).on( "click change selectmenuchange",
			      function() {
			        document.execCommand(
			          this.id,
			          false,
			          $( this ).val()
			        );
			      } );
			    $( "form" ).on( "submit", function( event ) {
			      event.preventDefault();
			    });
			} );
	</script>
	
	




    
    