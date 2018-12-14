<%@ page import="com.loginex.dao.*" %>
<%@ page import="com.loginex.dto.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="dto" class="com.loginex.dto.DTO"/>
<jsp:setProperty name="dto" property="*" />

	<%
		DAO dao = DAO.getInstance();
		if(dao.findId(dto.getId()) == DAO.USERINFO_EXISTENT){
	%>
			<script type="text/javascript">
				alert("아이디 중복입니다.");
				history.back();
			</script>
	<%
		}else{
			int ri = dao.insert(dto);
			if(ri == DAO.USERINFO_JOIN_SUCCESS){
				session.setAttribute("id", dto.getId());
	%>
			<script type="text/javascript">
				alert("회원가입이 완료되었습니다.");
				document.location.href="Login.jsp";
			</script>
	<%
			}
		}
	%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>