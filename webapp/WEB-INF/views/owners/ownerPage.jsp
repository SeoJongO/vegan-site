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
	href="${ pageContext.request.contextPath }/assets/css/common.css"
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
				<h2>기본정보</h2>
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
			<form>

				<div class="s-listpo">
					<div>
						<p>
							<b>로고</b>
						</p>
					</div>
					<div class="button-area s-listpo ">
						<img alt="가게로고"
							src="${ pageContext.request.contextPath }/assets/imges/가게로고.jpeg"
						>
						<div class="serchBtn">
							<input type="file">
						</div>
					</div>
				</div>
				<div class="content">
					<div class="s-listpo in-width">
						<label for="s-name"><b>상호명</b></label> <br>
						<input type="text" id="shopName" name="s-name">
					</div>
					<div class="s-listpo in-width">
						<label for="s-number"><b>전화번호</b></label> <br>
						<input type="text" id="shopNumber" name="s-number">
					</div>
					<div class="button-area s-listpo in-width">
						<div>
							<label for="s-addres"><b>주소</b></label> <br>
							<input type="text" id="shopAddres" name="s-addres">
							<button type="submit">
								<b>주소찾기</b>
							</button>
						</div>
						<br>

					</div>
					<input type="text" id="detailAddres" name="s-daddres">
					<div class="s-listpo">
						<p>
							<b>영업시간</b>
						<p>
							<span>일</span>
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
							<br> <br> <span>월</span>
							<select id="mon-h-f" name="mon-h-f">
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
							<select id="mon-m-f" name="mon-m-f">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<span>~</span>
							<select id="mon-h-l" name="mon-h-l">
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
							<select id="mon-m-l" name="mon-m-l">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<br> <br> <span>화</span>
							<select id="tue-h-f" name="tue-h-f">
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
							<select id="tue-m-f" name="tue-m-f">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<span>~</span>
							<select id="tue-h-l" name="tue-h-l">
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
							<select id="tue-m-l" name="tue-m-l">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<br> <br> <span>수</span>
							<select id="wen-h-f" name="wen-h-f">
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
							<select id="wen-m-f" name="wen-m-f">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<span>~</span>
							<select id="wen-h-l" name="wen-h-l">
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
							<select id="wen-m-l" name="wen-m-l">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<br> <br> <span>목</span>
							<select id="thr-h-f" name="thr-h-f">
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
							<select id="thr-m-f" name="thr-m-f">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<span>~</span>
							<select id="thr-h-l" name="thr-h-l">
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
							<select id="thr-m-l" name="thr-m-l">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<br> <br> <span>금</span>
							<select id="fri-h-f" name="fri-h-f">
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
							<select id="fri-m-f" name="fri-m-f">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<span>~</span>
							<select id="fri-h-l" name="fri-h-l">
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
							<select id="fri-m-l" name="fri-m-l">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<br> <br> <span>토</span>
							<select id="sat-h-f" name="sat-h-f">
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
							<select id="sat-m-f" name="sat-m-f">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
							<span>~</span>
							<select id="sat-h-l" name="sat-h-l">
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
							<select id="sat-m-l" name="sat-m-l">
								<option value="00">00</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>

							</select>
					</div>
					<div class="s-listpo">
						<p>
							<b>휴무일</b>
						</p>
						<label for="chk-sun">일</label>
						<input type="checkbox" id="chk-son" name="holly" value="son"
							checked="checked"
						>

						<label for="chk-mon">월</label>
						<input type="checkbox" id="chk-mon" name="holly" value="mon">

						<label for="chk-tue">화</label>
						<input type="checkbox" id="chk-tue" name="holly" value="tue">

						<label for="chk-wen">수</label>
						<input type="checkbox" id="chk-wen" name="holly" value="wen">

						<label for="chk-thr">목</label>
						<input type="checkbox" id="chk-thr" name="holly" value="thr">

						<label for="chk-fri">금</label>
						<input type="checkbox" id="chk-fri" name="holly" value="fri">

						<label for="chk-sat">토</label>
						<input type="checkbox" id="chk-sat" name="holly" value="sat">
					</div>
					<div class="s-listpo">
						<p>
							<b>주차가능 여부</b>
						<p>

							<label for="rdo-parking">주차 가능</label>
							<input type="radio" id="rdo-parking" name="parking" value="yesP"
								checked="checked"
							>

							<label for="rdo-noParking">주차 불가능</label>
							<input type="radio" id="rdo-noParking" name="parking" value="noP">
					</div>

					<div class="s-listpo">
						<p>
							<b>가게 소개글</b>
						</p>

						<textarea rows="" cols=""></textarea>
					</div>
					<div class=" in-width">
						<p>
							<b>플랫폼 링크</b>
						</p>
						<div class="platform s-listpo">

							<img alt="유튜브"
								src="${ pageContext.request.contextPath }/assets/imges/유튜브아이콘.png"
							>
							<input type="text" id="youtube" name="l-youtube">
						</div>

						<div class="platform s-listpo">

							<img alt="트위치"
								src="${ pageContext.request.contextPath }/assets/imges/트위터아이콘.png"
							>
							<input type="text" id="twich" name="l-twich">
						</div>

						<div class="platform s-listpo">

							<img alt="인스타"
								src="${ pageContext.request.contextPath }/assets/imges/인스타아이콘.png"
							>
							<input type="text" id="twich" name="l-insta">
						</div>
					</div>
					<div class="button-area s-listpo">
						<button>취소</button>
						<span class="orange">
							<button>저장</button>
						</span>
					</div>
				</div>
			</form>
		</div>


	</div>
</body>
</html>