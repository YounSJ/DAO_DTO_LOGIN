<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<script type="text/javascript">
	function infoConfirm(){
		if(!document.InfoUser.name.value){
			alert("�̸��� �ʼ��Դϴ�.");
			InfoUser.name.focus();
			return false;
		}
		
		if(!document.InfoUser.id.value){
			alert("���̵�� �ʼ��Դϴ�.");
			InfoUser.id.focus();
			return false;
		}
		
		if(!document.InfoUser.pw.value){
			alert("��й�ȣ�� �ʼ��Դϴ�.");
			InfoUser.pw.focus();
			return false;
		}
		
		if(document.InfoUser.pw.value != document.InfoUser.pwconfig.value){
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
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
					<td>�̸�</td><td><input type="text" name="name" placeholder="�̸��� �Է����ּ���." size="25"></td>
				</tr>
				<tr>
					<td>���̵�</td><td><input type="text" name="id" placeholder="���̵� �Է����ּ���." size="25"></td>
				</tr>
				<tr>	
					<td>��й�ȣ</td><td><input type="password" name="pw" placeholder="��й�ȣ�� �Է����ּ���." size="25"></td>
				</tr>
				<tr>
					<td>��й�ȣȮ��</td><td><input type="password" name="pwconfig" placeholder="�ѹ� �� �Է����ּ���." size="25"></td>
				</tr>	
				
			</tbody>
		</table>
		<input type="submit" value="�Ϸ�"> <input type="reset" value="�ٽ��Է�"> <input type="button" value="�ڷΰ���" onclick="javascript:window.location='MainPage.jsp'">
	</form>
</body>
</html>