<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css"
>
<link
	href="${ pageContext.request.contextPath }/assets/css/project1.css"
	rel="stylesheet" type="text/css"
>
<link href="${ pageContext.request.contextPath }/assets/css/aside.css"
	rel="stylesheet" type="text/css"
>
<link
	href="${ pageContext.request.contextPath }/assets/css/ownerMain.css"
	rel="stylesheet" type="text/css"
>

<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<!-- 헤더/네비 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>

		<!-- aside -->
		<c:import url="/WEB-INF/views/includes/ownerPageAside.jsp"></c:import>
		<div id="wrap2">
			<div class="head2">
				<h2>메뉴관리</h2>
			</div>
			<hr>
			<div class="head2">
				<div class="s-listpo">
					<select id="shop" name="shop">
						<option value="shop1">샐러디 낙성대점</option>
						<option value="shop2">샐러디 신림점</option>
						<option value="shop3">샐러디 봉천점</option>
						<option value="shop-add">+매장추가+</option>
					</select>
				</div>
			</div>
			<div class="s-listpo">
				<h3>샐러디 낙성대점</h3>
			</div>
			<table class="type01">
				<caption>
					<b>메뉴 리스트</b>
				</caption>
				<thead>
					<tr>
						<th>메뉴 이미지</th>
						<th>메뉴 이름</th>
						<th>채식 종류</th>
						<th>메뉴 가격</th>
						<th>편집</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<img alt="이미지" src="${ pageContext.request.contextPath }/assets/imges/단호박두부(비건).png">
						</td>
						<td>단호박두부</td>
						<td>
							<img alt="" src="${ pageContext.request.contextPath }/assets/imges/비건.png">
						</td>
						<td>7800</td>
						<td>
							<a href="test.html">[수정]</a>, <a href="test.html">[삭제]</a>
						</td>
					</tr>

					<tr>
						<td>
							<img alt="이미지" src="${ pageContext.request.contextPath }/assets/imges/리코타치즈(락토).png">
						</td>
						<td>리코타치즈</td>
						<td>
							<img alt="" src="${ pageContext.request.contextPath }/assets/imges/락토.png">
						</td>
						<td>7800</td>
						<td>
							<a href="test.html">[수정]</a>, <a href="test.html">[삭제]</a>
						</td>
					</tr>

					<tr>
						<td>
							<img alt="이미지" src="${ pageContext.request.contextPath }/assets/imges/연어(페스코).png">
						</td>
						<td>연어</td>
						<td>
							<img alt=""
								src="${ pageContext.request.contextPath }/assets/imges/페스코.png"
							>
						</td>
						<td>7800</td>
						<td>
							<a href="test.html">[수정]</a>, <a href="test.html">[삭제]</a>
						</td>
					</tr>

				</tbody>
			</table>
			<div class="button-area m-listpo">
				
						<span class="orange">
							<button>메뉴 추가</button>
						</span>
			</div>

	
		</div>
	</div>

	
</body>
</html>