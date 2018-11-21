<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


article {
	width: 650px;
	height: 800px;
	float: left;
	margin-left: 5px;
	margin-top: 0px;
	border-radius: 10px;
}

table.charge {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
  	margin : 10px 10px;
  	font-size: 13px;
  	width: 450px;
}
table.charge th {
    /* width: 147px; */
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 2px solid #369;

}
table.charge td {
    /* width: 349px; */
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}

table.charge2 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
  	margin : 10px 10px;
  	font-size: 13px;
  	width: 450px;
}
table.charge2 th {
    /* width: 147px; */
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-bottom: 1px solid #ccc;
    border-right: 2px solid #369;

}
table.charge2 td {
    /* width: 349px; */
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}

.char1 {margin-left: 50px; }
.subbutton {margin-left: 240px; }
</style>
</head>
<body>
	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->
	
	<c:set var="id" value="${sessionScope['id']}"></c:set>
	<article>
		<c:if test="${empty id}">
			<table border="1" class="charge">

				<tr>
					<th> 로그인이<br>필요합니다
					</th>
					<td><a href="logonForm.lo">
							<button>판도라 박스 로그인</button>
					</a></td>
				</tr>
			</table>
		</c:if>
		<c:if test="${!empty id}">
			<form action="charge.do" method="post">
				<table class="charge">
					<tr>
						<td colspan="3"><font size="4" style="font-weight: bold">포인트 충전</font></td>
					</tr>
					<tr>
						<th>선택 버튼</th>
						<th>충전 금액</th>
						<th width="130">충전 포인트</th>
					<tr>
						<td><label for="opt1"><input type="radio" name="charge" value="4000"
							checked="checked" id="opt1">옵션1</label></td>
						<td>5,000원</td>
						<td>4,000 point</td>
					</tr>
					<tr>
						<td><label for="opt2"><input type="radio" name="charge" value="10000" id="opt2">옵션2</label></td>
						<td>10,000원</td>
						<td>10,000 point</td>
					</tr>
					<tr>
						<td><label for="opt3"><input type="radio" name="charge" value="25000" id="opt3">옵션3</label></td>
						<td>20,000원</td>
						<td>25,000 point</td>
					</tr>
					<tr>
						<td><label for="opt4"><input type="radio" name="charge" value="80000" id="opt4">옵션4</label></td>
						<td>50,000원</td>
						<td>80,000 point</td>
					</tr>
					<tr>
						<td><label for="opt5"><input type="radio" name="charge" value="200000" id="opt5">옵션5</label></td>
						<td>100,000원</td>
						<td>200,000 point</td>
					</tr>

				</table>

				<!-- <h2 class="char1">무통장 입금</h2>
				<p class="char1">무통장 입금을 이용하시려면 계좌 정보를 입력해주세요.</p>
 -->
				<table class="charge2">
				
					<tr>
						<td colspan="2"><font size="4" style="font-weight: bold">무통장 입금</font></td>
					</tr>
					<tr>
						<th>예금주명</th>
						<td><input type="text" name="acc_name"></td>
					</tr>
					<tr>
						<th>은행명</th>
						<td><input type="text" name="acc_bank"></td>
					</tr>
					<tr>
						<th>계좌번호</th>
						<td><input type="text" name="acc_number"></td>
					</tr>
				</table>
				<p>
					<input type="submit" value="확인" class="subbutton">
			</form>
		</c:if>
	</article>
</body>
</html>