<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		<div class="row">
			<div>
				<div style="margin-left: 4%">
					<p>
					<h2>주소검색</h2>
					</p>
				</div>




				<div class="col-xs-6">
					<div class="form-inline text-left">
						<input type="text" id="address" value="${address}"
							class="form-control form-inline" />
							 <input type="button" id="addressSearch" value="검색" class="btn btn-success" />
							 <input type="button" id="sendAddress" class="btn btn-primary text-right" value="확인"/>
					</div>
				</div>
				<div class="text-left"></div>




			</div>
		</div>
		<div id="addressTab">
			<hr/>
		</div>
	</div>






	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>
		$('#sendAddress').click(
				function() {
					opener.document.getElementsByName('addr')[0].value = $(
							'#address').val();

					opener.document.getElementsByName('addr')[1].value = $(
							'#address').val();
					window.close();

				});

		$("#addressSearch")
				.click(
						function() {

							$
									.ajax({
										url : 'https://dapi.kakao.com/v2/local/search/address.json?query='
												+ encodeURIComponent($(
														"#address").val()),
										type : 'GET',
										headers : {
											'Authorization' : 'KakaoAK 2b4f4d1814f7666b6933614cbc2fac01'
										},
										success : function(data) {
											console.log('들어ㅏ오누?');
											var table = "<table>";
											table += "<tr><th>번호</th><th style=\"padding-left:10%;\">주소</th></tr><hr/>"
											for (i = 0; i < data.documents.length; i++) {

												table += "<tr><td>"+(i+1)+"</td><td style=\"padding-left:10%;\"><a href=\"<c:url value='/SearchAddress.do?address="
														+ data.documents[i].address_name
														+ "'/>\">"
														+ data.documents[i].address_name
														+ "</a></td></tr>";
											}
											table += "</table>";

											console.log(table);

											$('#addressTab').html(table);

										},
										error : function(e) {
											console.log(e);
										}
									});
							$("#address").val("");

						});
	</script>
</body>
</html>