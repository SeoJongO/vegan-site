<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>1단 레이아웃 샢플</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/ownerMain.css" rel="stylesheet" type="text/css">


</head>
<body>

	<div id="wrap">
		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>
		<!-- container -->
		<div id="container2">
			<div id="main-wrap" class="clearfix">
				<c:import url="/WEB-INF/views/includes/ownerPageAside.jsp"></c:import>
				<!-- //aside -->
				<!-- //메인 -->
				<div id="main">
					<!-- 페이지타이틀 -->
					<div id="page-title-wrap" class="clearfix">
						<h3 id="page-title">메뉴등록</h3>
						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/owners/NownerPage">가게관리</a></li>
							<li class="last"><a href="${pageContext.request.contextPath}/owners/NownerMlist">메뉴등록</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->
					<!-- 컨텐츠 -->
					<div id="content-wrap">
						<div id="wrap2">
							<h3>${ownerU.s_name}</h3>
							<form action="${pageContext.request.contextPath}/owners/menuInsert" method="post" enctype="multipart/form-data">
								<table class="main-table">
									<tr>
										<td></td>
										<td><input type="hidden" name="s_no" value="${ownerU.s_no}"></td>
									</tr>
									<tr>
										<td><b>메뉴이미지</b></td>

										<td><input type="file" name="file2" value=""></td>
									</tr>
									<tr>
										<td><label for="m_name"><b>메뉴 이름</b></label></td>
										<td><input type="text" id="menuName" name="m_name" value=""></td>
									</tr>
									<tr>
										<td><label for="m_price"><b>메뉴 가격</b></label></td>
										<td><input type="text" id="menuPrice" name="m_price" value=""></td>
									</tr>
									<tr>
										<td class="bnone"><label for="m_type"><b>채식 종류</b></label></td>
										<td class="bnone"><input type="text" id="menuType" name="m_type" value=""> <span class="button-area orange">
												<button type="button" id="vegan-select">잘모르겠어요</button>
										</span></td>
									</tr>
									<tr>
										<td class="bnone"></td>
										<td class="bnone">
											<div id="gray">
												<p>*포함된 재료별로 메뉴의 채식종류를 설정합니다.</p>
												<p>채식종류에 대해 잘 모른다면 우측 '잘 모르겠어요' 버튼을 클릭해주세요!</p>
											</div>
										</td>
									</tr>
									<tr>
										<td></td>
										<td>
											<div id="gray">
												<a href="https://ko.wikipedia.org/wiki/%EC%B1%84%EC%8B%9D%EC%A3%BC%EC%9D%98#%EC%B1%84%EC%8B%9D%EC%A3%BC%EC%9D%98%EC%9E%90%EC%9D%98_%EB%B6%84%EB%A5%98">ⓘ채식을 더 알고싶다면?</a>
											</div>
										</td>
									</tr>

									<tr>
										<td class="bnone"><b>메뉴 소개</b></td>
										<td class="bnone"><textarea class="textarea-size" name="m_intro" rows="" cols=""></textarea></td>
									</tr>
									<tr>
										<td class="bnone"></td>
										<td class="bnone">
											<div id="gray">
												<p>*재료에 민감한 채식 고객을 위해 상세 재료입력은 필수입니다. 포함재료를 상세히 입력 부탁드립니다!</p>
												<p>ex) 단호박, 두부, 칙피로 만든 맛있는 사라다</p>
											</div>
										</td>
									</tr>
								</table>
								<div class="button-area button-center">
									<button>취소</button>
									<span class="orange">
										<button type="submit">저장</button>
									</span>
								</div>
							</form>
						</div>
					</div>
					<!-- //컨텐츠 -->
				</div>
				<!-- //메인 -->
			</div>
		</div>
		<!-- //container -->
		<!-- footer -->
		<div id="footer">
			<!-- 푸터내용 -->
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</div>
		<!-- //footer -->
	</div>
</body>
</html>