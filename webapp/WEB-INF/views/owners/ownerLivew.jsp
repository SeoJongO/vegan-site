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
				<h2>리뷰관리</h2>
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

			<div class="s-listpo">

				<table class="type01">
					<tr>
						<td>별점</td>
						<td>댓글수</td>
						<td>찜하기수</td>
					</tr>

					<tr>
						<td>★★★★★</td>
						<td>150개</td>
						<td>♥+300</td>
					</tr>
				</table>
			</div>
			<div class="contetnt">
			
				<div  class="s-listpo">
					<p>
						<b>리뷰 기간 검색</b>
					</p>
					<p>2019년 5월 10일 ~ 2021 8월 29일(145개)</p>
					<input type='date' name='userBirthday' />

					<input type='date' name='userBirthday' />
					<button>검색</button>
				</div>
				
				</div>
				<div class="s-listpo">
					<table class="type01">
						<caption style="text-align : center"><b>댓글 리스트</b></caption>
						<thead>
							<tr>
								<th>날짜</th>
								<th>별점</th>
								<th>닉네임</th>
								<th>사진</th>
								<th>내용</th>
								<th>답글 여부</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2021.08.29</td>
								<td>★★★★★</td>
								<td>청하</td>
								<td>
									<img alt="이미지"
										src="${ pageContext.request.contextPath }/assets/imges/리뷰디폴트.png"
									>
								</td>
								<td>개노맛</td>
								<td>
									<a href="main_test.css"><img alt="이미지"
										src="${ pageContext.request.contextPath }/assets/imges/작성아이콘.png"
									></a>
								</td>
							</tr>

							<tr>
								<td>2021.08.30</td>
								<td>★★★★★</td>
								<td>아이유</td>
								<td></td>
								<td>마시써용</td>
								<td>
									<a href="main_test.css">[수정]</a>
								</td>
							</tr>

							<tr>
								<td>2021.08.31</td>
								<td>★★★★★</td>
								<td>비비</td>
								<td>
									<img alt="이미지"
										src="${ pageContext.request.contextPath }/assets/imges/리뷰디폴트.png"
									>
								</td>
								<td>다이어트중최고의선택</td>
								<td>
									<a href="main_test.css">[수정]</a>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
			
		</div>
	</div>


</body>
</html>