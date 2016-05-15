<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:include page="banner.jsp" />
		<a href="${pageContext.request.contextPath}/user/pw.html">Đổi mật khẩu</a>
  <a href="${pageContext.request.contextPath}/user/logout.html">Đăng xuất</a>
	<div id="center">
		<div id="title">Đổi mật khẩu</div>
		
		<form name="login" onsubmit="return checkField()"
			action="password.html" method="post">
			<input type="hidden" name="username" value="${username }">
			<table width="100%">

				<tr>
					<td width="45%" align="right">Mật khẩu mới</td>
					<td><input type="password" name="newpw" /></td>
					<td><label id="lblUsername"></label></td>
				</tr>
				<tr>
					<td width="45%" align="right">Xác nhận</td>
					<td><input type="password" name="confirm" /></td>
					<td><label id="lblPassword"></label></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><input type="submit"
						value="Đổi mật khẩu" /></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><font color="red">${message}</font></td>
				</tr>
			</table>
		</form>
	</div>
	


</body>
</html>