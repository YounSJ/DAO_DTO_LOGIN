<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginOK.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<td>아이디</td><td><input type="text" name="id" placeholder="아이디를 입력해주세요." size="25"></td>
				</tr>
				<tr>
					<td>비밀번호</td><td><input type="password" name="pw" placeholder="비밀번호를 입력해주세요." size="25"></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="로그인"> <input type="button" value="회원가입" onclick="javascript:window.location='Join.jsp'">
	</form>
	
</body>
</html>