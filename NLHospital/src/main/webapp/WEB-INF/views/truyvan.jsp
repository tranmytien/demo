<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Truy Vấn Bệnh Nhân</title>
</head>
<body>
<jsp:include page="banner.jsp"></jsp:include>
<br>
<br>
<br>
<form action="${pageContext.request.contextPath}/benhnhan/timkiemtheomabn.html" method="get">
<label style="margin-top: 100px; margin-left: 400px; color: blue; font-style: italic;">Vui lòng nhập mã bệnh nhân cần tra cứu </label><input type="text" style="height:25px; width: 60px;" name="mabn">
<input type="submit" value="Tìm bệnh nhân" id="buttontimbenhnhan">
</form>
</body>
</html>