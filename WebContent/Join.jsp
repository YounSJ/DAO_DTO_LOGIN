<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<script type="text/javascript">
	function infoConfirm(){
		if(!document.InfoUser.name.value){
			alert("이름은 필수입니다.");
			InfoUser.name.focus();
			return false;
		}
		
		if(!document.InfoUser.id.value){
			alert("아이디는 필수입니다.");
			InfoUser.id.focus();
			return false;
		}
		
		if(!document.InfoUser.pw.value){
			alert("비밀번호는 필수입니다.");
			InfoUser.pw.focus();
			return false;
		}
		
		if(document.InfoUser.pw.value != document.InfoUser.pwconfig.value){
			alert("비밀번호가 일치하지 않습니다.");
			InfoUser.pw.focus();
			return false;
		}
	}

</script>
</head>
<body>
	<form action="JoinOK.jsp" method="post" name="InfoUser" onsubmit="return infoConfirm()">
		<table>
			<tbody>
				<tr>
					<td>이름</td><td><input type="text" name="name" placeholder="이름을 입력해주세요." size="25"></td>
				</tr>
				<tr>
					<td>아이디</td><td><input type="text" name="id" placeholder="아이디를 입력해주세요." size="25"></td>
				</tr>
				<tr>	
					<td>비밀번호</td><td><input type="password" name="pw" placeholder="비밀번호를 입력해주세요." size="25"></td>
				</tr>
				<tr>
					<td>비밀번호확인</td><td><input type="password" name="pwconfig" placeholder="한번 더 입력해주세요." size="25"></td>
				</tr>	
				
			</tbody>
		</table>
		<input type="submit" value="완료"> <input type="reset" value="다시입력"> <input type="button" value="뒤로가기" onclick="javascript:window.location='MainPage.jsp'">
	</form>
</body>
</html>