<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link href="<c:url value="/resources/summernote/summernote-lite.min.css"/>" rel="stylesheet"> 
<script src="<c:url value="/resources/summernote/summernote-lite.min.js"/>"></script>
<script src="<c:url value="/resources/summernote/lang/summernote-ko-KR.js"/>"></script>



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
				<li class="nav-item"><a href="<c:url value='/town/AllOfMeeting.do'/>" class="nav-link">동네 둘러보기</a></li>
				<li class="nav-item active"><a href="<c:url value='/FreebbsList.do'/>" class="nav-link">게시글</a></li>
	            <!-- <li class="nav-item"><a href="<c:url value='/MeetingBBS.do'/>" class="nav-link">게시글</a></li> -->
				<li class="nav-item"><a href="<c:url value='/PerformanceList.do'/>" class="nav-link">공연</a></li>
				<li class="nav-item"><a href="<c:url value='/FundingList.do'/>" class="nav-link">펀딩</a></li>

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
				<div class="col-md-9" style="margin: auto; height: 200%">
					<form class="form-horizontal" method="post" action="#">

						<div class="form-group">
							<!-- 중첩 컬럼 사용 -->
							<div>
								<div class="row">
									<textarea id="summernote" name="content" style="width: 100%;" placeholder="내용을 입력하세요"></textarea>
								</div>
							</div>
						</div>
						
						<!-- 이미지 -->      
						<div class="form-group">
							<div class="offset-4 ">
								<button type="submit" name="submit" class="btn btn-success">등록</button>
								<button type="button" class="btn btn-success" onclick="history.go(-1)">취소</button>
							</div>
						</div>
		
					</form>
				</div>
			</div>

         </div>
        
   </section>
	
	
	
	

	
<script>



var toolbar = [
    // 글꼴 설정
    ['fontname', ['fontname']],
    // 글자 크기 설정
    ['fontsize', ['fontsize']],
    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
    // 글자색
    ['color', ['forecolor','color']],
    // 표만들기
    ['table', ['table']],
    // 글머리 기호, 번호매기기, 문단정렬
    ['para', ['ul', 'ol', 'paragraph']],
    // 줄간격
    ['height', ['height']],
    // 그림첨부, 링크만들기, 동영상첨부
    ['insert',['picture','link','video']],
    // 코드보기, 확대해서보기, 도움말
    ['view', ['codeview','fullscreen', 'help']]
  ];

var setting = {
    height : 300,
    minHeight : null,
    maxHeight : null,
    focus : true,
    lang : 'ko-KR',
    toolbar : toolbar,
    //콜백 함수
    callbacks : { 
    	onImageUpload : function(files, editor, welEditable) {
    // 파일 업로드(다중업로드를 위해 반복문 사용)
        for (var i = files.length - 1; i >= 0; i--) {
        	uploadSummernoteImageFile(files[i], this);
    		}
    	}
    }
 };
$('#summernote').summernote(setting);

function uploadSummernoteImageFile(file, el) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url :"<c:url value="/uploadSummernoteImageFile.do"/>",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			console.log()
			$(el).summernote('editor.insertImage', data.url);
		}
	});
}

</script>
	
	




    
    