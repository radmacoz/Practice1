<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판도라 박스에 오신 것을 환영합니다</title>
<style type="text/css">
#tframe		{
	width: 950px;
	height: 170px;
	border: none;
	clear: both;
}
#top {
	text-align: right;
	font-size: 12px;
	height: 20px;
	background-color: #EAEAEA;
}

#logo	{
	width: 120px;
	height: 40px;
	float: left;
	margin-top: 30px;
	margin-left: 140px;
}

#search {
	margin-left: 80px;
	margin-top: 30px;
	float: left;
	border: 3px solid navy;
	width: 500px;
}

#category {
	width: 90%;
	margin-top: 20px;
	float: left;
}

#category ul {
	margin-left: 10px;
	text-align: center;
	float: center;
	list-style-type: none;
}

#category ul li {
	display: inline;
	margin: 20px;
	font-size: 16px;
}

#category ul li a {
	text-decoration: none;
	color: black;
}

#category ul li a:visited {
	display: inline;
	margin: 20px;
	font-size: 16px;
	background-color: #5882FA;
	text-decoration: none;
}

#category ul li a:hover {
	color: grey;
}

</style>
</head>
<body>
<div id="tframe">
	<div id="top">
		또다른 세상의 시작. 판도라의 상자가 열리다.&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="chargeForm.do">캐시 충전</a> || <a href="myPage.do">내정보 관리</a>
	</div>
	<div id="logo">
		<a href="main.do"><img alt="" src="images/2010.jpg" width="180px"></a>
	</div>
	<div id="search">
<!-- 		<form action="fileSearch.up"> -->
		<form action="" name="frm" method="post" onsubmit="fetchSearch()">
			<select style="height: 22px" name="cate">
				<optgroup label="카테고리">
					<option value="">전체</option>
					<option>도서</option>
					<option>이미지</option>
					<option>동영상</option>
					<option>음악</option>
					<option>교육</option>
					<option>유틸</option>
				</optgroup>
			</select>
			<select style="height: 22px" name="subject">
				<optgroup label="선택">
					<option value="mem_id">작성자</option>
					<option value="file_name">제목</option>
				</optgroup>
			</select>
			<input type="text" name="keyword" size="35" placeholder="원하는 검색어를 입력하세요">
			<input type="submit" value="검색">
		</form>
	</div>
	<script type="text/javascript">
		function fetchSearch() {
			location.href="main.do#!fileSearch.up?cate="+frm.cate.value+"&subject="+frm.subject.value+"&keyword="+frm.keyword.value;
		}
	</script>

	<div id="category">
		<ul>
			<li><a href="main.do" onclick="fetchPage('fileList.up')">전체</a></li>
			<li><a href="main.do#!fileList.up?category=도서" onclick="fetchPage('fileList.up?category=도서')">도서</a></li>
			<li><a href="main.do#!fileList.up?category=이미지" onclick="fetchPage('fileList.up?category=이미지')">이미지</a></li>
			<li><a href="main.do#!fileList.up?category=동영상" onclick="fetchPage('fileList.up?category=동영상')">동영상</a></li>
			<li><a href="main.do#!fileList.up?category=음악" onclick="fetchPage('fileList.up?category=음악')">음악</a></li>
			<li><a href="main.do#!fileList.up?category=교육" onclick="fetchPage('fileList.up?category=교육')">교육</a></li>
			<li><a href="main.do#!fileList.up?category=유틸" onclick="fetchPage('fileList.up?category=유틸')">유틸</a></li>
			<!-- <li><a href="fileList.up">전체</a></li>
			<li><a href="fileList.up?category=도서">도서</a></li>
			<li><a href="fileList.up?category=이미지">이미지</a></li>
			<li><a href="fileList.up?category=동영상">동영상</a></li>
			<li><a href="fileList.up?category=음악">음악</a></li>
			<li><a href="fileList.up?category=교육">교육</a></li>
			<li><a href="fileList.up?category=유틸">유틸</a></li> -->
		</ul>
	</div>
</div>
</body>
</html>