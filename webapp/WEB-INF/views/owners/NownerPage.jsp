<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>1단 레이아웃 샢플</title>

<link
	href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css"
>
<link href="${ pageContext.request.contextPath }/assets/css/common.css"
	rel="stylesheet" type="text/css"
>
<link
	href="${ pageContext.request.contextPath }/assets/css/ownerMain.css"
	rel="stylesheet" type="text/css"
>

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
						<h3 id="page-title">기본정보</h3>

						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/owners/NownerPage">가게관리</a></li>
							<li class="last"><a href="${pageContext.request.contextPath}/owners/NownerPage">가게</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">



						<div id="wrap2">

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
							<form>
								<table class="main-table">
									<tr>
										<td>



											<b>로고</b>
										</td>
										<td>
											<img alt="가게로고"
												src="${ pageContext.request.contextPath }/assets/imges/가게로고.jpeg"
											>

											<input type="file">

										</td>
										

									</tr>






									<tr>
										<td>
											<label for="s-name"><b>상호명</b></label>
										</td>


										<td>
											<input type="text" id="shopName" name="s-name">
										</td>
									</tr>




									<tr>
										<td>
											<label for="s-number"><b>전화번호</b></label>
										</td>
										<td>
											<input type="text" id="shopNumber" name="number">
										</td>
									<tr>
									<tr>
										<td class="bnone">
											<label for="s-addres"><b>주소</b></label>
										</td>
										<td class="bnone">
											<input type="text" id="shopAddres" name="s-addres">
											<span class="button-area">
											<button  type="submit">
												<b>주소찾기</b>
											</button>
											</span>
										</td>
									</tr>


									<tr>
										<td></td>

										<td>
											<input type="text" id="detailAddres" name="s-daddres">
										</td>
									</tr>
									<tr>
										<td>
											<b>영업시간</b>
										</td>
										<td>
											<select id="son-h-f" name="son-h-f">
												<option value="00">00</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
											</select>
											<span>:</span>
											<select id="son-m-f" name="son-m-f">
												<option value="00">00</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>

											</select>
											<span>~</span>
											<select id="son-h-l" name="son-h-l">
												<option value="00">00</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
											</select>
											<span>:</span>
											<select id="son-m-l" name="son-m-l">
												<option value="00">00</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>

											</select>
										</td>
									</tr>

									<tr>
										<td>
											<b>휴무일</b>
										</td>
										<td>
											<label for="chk-sun">일</label>
											<input class="chkh" type="checkbox" id="chk-son" name="holly"
												value="son" checked="checked"
											>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="chk-mon">월</label>
											<input class="chkh" type="checkbox" id="chk-mon" name="holly"
												value="mon"
											>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="chk-tue">화</label>
											<input class="chkh" type="checkbox" id="chk-tue" name="holly"
												value="tue"
											>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="chk-wen">수</label>
											<input class="chkh" type="checkbox" id="chk-wen" name="holly"
												value="wen"
											>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="chk-thr">목</label>
											<input class="chkh" type="checkbox" id="chk-thr" name="holly"
												value="thr"
											>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="chk-fri">금</label>
											<input class="chkh" type="checkbox" id="chk-fri" name="holly"
												value="fri"
											>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="chk-sat">토</label>
											<input class="chkh" type="checkbox" id="chk-sat" name="holly"
												value="sat"
											>
										</td>
									</tr>

									<tr>
										<td>
											<b>주차가능 여부</b>
										</td>
										<td>
											<label for="rdo-parking">주차 가능</label>
											<input class="chkh" type="radio" id="rdo-parking"
												name="parking" value="yesP" checked="checked"
											>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<label for="rdo-noParking">주차 불가능</label>
											<input class="chkh" type="radio" id="rdo-noParking"
												name="parking" value="noP"
											>
										</td>
									</tr>


									<tr>
										<td>
											<b>가게 소개글</b>
										</td>
										<td>
											<textarea class="textarea-size" rows="" cols=""></textarea>
										</td>

									</tr>

									<tr>
										<td class="bnone" >
 											<b>플랫폼 링크</b>
										</td>

										<td class="bnone">
											<img alt="유튜브"
												src="${ pageContext.request.contextPath }/assets/imges/유튜브아이콘.png"
											>
											<input type="text" id="youtube" name="l-youtube">
										
										</td>
									</tr>

									<tr>

										<td class="bnone"></td>
										<td class="bnone">
											<img alt="트위치"
												src="${ pageContext.request.contextPath }/assets/imges/트위터아이콘.png"
											>
											<input type="text" id="twich" name="l-twich">
										</td>
									</tr>
									<tr>
										<td class="bnone"> </td>
										<td class="bnone">
											<img alt="인스타"
												src="${ pageContext.request.contextPath }/assets/imges/인스타아이콘.png"
											>
											<input type="text" id="twich" name="l-insta">
										</td>
									</tr>
								</table>
								<div class="button-area button-center ">
									<button>취소</button>
									<span class="orange">
										<button>저장</button>
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
