<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행지 상세정보</title>
<!-- Google web fonts -->
<link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Lato:300,400|Montserrat:400,400i,700,700i" rel="stylesheet">

<!-- BASE CSS -->
<!-- <link href="css/base.css" rel="stylesheet"> -->

<link rel="stylesheet" href="/resources/css/base.css" type="text/css"/>

<!-- REVOLUTION SLIDER CSS -->
<!-- <link href="rs-plugin/css/settings.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/rs-plugin/css/settings.css" type="text/css"/>
<!-- <link href="css/extralayers.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/extralayers.css" type="text/css"/>
<!-- <link href="css/tabs_home.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/tabs_home.css" type="text/css">
<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<style>
body{
   background: #f9f9f9;
   font-size: 12px;
   line-height: 20px;
   font-family:"Montserrat", Arial, sans-serif;
   color: #565a5c;
   -webkit-font-smoothing: antialiased;
   margin-top: 13%;

}
td{
   min-width: 100px;
}

</style>
</head>
<body>

<%@ include file="../common/header.jsp" %>
<h2 style="text-align: center;">여행지 상세정보</h2>

   <table border = "1" style= "margin-left : 10%">
       <tr> 
          <td> 
           <input type="hidden" name="list_num" value="${list.list_num}">
           <input type="hidden" name="list_num" value="${list.tourimg}">
            <img src="/resources/img/${list.tourimg}" width="500" height="400">
          </td>
          <td>
             <table border="1" style="height: 400px; width: 500px;">
                <tr align="center">
                  <td>지역 이름</td>
                  <td>${list.tourname}</td>
               </tr> 
            <tr align="center">
               <td>여행지 설명</td> 
                  <td>${list.tourstory}</td>
            </tr>
         <tr align="center"> 
                   <td colspan="2"> 
                     <form name="form1" method="post" action="${path}/">
                        <input type="hidden" name="tournum" value="${list.list_num}">
                         <input type="submit" value="마이페이지"> 
                      </form> 
                      <input type="hidden" name="tour_name" value="${list.tour_areaname}">
                   
                      
                     <a href ="${pageContext.request.contextPath}/list/findbyAll.do">여행지 목록</a>
                     
<%--                       <c:if ${list.tour_areaname} vlaue="${list.tour_areaname eq 경기}"> --%>
<%--                      <a href ="${pageContext.request.contextPath}/list/findbyGyeonggi.do">여행지 목록</a> --%>
<%--                      </c:if> --%>
                  </td>
                </tr>
             </table> 
         </td> 
      </tr> 
    </table>
    <input type="hidden" name="list_num" value="${list.list_num}">
    <a href="${pageContext.request.contextPath}/list/remove.do?list_num=${list.list_num}">삭제</a>
<!--     <form action=> -->
<!--     <div class="marg-t-15 col-xs-6 text-left padding-null">  -->
<!--       <input type="button" class="btn" value="삭제" id="delete-btn" /> -->
<!--          </div> -->
<!--          </form> -->
      <%@ include file="../gallery/DetailComment.jsp" %>      
  <%@ include file="../common/footer.jsp" %>               
 </body>
</html>