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
					<td>���̵�</td><td><input type="text" name="id" placeholder="���̵� �Է����ּ���." size="25"></td>
				</tr>
				<tr>
					<td>��й�ȣ</td><td><input type="password" name="pw" placeholder="��й�ȣ�� �Է����ּ���." size="25"></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="�α���"> <input type="button" value="ȸ������" onclick="javascript:window.location='Join.jsp'">
	</form>
	
</body>
</html>