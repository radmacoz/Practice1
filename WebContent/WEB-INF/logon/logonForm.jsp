<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

<style type="text/css">

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: grey;
}


article {
	width: 650px;
	height: 425px;
	/* float: right; */
	margin-left: 30%;
	margin-top: 10px;
	margin-bottom: 10px;
	border-radius: 10px;
}

table.logonForm {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
  	margin : 10px 10px;
  	font-size: 13px;
}
table.logonForm th {
    /* width: 147px; */
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-bottom: 1px solid #ccc;
    border-right: 2px solid #369;
	width: 80px;
}
table.logonForm td {
    /* width: 349px; */
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    width: 300px;
}

</style>
</head>
<body>
<article>
<form action="logon.lo">
		<h2>로그인</h2>
		<table border="1" class="logonForm">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id" required="required"
					autofocus="autofocus" placeholder="아이디" data-msg="아이디를"><label for="idSaveCheck"><input type="checkbox" id="idSaveCheck" name="idSaveCheck">아이디기억</label></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password" required="required"
					placeholder="비밀번호" data-msg="암호를"></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="로그인" id="btnLogin"></td>
			</tr>
		</table>
		
		<a href="joinForm.lo">회원가입</a>
		<a href="main.do">메인으로</a>
		<!-- 체크하는 자바스크립트 함수 필요 -->
</form>
</article>

        <script type="text/javascript">
            $('#btnLogin').on('click', function () {
                if($('#id').val() == ""){
                    $('#id').focus();

                    alert($('#id').attr('data-msg')+' 입력해주세요');
                }else if($('#pwd').val()==""){
                    $('#pwd').focus();

                    alert($('#pwd').attr('data-msg')+' 입력해주세요');
                }else{
                    $('#form').attr("target", "self").submit();
                }
            });

            var user_id = $.cookie("user_id");

            if(user_id != null){
                $('#id').val(user_id);
                $('#idSaveCheck').attr('checked', 'checked');
            }

            $('#idSaveCheck').on('click', function name() {
                if($('input:checkbox[id="idSaveCheck"]').is(':checked')){
                    alert('기억되었습니다');
                    if($('#id').val()==""){
                        alert('id를 입력해주세요.');
                        $(this).attr('checked', false);
                    }else{
                        // 쿠키에 저장
                        $.cookie('user_id', $('#id').val(), {expires: 7, path: '/'});

                    }
                }else{
                    $.removeCookie('user_id', { path: '/' });
                }
            });
        </script>
</body>
</html>