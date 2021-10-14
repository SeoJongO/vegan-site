<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8">
<title>메인페이지</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/restaurantPage.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>



</head>
<body>

   <div id="wrap">

      <!-- 해더 -->
      <c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>
      <!-- container -->
      <div id="container" class="clearfix">

         <!-- 페이지타이틀 -->
         <div id="page-title-wrap" class="clearfix">
            <h2 id="page-title">${ownerVo.s_name }</h2>

            <ul class="clearfix text-center">
               <li><a href="">홈</a></li>
               <li class="last"><a href="">${ownerVo.s_name }</a></li>
            </ul>
         </div>
         <!-- //페이지타이틀 -->

         <!-- 컨텐츠 -->
         <div id="content-wrap" class="clearfix">
            <div id="content" class="clearfix">
               <div id="restaurantInfo">
                  <div class="restaurantInfo float-l clearfix text-left">
                     <p class="restaurantInfo-text">${ownerVo.s_intro }.</p>
                     <p class="restaurantInfo-text">
                        <span class="timeInfo">영업시간</span> <span class="timeInfo">${ownerVo.s_openH }:${ownerVo.s_openM } ~
                           ${ownerVo.s_closeH }:${ownerVo.s_closeM } </span><br><br>
                           <span>휴무일:</span>
                           <!-- 휴무일 값 --><span>
                           ${ownerVo.s_Hmon } 
                           ${ownerVo.s_Htue}
                           ${ownerVo.s_Hwen }
                           ${ownerVo.s_Hthu }
                           ${ownerVo.s_Hfri }
                           ${ownerVo.s_Hsat }
                           ${ownerVo.s_Hsun }</span><br>         
                           <!-- 주차가능 --><span>${ownerVo.s_parking }</span>
                           
                        

                     </p>
                     <p class="restaurantInfo-text">
                        <span><a href="${ownerVo.s_twitter }"><img src="${pageContext.request.contextPath }/assets/image/트위터아이콘.png" alt="트위터"></a></span> <span><a href="${ownerVo.s_instagram }"><img src="${pageContext.request.contextPath }/assets/image/인스타아이콘.png" alt="인스타그램"></a></span>
                        <span><a href="${ownerVo.s_youtube }"><img src="${pageContext.request.contextPath }/assets/image/유튜브아이콘.png" alt="유튜브"></a></span>
                     </p>
                     <p>
                        <span class="favoritesImg"><img src="" alt="찜"></span> <span class="favorites">+555</span>
                     </p>
                  </div>
                  <div class="restaurantInfo float-l clearfix text-left">
                  <c:forEach items="${ownerVo.menuList }" var="menuList" varStatus="status" begin="0" end="2">
                     <div class="menu">
                        <img class="foodImg float-l clearfix" src="${ pageContext.request.contextPath }/veganLogo/${menuList.m_imge }">
                        
                        <p>
                           <span class="foodInfo">메뉴이름: ${menuList.m_name}</span> <span class="foodInfo">가격: ${menuList.m_price}</span> <span class="foodInfo">채식타입:
                              ${menuList.m_type}</span> <span class="foodInfo">${menuList.m_intro}</span>
                        </p>
                        
                     </div>
                     </c:forEach>
                     <!-- <div class="menu">
                        <img class="foodImg float-l clearfix" src="">
                        <p>
                           <span class="foodInfo">메뉴이름: 연어샐러드</span> <span class="foodInfo">가격: 8000원</span> <span class="foodInfo">채식타입:
                              페스코</span> <span class="foodInfo">생연어와 상추로 만들어진 샐러드</span>
                        </p>
                     </div>
                     <div class="menu">
                        <img class="foodImg float-l clearfix" src="">
                        <p>
                           <span class="foodInfo">메뉴이름: 연어샐러드</span> <span class="foodInfo">가격: 8000원</span> <span class="foodInfo">채식타입:
                              페스코</span> <span class="foodInfo">생연어와 상추로 만들어진 샐러드</span>
                        </p>
                     </div> -->
                     <p>
                        <a id="menuList">메뉴더보기+</a>
                     </p>
                  </div>
                  <div class="restaurantInfo float-l clearfix text-left">
                     <div id="map"></div>
                     <div id="menu_wrap" class="bg_white">
                        <!-- 이미지 지도를 표시할 div 입니다 -->
                        <div id="staticMap" style="width: 340px; height: 200px;"></div>

                        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45c4f1a0aa5b1e058d3298a1e43f3b31"></script>
                        <script>
                           // 이미지 지도에서 마커가 표시될 위치입니다 
                           var markerPosition = new kakao.maps.LatLng(
                                 33.450701, 126.570667);

                           // 이미지 지도에 표시할 마커입니다
                           // 이미지 지도에 표시할 마커는 Object 형태입니다
                           var marker = {
                              position : markerPosition
                           };

                           var staticMapContainer = document
                                 .getElementById('staticMap'), // 이미지 지도를 표시할 div  
                           staticMapOption = {
                              center : new kakao.maps.LatLng(
                                    33.450701, 126.570667), // 이미지 지도의 중심좌표
                              level : 4, // 이미지 지도의 확대 레벨
                              marker : marker
                           // 이미지 지도에 표시할 마커 
                           };

                           // 이미지 지도를 생성합니다
                           var staticMap = new kakao.maps.StaticMap(
                                 staticMapContainer, staticMapOption);
                        </script>
                        <div id="address">
                           <div id="addressText">
                           	<input type="hidden" id="s_address" value="${ownerVo.s_address}">
                              <p>${ownerVo.s_address}</p>
                              <p>
                                 <span id="addressType">&nbsp상세주소&nbsp</span> <span>${ownerVo.s_detail_address}</span>
                              </p>
                           </div>
                        </div>
                     </div>
                     <!-- map -->
                  </div>
               </div>
               <!-- //restaurantInfo -->
               <c:if test="${not empty sessionScope.authUser }">
               <div id="restaurantPage-btn" class="text-center">
                  <button id="reviewBtn" class="btn">리뷰남기기</button>
                  <a href="${pageContext.request.contextPath }/questionwrite?s_no=${ownerVo.s_no}"><button id="singoBtn" class="btn">신고하기</button></a>
               </div>
               </c:if>
               
               <c:if test="${empty sessionScope.authUser }">
               <div id="restaurantPage-btn" class="text-center">
                  <a href="${ pageContext.request.contextPath }/user/loginForm"><button id="reviewBtn" class="btn">리뷰남기기</button></a>
                  <a href="${ pageContext.request.contextPath }/user/loginForm"><button id="singoBtn" class="btn">신고하기</button></a>
               </div>
               </c:if>
               <!-- //////////////////////////////////////////////////////////// -->
               <div id="reviewArea">
               <c:forEach items="${reviewList}" var="reviewList">
               <div class="review-wrap" id="d-${reviewList.r_no }">
               
                  <div class="review clearfix">
                     <div id="userProfile" class="float-l">
                        <img class="userProfile-img float-l" src="">
                        <div>
                           <p>${reviewList.u_nickName}(${reviewList.u_type })</p>
                                    <c:if test="${reviewList.star == 5 }">
                                       <p id="starPoint">★★★★★</p>
                                    </c:if>
                                    <c:if test="${reviewList.star == 4 }">
                                       <p id="starPoint">★★★★☆</p>
                                    </c:if>
                                    <c:if test="${reviewList.star == 3 }">
                                       <p id="starPoint">★★★☆☆</p>
                                    </c:if>
                                    <c:if test="${reviewList.star == 2 }">
                                       <p id="starPoint">★★☆☆☆</p>
                                    </c:if>
                                    <c:if test="${reviewList.star == 1 }">
                                       <p id="starPoint">★☆☆☆☆</p>
                                     </c:if>
                           <p>${reviewList.r_date }</p>
                        </div>
                     </div>
                  <c:if test="${authUser.u_no eq reviewList.u_no }">
                     <div id="modify-deleft-btn" class=" float-r">
                        <p>
                           <span class="modify"><a href="${ pageContext.request.contextPath }/reviewModi?r_no=${reviewList.r_no}">수정</a></span> 
                           <span class="delete" data-no="${reviewList.r_no }">삭제</span>
                        </p>
                     </div>
                     </c:if>
                     <div id="reviewImg-text" class="float-l">
                        <div id="review-img-area">
                           <img class="review-img" src="${ pageContext.request.contextPath }/veganReview/${reviewList.saveName }"> 
                           
                        </div>
                        <p class="review-text">${reviewList.r_contents}</p>
                     </div>
                  </div>
                  
               </div>
                  <!-- //review-wrap -->
                  </c:forEach>
                  


               </div>
               <!-- //reviewArea -->
               <div id="paging" class="text-center">
                  <p>페이징</p>
               </div>
            </div>
            <!-- //content -->
         </div>
         <!-- //content-wrap -->
      </div>
      <!-- //container -->
      <!-- footer -->
      <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
   </div>
   <!-- //wrap -->


   <!-- ************모달창************** -->
   <!-- Modal 메뉴더보기 -->
   <div id="restaurantPage-modal">
      <div class="modal fade" id="menuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="menu-modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title text-center" id="myModalLabel">${ownerVo.s_name}</h4>
               </div>
               <div class="modal-body clearfix">
               <c:forEach items="${ownerVo.menuList }" var="menuList" >
                  <div class="menuInfo float-l">
                     <img id="" class="menuImg" src="${ pageContext.request.contextPath }/veganLogo/${menuList.m_imge }" alt="">
                     <div class="menuText">
                        <p>${menuList.m_name }</p>
                        <p>${menuList.m_price }</p>
                        <p>${menuList.m_type }</p>
                        <br>
                        <p>${menuList.m_intro }</p>
                     </div>
                  </div>
                  </c:forEach>
               </div>
            </div>
         </div>
      </div>
   </div>
      <!-- 모달창(메뉴더보기) end -->

      <!-- Modal 리뷰남기기 -->
      <div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="restaurantPage-modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title text-center" id="myModalLabel">${ownerVo.s_name}</h4>
               </div>
               <div class="modal-body clearfix">

                  <div id="content_main">

                     <div id="modify-content">
                         <form action="${pageContext.request.contextPath }/reviewWrite" method="post" enctype="multipart/form-data">  
                           <textarea id="writeModal" name="r_contents" ></textarea>
                           <input id="file" type="file" name="file" value="">
                           <!-- 별점구현;; -->
                           <!-- 부모 --> 
                            <P id="reviewStar">
                            
                           
                               <input type="radio"  id="star-1" class="star" value="1" >
                               <label for="star" id="star-1">★</label>
                               
                               <input type="radio"  id="star-2" class="star" value="2" >
                               <label for="star" id="star-2">★</label>
                               
                               <input type="radio"  id="star-3" class="star" value="3" >
                               <label for="star" id="star-3">★</label>
                               
                               <input type="radio"   id="star-4" class="star" value="4" >
                               <label for="star" id="star-4">★</label>
                               
                               <input type="radio"   id="star-5" class="star" value="5" >
                               <label for="star" id="star-5">★</label>
                              <p> 
                              
                           <div class="text-center">
                              <button id= "ajaxButton" class="btn" type="submit">저장</button>
                              <button class="btn">취소</button>
                           </div>
                           <input id="u_no"type="text" name="u_no" value="${authUser.u_no}">
                           <input id="s_no"type="text" name="s_no" value="${ownerVo.s_no}">
                         </form>
                  </div>
                  <!-- //컨텐츠 -->
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Modal 신고하기클릭 -->
   <!-- <div class="modal fade" id="singoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="restaurantPage-modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 class="modal-title text-center" id="myModalLabel">샐러디 역삼점</h4>
            </div>
            <div class="modal-body clearfix">
               <div id="modify-content">
                  <form action="" method="get">
                     <input type="radio" name="" value=""> <label>메뉴가 상세내용과 달라요</label> <br> <input type="radio" name="" value=""> <label>해당위치에
                        매장이 없어요</label> <br> <input type="radio" name="fruit" value="apple"> <label>기타</label> <br>
                     <textarea placeholder="내용을 입력해주세요"></textarea>
                     <input type="file">
                     <div class="text-center">
                        <button class="btn" type="submit">보내기</button>
                        <button class="btn">취소</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div> -->

</body>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45c4f1a0aa5b1e058d3298a1e43f3b31&libraries=services"></script>
<script>
var star;

//화면 로딩되기직전
$(document).ready(function(){
   console.log("화면 로딩 직전");
   
   var address = document.getElementById('s_address').value;
	console.log(address);

	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	//주소로 좌표를 검색합니다
	geocoder.addressSearch(address, function(result, status) {

   // 정상적으로 검색이 완료됐으면 
    if (status === kakao.maps.services.Status.OK) {
       var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
   };
   
   console.log(coords);
   
   var la = coords.La;
   var ma = coords.Ma;
	
	//이미지 지도에서 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(ma, la); 
	
	// 이미지 지도에 표시할 마커입니다
	// 이미지 지도에 표시할 마커는 Object 형태입니다
	var marker = {
	    position: markerPosition
	};
	
	var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
	    staticMapOption = { 
	        center: new kakao.maps.LatLng(ma, la), // 이미지 지도의 중심좌표
	        level: 3, // 이미지 지도의 확대 레벨
	        marker: marker // 이미지 지도에 표시할 마커 
	    };    
	
	// 이미지 지도를 생성합니다
	var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
   
	});
   
});




<!-- ajax 연습 -->

//로딩이 끝난 후 




$(function(){
   <!-- 메뉴더보기 모달 -->
   $("#menuList").on("click", function(){
      console.log("모달창 클릭")

      $("#menuModal").modal();

   });

   <!-- 리뷰남기기 모달-->
   //리뷰등록
   $("#reviewBtn").on("click", function() {
      
      console.log("모달창 클릭")

      $("#reviewModal").modal();
      
   });
   
   
   <!--리뷰남기기 데이터값 읽어오기-->
   $("#ajaxButton").on("click", function(){
      event.preventDefault();//폼전송기능 끔
      console.log("클릭");
   /*     var reviewVo={
            
          u_no: $("[name='u_no']").val(),
         s_no: $("[name='s_no']").val(),
         file: $("#file").val(),
         r_contents: $("#writeModal").val()
      };  */
      //데이터 ajax방식으로 서버에서 전송
      
      
      var u_no = $("[name='u_no']").val();
      var s_no = $("[name='s_no']").val();
      var r_contents = $("#writeModal").val();
      var file =$("#file")[0].files[0];
      
      console.log(u_no);
      console.log(s_no);
      console.log(r_contents);
      console.log(file);
      
      var formData = new FormData();
      formData.append('u_no', u_no);
      formData.append('s_no',s_no);
      formData.append('r_contents',r_contents);
      formData.append('file',file);
      formData.append('star',star);
      
      console.log(formData.get('u_no'));
      console.log(formData.get('s_no'));
      console.log(formData.get('r_contents'));
      console.log(formData.get('file'));
      console.log(formData.get('star'));
      
      $.ajax({
            
            //url : "${pageContext.request.contextPath }/api/guestbook/write?name="+userName+"&password="+password+ "&
            url : "${pageContext.request.contextPath }/api/review/write",
            type : "POST",
            processData : false,
            contentType : false,
            data: formData,
            
            dataType : "json",
            //enctype: 'multipart/form-data',
            success : function(resultVo){
               /*성공시 처리해야될 코드 작성*/
               
               console.log(resultVo);
               render(resultVo,"up");
               console.log("ddd"+resultVo.star);
               
               $('#reviewModal').modal('hide');
                  //화면에 그리기
                  
                 
               
            },
            error : function(XHR, status, error) {
               console.error(status + " : " + error);
            }
         });

   });
   
   
   
   

   <!-- 리뷰삭제 -->
   //이미지 등록
   $("#reviewArea").on("click", ".delete", function() {
      console.log("리뷰삭제 클릭")

      if (confirm("삭제하시겠습니까?") == true){    //확인

         var r_no = $(this).data("no");
         console.log(r_no)
         
         //데이터 ajax방식으로 서버에서 전송
         $.ajax({
               
               url : "${pageContext.request.contextPath }/api/review/delete",
               type : "get",
               //contentType : "application/json",
               data : {"r_no":r_no},

               dataType : "json",
               success : function(counter){
                  /*성공시 처리해야될 코드 작성*/
                  console.log(counter)
                  if(counter == 1) {
                     $("#d-"+r_no).remove();
                  }

               
               },
               error : function(XHR, status, error) {
                  console.error(status + " : " + error);
               }
            });
         
         

      }else{   //취소

          return;

      }

   });

   <!-- 신고하기 모달 -->
   //이미지 등록
   $("#singoBtn").on("click", function() {
      console.log("모달창 클릭")

      $("#singoModal").modal();

   });
   

   
   
});

//리뷰 1개씩 랜더링 
function render(resultVo, type){
   var Str = "";
   
   Str +=  '<div class="review-wrap" id="d-'+resultVo.r_no+'">';
   Str += '<div class="review clearfix">';
   Str += '<div id="userProfile" class="float-l">';
   Str += '<img class="userProfile-img float-l" src="">';
   Str += '<div>';
   Str += '<p>'+resultVo.u_nickName+''+(resultVo.u_type)+'</p>';
   
      if(resultVo.star == 5){
         Str += '<p id="starPoint">★★★★★</p>'
      }else if(resultVo.star == 4){
         Str += '<p id="starPoint">★★★★</p>'
         }else if(resultVo.star == 3 ){
            Str += '<p id="starPoint">★★★</p>'
            }else if(resultVo.star == 2){
               Str += '<p id="starPoint">★★</p>'
            }else if(resultVo.star == 1){
               Str += '<p id="starPoint">★</p>'
            }
      
   Str += '<p>'+resultVo.r_date+'</p>';
   Str += '</div>';
   Str += '</div>';
   Str += '<div id="modify-deleft-btn" class=" float-r">';
   Str += '<p>'
   Str += '<span class="modify"><a href="${ pageContext.request.contextPath }/reviewModi?r_no='+resultVo.r_no+'">수정</a></span>';
   Str += '<span class="delete" data-no="'+resultVo.r_no+'">삭제</span>';
   Str += '</p>';
   Str += '</div>';
   Str += '<div id="reviewImg-text" class="float-l">';
   Str += '<div id="review-img-area">';
   Str += '<img class="review-img" src="${ pageContext.request.contextPath }/veganReview/'+resultVo.saveName+'">';
   Str += '</div>';
   Str += '<p class="review-text">'+resultVo.r_contents+'</p>';
   Str += '</div>';
   Str += '</div>';
   Str += '</div>';

   
   
   if(type === 'down'){
      $("#reviewArea").append(Str);
   }else if(type === 'up'){
      $("#reviewArea").prepend(Str);
   }else{
      console.log("방향을 지정해 주세요");
   }
   

}



<!-- 리뷰 별 체크 -->
$('#reviewStar label').click(function(){ 
   $(this).parent().children("label").removeClass("on"); 
   $(this).addClass("on").prevAll("label").addClass("on"); 
   //console.log($(this).attr("id"));  //라벨 id
   console.log($('#'+$(this).attr("id")).attr("value")); //라벨 id를 이용해서 radio value를 가져옴
   star =$('#'+$(this).attr("id")).attr("value");
   });












<!-- //document onload -->
</script>

</html>

