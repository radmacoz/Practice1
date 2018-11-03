<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판도라 박스에 오신 것을 환영합니다</title>
<style type="text/css" >
	
	#sidemenu { float: left; height: 600px; width: 250px;
				border : 2px solid blue;  clear: both; 
				background-color: #FAF4C0; }
	#sidemenu ul { list-style: none; }
	article { float: right; width: 75%;  }
	article table	{ width: 90%; margin: 15px 10px 15px 10px;	}
	aside { border : 1px solid black;}
</style>
</head>
<body>
	<div id="sidemenu">
		<input type="checkbox">아이디기억
		<ul>
			<li>
				<table border="1">
					<tr>
						<td><input type="text" size="7" placeholder="아이디"></td>
						<td rowspan="2"><input type="submit" value="로그인"></td>
					</tr>
					<tr>
						<td><input type="password" size="7" placeholder="비밀번호"></td>
					</tr>
				</table>
			</li>
		</ul>
		<aside>
			<a href="joinForm.do"><mark>무료회원가입</mark></a>
		</aside>
		<a href="chargeForm.do">캐시충전</a><br>
		<a href="reqBoardList.do">자료요청 게시판</a><br>
		고객상담<br>
		<a href="vipApplyForm.do"> 판매자 신청</a><br>
		<a href="chargeForm.do">사은 행사(배너 넣을 것)</a><br>

	</div>
	<article>
		<jsp:include page="../uploadfile/fileList.jsp"></jsp:include>
	</article>
</body>
</html>