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
				<li class="nav-item"><a href="<c:url value='/town/AllOfMeeting.do'/>" class="nav-link">동네 둘러보기</a></li>
	            <li class="nav-item active"><a href="<c:url value='/MeetingBBS.do'/>" class="nav-link">게시글</a></li>
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
				<span id="hide" style="display: none; float: right;"> </span> 
				<span style="float: right;"> 
					<a href="<c:url value="/MeetingBBS.do"/>" id="meeting"><span
						style="font-size: 1.0em;">&nbsp;모임&nbsp;</span></a>
					<a href="<c:url value='/FreebbsList.do'/>"><span
						style="font-size: 1.0em; font-weight: bold; color: black;" class="border-left">&nbsp; 자유</span></a>
					<a href="<c:url value='/WriteFreebbs.do'/>">
                        <button class="btn btn-primary" style="width: 100px; height: 50;">작성하기</button>
					</a>
				</span>
			</div>
		</div>
	</div>
	
    <!-- 배너 -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/banner11.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-0 text-center">
          	<p class="breadcrumbs mb-0" style="color: white;"><span class="mr-2"><a href="index.html">모이까 <i class="fa fa-chevron-right"></i></a></span> <span>게시글 <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">자유롭게 떠들어보시게들</h1>
          </div>
        </div>
      </div>
    </section>


<!-- =======================모임 게시판부분========================= -->
<section class="ftco-section ftco-degree-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 ftco-animate">
                <!-- ============= 게시글 하나 시작 ============== -->

                <div><!-- <div class="book-wrap"> -->
                	<!-- 모임 사진, 이름, 작성 날짜, 메뉴 -->
	                <div class="row" style="height: 70px; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px; ">
	                    <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
	                    <div class="col-md-10 icon d-flex align-items-center"><h2>작성자</h2></div>
	                        
	                    <!-- 드롭다운 -->
	                    <div class="col-md-1 btn btn-default dropdown-toggle" style="padding-left: 0px; padding-right: 0px; margin-top: 10px;" type="button" id="menu" data-toggle="dropdown">
	                        <img alt="image" src="resources/images/menuIcon.png" style="height: 30px;">  
	                    </div>
	                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>신고하기</h4></a></li>
	                        <li role="presentation" class="dropdown-divider" style="height: 3px; margin-top: 5px; margin-bottom: 5px;"></li>
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>수정하기</h4></a></li>
	                        <li role="presentation" class="dropdown-divider" style="height: 3px; margin-top: 5px; margin-bottom: 5px;"></li>
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>삭제하기</h4></a></li>
	                    </ul>
	                </div>
	                
	                <!-- 이미지 -->
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" data-interval="false">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleCaptions" data-slide-to="0"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" style="max-width:100%; height: 100%;">
                            <div class="carousel-item active">
                                <img alt="image" src="resources/images/image_2.jpg" style="width:100%; height: 100%;">
                            </div>
                            <div class="carousel-item">
                                <img alt="image" src="resources/images/image_3.jpg" style="width:100%; height: 100%;">
                            </div>
                            <div class="carousel-item">
                                <img alt="image" src="resources/images/image_5.jpg" style="width:100%; height: 100%;">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                            
                    <div class="text px-4 py-4 w-100">
                        <!-- 글자 -->
                        <div style="margin-top: 10px;">
                            <div class="d-flex align-items-center">
                                <div>
                                    게시글내용입니다게시글내용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입용입니다게시글내용입용입니다용입니다게시용입니다게시용입니다게시
                                    용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용
                                    입니다게시용입니다
                                </div>
                            </div>  
                        </div>
                
                        <!-- 작성 날짜 -->
                        <div class="col-md-12" style="padding-left: 0px; padding-right: 0px; text-align: right; padding-top: 10px; color: gray;">2020-12-25</div>
						
						<!-- 좋아요/댓글수 -->
                        <img alt="image" id="likeImgOff" style="height: 25px; width: 25px;" src="resources/images/heartOff.png" >123
                        <img alt="image" id="commentImg" style="height: 25px; width: 25px;" src="resources/images/comment.png">1517
						
                            
                        <!-- 댓글 입력창 -->
                        <div style="margin-top: 20px;">
                            <div class="commentinput" style="align-items: center">
                                <div class="input-group align-items-center">
                                    <div class="icon d-flex align-items-center" style="color: orange; width: 32px; height: 32px;"></div>
                                    <input class="form-control" type="text" style="height:1.3em;  width: auto; margin-left: 10px; padding-top: 10px; color: gray;" placeholder="댓글을 입력하세요" onfocus="this.placeholder=''" onblur="this.placeholder='댓글을 입력하세요'">
                                    <div class="commentButton" style="text-align:center; padding-top:13px; height: 52px; width: 60px; color: #FF7A5C">게시</div>
                                </div>
                            </div>
                                
                            <!-- 댓글 더보기 클릭버튼 -->
                            <div class="commentview col-md-5 col-md-offset-5" style="margin-top: 10px;">    -----댓글 더보기(5)</div>
                                
                            <!-- 댓글 부분 -->
                            <div class="commentall" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; padding-left: 0px; padding-right: 0px;">
                                <!-- 댓글 창 -->
                                <div class="text" style="margin-top: 20px;">
                                    <div class="comment" style="align-items: center">
                                        <div class="input-group align-items-center">
                                            <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
                                            <div class="comments col-md-9 col-md-offset-1" style="margin-left: 20px;">와 정말 대단해요오오오오오오</div>
                                            <img alt="image" id="commentLikeImgOff" style="height: 20px; width: 20px; margin-left: 7px;" src="resources/images/heartOff.png" >123
                                        </div>
                                    </div>
                                </div>

                                <!-- 대댓글 창 -->
                                <div class="text" style="margin-top: 20px; margin-left: 32px;">
                                    <div class="comment" style="align-items: center">
                                        <div class="input-group align-items-center">
                                            <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
                                            <div class="comments col-md-9 col-md-offset-1" style="margin-left: 20px;">와 정말 대단해요오오오오오오</div>
                                            <img alt="image" id="commentLikeImgOff2" style="height: 20px; width: 20px;" src="resources/images/heartOff.png" >123
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
                <hr/>
                <!-- ============= 게시글 하나 끝 ============== -->
                
                
                <!-- ============= 게시글 2 시작 ============== -->
                <div><!-- <div class="book-wrap"> -->
	                <!-- 모임 사진, 이름, 작성 날짜, 메뉴 -->
	                <div class="row" style="height: 70px; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px; ">
	                    <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
	                    <div class="col-md-10 icon d-flex align-items-center"><h2>작성자</h2></div>
	                        
	                    <!-- 드롭다운 -->
	                    <div class="col-md-1 btn btn-default dropdown-toggle" style="padding-left: 0px; padding-right: 0px; margin-top: 10px;" type="button" id="menu" data-toggle="dropdown">
	                        <img alt="image" src="resources/images/menuIcon.png" style="height: 30px;">  
	                    </div>
	                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>신고하기</h4></a></li>
	                        <li role="presentation" class="dropdown-divider" style="height: 3px; margin-top: 5px; margin-bottom: 5px;"></li>
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>수정하기</h4></a></li>
	                        <li role="presentation" class="dropdown-divider" style="height: 3px; margin-top: 5px; margin-bottom: 5px;"></li>
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>삭제하기</h4></a></li>
	                    </ul>
	                </div>
                
                	<!-- 이미지 -->
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" data-interval="false">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleCaptions" data-slide-to="0"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" style="max-width:100%; height: 100%;">
                            <div class="carousel-item active">
                                <img alt="image" src="resources/images/image_2.jpg" style="width:100%; height: 100%;">
                            </div>
                            <div class="carousel-item">
                                <img alt="image" src="resources/images/image_3.jpg" style="width:100%; height: 100%;">
                            </div>
                            <div class="carousel-item">
                                <img alt="image" src="resources/images/image_5.jpg" style="width:100%; height: 100%;">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                            
                    <div class="text px-4 py-4 w-100">
                        <!-- 글자 -->
                        <div style="margin-top: 10px;">
                            <div class="d-flex align-items-center">
                                <div>
                                    게시글내용입니다게시글내용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입용입니다게시글내용입용입니다용입니다게시용입니다게시용입니다게시
                                    용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용
                                    입니다게시용입니다
                                </div>
                            </div>  
                        </div>
                
                        <!-- 작성 날짜 -->
                        <div class="col-md-12" style="padding-left: 0px; padding-right: 0px; text-align: right; padding-top: 10px; color: gray;">2020-12-25</div>
						
						<!-- 좋아요/댓글수 -->
                        <img alt="image" id="likeImgOff" style="height: 25px; width: 25px;" src="resources/images/heartOff.png" >123
                        <img alt="image" id="commentImg" style="height: 25px; width: 25px;" src="resources/images/comment.png">1517
						
                            
                        <!-- 댓글 입력창 -->
                        <div style="margin-top: 20px;">
                            <div class="commentinput" style="align-items: center">
                                <div class="input-group align-items-center">
                                    <div class="icon d-flex align-items-center" style="color: orange; width: 32px; height: 32px;"></div>
                                    <input class="form-control" type="text" style="height:1.3em;  width: auto; margin-left: 10px; padding-top: 10px; color: gray;" placeholder="댓글을 입력하세요" onfocus="this.placeholder=''" onblur="this.placeholder='댓글을 입력하세요'">
                                    <div class="commentButton" style="text-align:center; padding-top:13px; height: 52px; width: 60px; color: #FF7A5C">게시</div>
                                </div>
                            </div>
                                
                            <!-- 댓글 더보기 클릭버튼 -->
                            <div class="commentview col-md-5 col-md-offset-5" style="margin-top: 10px;">    -----댓글 더보기(5)</div>
                                
                            <!-- 댓글 부분 -->
                            <div class="commentall" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; padding-left: 0px; padding-right: 0px;">
                                <!-- 댓글 창 -->
                                <div class="text" style="margin-top: 20px;">
                                    <div class="comment" style="align-items: center">
                                        <div class="input-group align-items-center">
                                            <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
                                            <div class="comments col-md-9 col-md-offset-1" style="margin-left: 20px;">와 정말 대단해요오오오오오오</div>
                                            <img alt="image" id="commentLikeImgOff" style="height: 20px; width: 20px; margin-left: 7px;" src="resources/images/heartOff.png" >123
                                        </div>
                                    </div>
                                </div>

                                <!-- 대댓글 창 -->
                                <div class="text" style="margin-top: 20px; margin-left: 32px;">
                                    <div class="comment" style="align-items: center">
                                        <div class="input-group align-items-center">
                                            <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
                                            <div class="comments col-md-9 col-md-offset-1" style="margin-left: 20px;">와 정말 대단해요오오오오오오</div>
                                            <img alt="image" id="commentLikeImgOff2" style="height: 20px; width: 20px;" src="resources/images/heartOff.png" >123
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
                <hr/>
                <!-- ============= 게시글 2 끝 ============== -->
                
                
                <!-- ============= 게시글 3 시작 ============== -->
                <div><!-- <div class="book-wrap"> -->
	                <!-- 모임 사진, 이름, 작성 날짜, 메뉴 -->
	                <div class="row" style="height: 70px; margin-right: 0px; margin-left: 0px; padding-left: 0px; padding-right: 0px; ">
	                    <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
	                    <div class="col-md-10 icon d-flex align-items-center"><h2>작성자</h2></div>
	                        
	                    <!-- 드롭다운 -->
	                    <div class="col-md-1 btn btn-default dropdown-toggle" style="padding-left: 0px; padding-right: 0px; margin-top: 10px;" type="button" id="menu" data-toggle="dropdown">
	                        <img alt="image" src="resources/images/menuIcon.png" style="height: 30px;">  
	                    </div>
	                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>신고하기</h4></a></li>
	                        <li role="presentation" class="dropdown-divider" style="height: 3px; margin-top: 5px; margin-bottom: 5px;"></li>
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>수정하기</h4></a></li>
	                        <li role="presentation" class="dropdown-divider" style="height: 3px; margin-top: 5px; margin-bottom: 5px;"></li>
	                        <li role="presentation"  style="text-align: center;"><a role="menuitem" tabindex="-1" href="#"><h4>삭제하기</h4></a></li>
	                    </ul>
	                </div>
      
      				<!-- 이미지 -->
      				
                    <div class="text px-4 py-4 w-100">
                        <!-- 글자 -->
                        <div style="margin-top: 10px;">
                            <div class="d-flex align-items-center">
                                <div>
                                    게시글내용입니다게시글내용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입용입니다게시글내용입용입니다용입니다게시용입니다게시용입니다게시
                                    용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용입니다게시용
                                    입니다게시용입니다
                                </div>
                            </div>  
                        </div>
                
                        <!-- 작성 날짜 -->
                        <div class="col-md-12" style="padding-left: 0px; padding-right: 0px; text-align: right; padding-top: 10px; color: gray;">2020-12-25</div>
						
						<!-- 좋아요/댓글수 -->
                        <img alt="image" id="likeImgOff" style="height: 25px; width: 25px;" src="resources/images/heartOff.png" >123
                        <img alt="image" id="commentImg" style="height: 25px; width: 25px;" src="resources/images/comment.png">1517
                            
                        <!-- 댓글 입력창 -->
                        <div style="margin-top: 20px;">
                            <div class="commentinput" style="align-items: center">
                                <div class="input-group align-items-center">
                                    <div class="icon d-flex align-items-center" style="color: orange; width: 32px; height: 32px;"></div>
                                    <input class="form-control" type="text" style="height:1.3em;  width: auto; margin-left: 10px; padding-top: 10px; color: gray;" placeholder="댓글을 입력하세요" onfocus="this.placeholder=''" onblur="this.placeholder='댓글을 입력하세요'">
                                    <div class="commentButton" style="text-align:center; padding-top:13px; height: 52px; width: 60px; color: #FF7A5C">게시</div>
                                </div>
                            </div>
                                
                            <!-- 댓글 더보기 클릭버튼 -->
                            <div class="commentview col-md-5 col-md-offset-5" style="margin-top: 10px;">    -----댓글 더보기(5)</div>
                                
                            <!-- 댓글 부분 -->
                            <div class="commentall" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; padding-left: 0px; padding-right: 0px;">
                                <!-- 댓글 창 -->
                                <div class="text" style="margin-top: 20px;">
                                    <div class="comment" style="align-items: center">
                                        <div class="input-group align-items-center">
                                            <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
                                            <div class="comments col-md-9 col-md-offset-1" style="margin-left: 20px;">와 정말 대단해요오오오오오오</div>
                                            <img alt="image" id="commentLikeImgOff" style="height: 20px; width: 20px; margin-left: 7px;" src="resources/images/heartOff.png" >123
                                        </div>
                                    </div>
                                </div>

                                <!-- 대댓글 창 -->
                                <div class="text" style="margin-top: 20px; margin-left: 32px;">
                                    <div class="comment" style="align-items: center">
                                        <div class="input-group align-items-center">
                                            <div class="icon d-flex align-items-center" style="width: 32px; height: 32px;"></div>
                                            <div class="comments col-md-9 col-md-offset-1" style="margin-left: 20px;">와 정말 대단해요오오오오오오</div>
                                            <img alt="image" id="commentLikeImgOff2" style="height: 20px; width: 20px;" src="resources/images/heartOff.png" >123
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
                <hr/>
                <!-- ============= 게시글 3 끝 ============== -->

    		
		    	<div class="row mt-5">
		          <div class="col">
		            <div class="block-27" style="text-align: center;">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
		        </div>
			</div> <!--.col-lg-9 ftco-animate -->

            <div class="col-lg-3 sidebar pl-lg-3 ftco-animate">
                <div class="sidebar-box">
                    <form action="#" class="search-form">
                        <div class="form-group">
                            <span class="fa fa-search"></span>
                            <input type="text" class="form-control" placeholder="검색어를 입력하세요">
                        </div>
                    </form>
                </div>
                <div class="sidebar-box ftco-animate">
                    <div class="categories">
                    	<h3>인기 키워드</h3>
						<ul>
							<li><a href="#">언텍트 <span class="fa fa-chevron-right"></span></a></li>
							<li><a href="#">확찐자 <span class="fa fa-chevron-right"></span></a></li>
							<li><a href="#">코로나 <span class="fa fa-chevron-right"></span></a></li>
							<li><a href="#">드라마 추천 <span class="fa fa-chevron-right"></span></a></li>
							<li><a href="#">혼밥 레시피 <span class="fa fa-chevron-right"></span></a></li>
							<li><a href="#">배달 맛집 <span class="fa fa-chevron-right"></span></a></li>
							<li><a href="#">영화추천 <span class="fa fa-chevron-right"></span></a></li>
							<li><a href="#">취업 <span class="fa fa-chevron-right"></span></a></li>
						</ul>
					</div>
				</div>

				<div class="sidebar-box ftco-animate">
					<h3>최고 모임 게시글</h3>
					<ul class="top">
						<li><a href="#">공연 이 할애비는 말이다.. </a></li>
						<li><a href="#">이제 곧 공연을 시작합니..</a></li>
						<li><a href="#">여러분 저희 드디어 1회..</a></li>
						<li><a href="#">단편영화 배우를 모집합..</a></li>
						<li><a href="#">두둥탁에서 인사드립니다..</a></li>
						<li><a href="#">21년 2월 동안 공연을 하..</a></li>
						<li><a href="#">녀러분 뎨뎡합니다. 팀..</a></li>
						<li><a href="#">아프지 말고 건강한 새해..</a></li>
						<li><a href="#">날씨 겁나 추워요 다들 따..</a></li>
						<li><a href="#">새해에는 코로나 없이 함꼐..</a></li>
						<li><a href="#">반갑습니다 새롭게 시작하..</a></li>
						<li><a href="#">블랙재킷입니다. 안녕하..</a></li>
					</ul>
                </div>
            </div>
		</div><!-- row -->
    </div><!-- container -->
</section> <!-- .section -->
    
    <!--=========================== 게시글 없을 때======================================

         <div class="container" style="margin-top: 100px;">
            <div class="row justify-content-center">
               <div class="col-md-10" style="margin-top: 100px; margin-bottom: 100px; text-align: center;">               
                        	게시글이 없어요
               </div>
            </div>
         </div>
		<hr>
  	=========================== 게시글 없을 때====================================== -->
	


	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<script src="resources/js/jquery.min.js"></script>
	
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
		
	

	    $(function(){
	        $('#likeImgOff').on({ 'click': function() { 
	           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
	   });
	    
	    
	    $('#commentImg').click(function(){
	       $('.commentall').toggle();
	       $('.commentinput').focus();
	       
	    });
	    
	    
	    
	    $(function(){
	        $('#likeImgOff2').on({ 'click': function() { 
	           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
	   });
	    
	    $(function(){
	        $('#likeImgOff3').on({ 'click': function() { 
	           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
	   });
	    
	    $(function(){
	        $('#commentLikeImgOff').on({ 'click': function() { 
	           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
	   });
	    
	    $(function(){
	        $('#commentLikeImgOff2').on({ 'click': function() { 
	           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
	   });
	    
	    $(function(){
	        $('#commentLikeImgOff3').on({ 'click': function() { 
	           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
	   });
	    
	    $(function(){
	        $('#commentLikeImgOff4').on({ 'click': function() { 
	           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
	   });
	    
	    $(function(){
	        $('#commentLikeImgOff5').on({ 'click': function() { 
	           var src = ($(this).attr('src') === 'resources/images/heartOff.png') ? 'resources/images/heartOn.png' : 'resources/images/heartOff.png'; $(this).attr('src', src); } });
	   });
	    
	    
	    $('.commentall').hide();
	    
	    
	    $('.commentview').click(function(){
	       $('.commentall').toggle();
	       
	    });

  
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	




		

    
    
