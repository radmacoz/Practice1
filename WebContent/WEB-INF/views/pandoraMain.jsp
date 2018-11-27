<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판도라 박스에 오신 것을 환영합니다</title>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: grey;
}

table.side {
	border-collapse: separate;
	border-spacing: 0;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 1px solid #ccc;
	margin: 20px 10px;
}

table.side td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	/* text-align: center; */
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	font-size: 13px;
}

body {
	width: 1200px;
}

#p1 {
	font-weight: lighter;
	font-size: 10px;
}

#loginbutton {
	height: 40px;
	width: 150px;
	background-color: #B4D0FC;
	float: none;
}

article {
	width: 700px;
	height: 730px;
	float: left;
	margin-left: 5px;
	margin-top: 10px;
	border-radius: 10px;
}

</style>
</head>
<body>
	<!-- ====================== 사이드 메뉴 시작 ====================== -->
	<jsp:include page="../logon/logonSide.jsp"></jsp:include>
	<!-- ====================== 사이드 메뉴 끝 ====================== -->
	
	<!-- ====================== uploadList 시작 ====================== -->
	<article>	
		<%-- 	<jsp:include page="../uploadfile/introList.jsp"></jsp:include>
		<a href="fileList.up">파일목록</a> --%>
	</article>
			<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		function fetchPage(name) {
			fetch(name).then(function(response) {
				response.text().then(function(text) {
					document.querySelector('article').innerHTML = text;
				})
			});
		}
		if (location.hash) {
			fetchPage(location.hash.substr(2));
		} else {
			fetchPage('fileList.up');
		}

		function chk(file_num, id) {
			if (id == null || id == "") {
				alert("로그인이 필요한 서비스입니다");
				location.href = "logonForm.lo";
				return;
			}
			window.open("fileSelect.up?file_num=" + file_num + "&id=" + id, "",
					"width=800 height=800");
		}
		/* uploadList Fetch */
		
		/* 페이징 시작 */
		
		function a1(ca, n) {
			$('article').load("fileList.up?category="+ca+"&pageNum="+n);
		}
		function a2(ca, n) {
			$('article').load("fileList.up?category="+ca+"&pageNum="+n);
		}
		function a3(ca, n) {
			$('article').load("fileList.up?category="+ca+"&pageNum="+n);
		}
		/* 페이징 끝 */
		
		/* 검색 페이징 시작 */
		function s1(ca, sub, key, n) {
			$('article').load("fileSearch.up?cate="+ca+"&subject="+sub+"&keyword="+key+"&pageNum="+n);
		}
		function s2(ca, sub, key, n) {
			$('article').load("fileSearch.up?cate="+ca+"&subject="+sub+"&keyword="+key+"&pageNum="+n);
		}
		function s3(ca, sub, key, n) {
			$('article').load("fileSearch.up?cate="+ca+"&subject="+sub+"&keyword="+key+"&pageNum="+n);
		}
		/* 검색 페이징 끝 */
		
		
	</script>
</body>
</html>