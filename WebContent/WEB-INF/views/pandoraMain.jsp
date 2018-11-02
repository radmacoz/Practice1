<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css" >
	
	#sidemenu { float: left; height: 600px; width: 200px;
				border : 2px solid blue;  clear: both; }
	article { float: right; width: 75%;  }
	article table	{ width: 90%; margin: 15px 10px 15px 10px;	}
	figure { float: right; margin: 10px; }
	figcaption { text-align: center; }
	#sidemenu ul { list-style: none; }
	footer { text-align:right; font-size: 8px; font-weight: lighter;	
		clear: both; background-color: #EAEAEA;  }
	aside { border : 1px solid black;}
	section { margin : 30px; background-color:cyan; }
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
	
		<table border="1">
			<thead>
			<tr>
				<th width="60%">제목</th>
				<th>분류</th>
				<th>포인트</th>
				<th>용량</th>
				<th>판매자</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="i" begin="1" end="20">
			<tr>
				<td><a href="fileSelect.do?file_num=${board.num}">제목${i }</a></td>
				<td>분류${i }</td>
				<td>포인트${i }</td>
				<td>용량${i }</td>
				<td>판매자${i }</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>

	</article>
</body>
</html>