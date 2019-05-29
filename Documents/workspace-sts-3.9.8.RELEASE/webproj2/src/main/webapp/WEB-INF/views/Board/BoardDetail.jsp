<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행지 상세보기</title>
<%@ include file="/views/layout/header.jsp" %>
</head>
<body>
<%@ include file="/views/layout/menu.jsp" %>
	<h2>여행지 상세정보</h2>
	<table border="1">
		<tr>
			<td>
				<img src="${path}/images/${vo.touristUrl}" width ="340" height="300">
			</td>	
			<td>
				<table border="1" style="height: 300px; width: 400px;">
					<tr align="center">
						<td>지역명</td>
						<td>${vo.touristName}</td>
					</tr>
					<tr align="center">
						<td>여행지 소개</td>
						<td>${vo.touristDesc}</td>
					</tr>
					<tr align="center">
						<td>댓글 달기</td>
						<td>${vo.touristcomment}</td>
					</tr>
					<tr align="center">
					 <td colspan="2">
					 	<form name="form1" method="post" action="${path}/Board/find.do">
					 		<input type="hidden" name="touristId" value="${vo.touristId }">	
							<select name="amount">
								<c:forEach begin="1" end="10" var="i">
									<option value="${i}">${i}</option>
								</c:forEach>
							</select>&nbsp;개
							<input type="submit" value="저장하기">	
						</form>
					
					</td>
				</tr>
			</table>
		</td>
	</tr>
	</table>						
	</body>
</html>