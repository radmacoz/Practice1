<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="css/join.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/pdsr.css">
    <link rel="stylesheet" href="css/button.css">

    <link href='https://cdn.rawgit.com/openhiun/hangul/14c0f6faa2941116bb53001d6a7dcd5e82300c3f/nanumbarungothic.css' rel='stylesheet' type='text/css'>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
   
<script type="text/javascript">
	function chk() {
		if(!frm.agree_chk.checked) {
			alert("약관확인 후 체크해주세요");
			frm.agree_chk.focus();
			return false;
		}
	}

</script>
</head>
<body>
<form action="vipApply.do" method="post" name="frm" onsubmit="return chk()">
  <table width=960px align=center>
    <tr><td><h1>판매자신청</h1></td></tr>
     <tr><td align=center>         
          <!--이용약관 테이블 시작-->
          <table width=810>
            <tr><td>
                <div>
                 <font color="#f67001" size=4>01</font> <font size=3>신청약관</font>
                </div>
             </td></tr>
           <tr><td align=center>
               <textarea name="tos" rows=15 cols=100>
판도라웹하드에서 저작권법, 컴퓨터 프로그램 보호법 및 동법률 시행령 등 관계법령에 따른 저작권보호 및 음란자료 예방을 통해 올바른 컨텐츠 판매문화가 이루어 질 수 있도록 노력하고 있사오니 다음사항에 대하여 협조해주시기 바랍니다.
1. 판도라웹하드에는 판매자님이 저작권을 가지고 있는 파일이나 저작권자의 배포 및 전송 동의를 받은 파일을 등록할 수 있습니다.
2. 법에 저촉되거나 미풍양속을 해치는 음란성 자료는 등록할 수 없으며 이를 판매, 배포할 시에는 관련법 등의 의해 처벌 받을 수 있습니다.
3. 타인의 저작권을 침해하는 자료를 무단배포 시 저작권법 등 관련법에 의해 처벌 받을 수 있습니다.
4. 판도라웹하드에서 판매하는 컨텐츠에 대한 민형사상의 책임은 등록한 회원님에게 있으며, 회사는 이에 대해 일체의 책임을 지지 않습니다.
5. 컨텐츠 판매는 판도라웹하드에서 허용하는 형태로 진행 되어야하며 이에 부합하지 않을 경우 컨텐츠 판매가 취소될 수 있습니다.
▶ 판도라웹하드는 관련 법률에 의거하여 위 내용에 해당하는 사실이 접수되어 적발될 시 해당고객에게 사전 공지없이관련 자료 삭제 및 이용정지 를 할 수 있습니다.
▶ 특히 음란물 유포 행위에 대해서는 회원 탈퇴를 원칙 으로 처리되니 이점 유의하시기 바랍니다.
▶ 판도라웹하드 업도르자료는 홍보 마케팅 자료로도 이용할 수 있습니다.
                </textarea></td></tr>
            <tr><td><input type="checkbox" name="agree_chk">위 점을 확인하였고 동의합니다.<br><br><br><br></td></tr>
          </table></td></tr>
</table>
<center>
<input type="submit" value="신청하기"><p>
<a href="main.do">돌아가기</a>
</center>
<p><br>
</form>

</body>
</html>