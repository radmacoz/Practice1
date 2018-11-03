<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="managerSessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"> 
table { 
padding: 5 ; 
width: 300px;
border: 1px
}
table th {
	color: gray;
	text-align: center;
}

</style>
</head><body>      
   <b>관리 작업중입니다. </b><input type="button" value="로그아웃" 
  		  onclick="location.href='managerLogout.ma'"><br>  
   <table>
     <tr><th>회원 관리</th></tr>
     <tr><td><a href="memberList.ma">회원 목록 보기</a></td></tr>
     <tr><td><a href="memberList.ma?vip_request='y'">판매자 신청 회원</a></td></tr>
     <!-- <tr><td>신고 접수 회원</a></td></tr> -->
   </table><br><br>
   <table>
     <tr><th>매출 관리</th></tr>
     <tr><td><a href='chargeList.ma'>결제목록 확인</a></td></tr>
     <tr><td><a href='salesSum.ma'>매출 확인</a></td></tr>
   </table>
</body>
</html>