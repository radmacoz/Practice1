<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판도라 박스에 오신 것을 환영합니다</title>
<style type="text/css">
#top {
	text-align: right;
	font-size: 12px;
	height: 20px;
	background-color: #BDBDBD;
}

#logo	{
	width: 120px;
	height: 80px;
	float: left;
	margin-top: 10px;
	margin-left: 200px;
}

#search {
	margin-left: 10px;
	margin-top: 50px;
	float: left;
	border: 3px solid navy;
	width: 480px;
}

#category {
	width: 90%;
	margin-top: 20px;
	float: left;
}

#category ul {
	margin-left: 10px;
	text-align: center;
	font-size: 10px;
	float: center;
	list-style-type: none;
}

#category ul li {
	display: inline;
	margin: 20px;
	font-size: 15px;
}
</style>
</head>
<body>
	<div id="top">
		또다른 세상의 시작. 판도라의 상자가 열리다.&nbsp;&nbsp;&nbsp;&nbsp;
		<a	href="chargeForm.do">캐시 충전</a> || <a href="myPage.do">내정보 관리</a>
	</div>
	<div id="logo"><a href="main.do"><img alt="" src="images/2010.jpg" width="120" height="80"></a></div>
	<div id="search">
		<select>
			<option>전체</option>
			<option>도서</option>
			<option>이미지</option>
			<option>동영상</option>
			<option>음악</option>
			<option>교육</option>
			<option>유틸</option>
		</select>
		<select>
			<option>전체</option>
			<option>작성자</option>
			<option>제목</option>
		</select> <input type="text" size="35" placeholder="검색한 후에 새로운 정렬을 이용해보세요">
		<input type="button" value="검색">
	</div>

	<div id="category">
		<ul>
			<li><a href="main.do?category=all">인기탑10</a></li>
			<li><a href="main.do?category=book">도서</a></li>
			<li><a href="main.do?category=image">이미지</a></li>
			<li><a href="main.do?category=video">동영상</a></li>
			<li><a href="main.do?category=music">음악</a></li>
			<li><a href="main.do?category=educate">교육</a></li>
			<li><a href="main.do?category=util">유틸</a></li>
		</ul>
	</div>
</body>
</html>