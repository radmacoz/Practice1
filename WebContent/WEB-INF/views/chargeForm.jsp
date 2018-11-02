<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
위에는 main과 같게<p/>

좌측 사이드 메뉴 동일<br>

<article>
<form action="charge.do" method="post">

<table><caption>결제 옵션 선택(라디오로 수정)</caption>
<tr><th>선택 버튼</th><th>충전 금액</th><th>충전 포인트</th>
<tr><td>옵션1</td><td>5,000원</td><td>4,000 point</td></tr>
<tr><td>옵션2</td><td>10,000원</td><td>10,000 point</td></tr>
<tr><td>옵션3</td><td>20,000원</td><td>25,000 point</td></tr>
<tr><td>옵션4</td><td>50,000원</td><td>80,000 point</td></tr>
<tr><td>옵션5</td><td>100,000원</td><td>200,000 point</td></tr>

</table>

<h2>결제 방법 선택</h2>
당신은 무통장 입금 밖에 할 수 없습니다
그냥 계좌 번호 부르세요.

<table>
<tr><th>예금주명</th><td><input type="text" name="acc_name"></td></tr>
<tr><th>은행명</th><td><input type="text" name="acc_bank"></td></tr>
<tr><th>계좌번호</th><td><input type="text" name="acc_number"></td></tr>
</table><p>
<input type="submit" value="확인">
</form>



</article>


</body>
</html>