<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin</title>
</head>
<body>

	<jsp:include page="banner.jsp"></jsp:include>
  <a href="${pageContext.request.contextPath}/user/logout.html">Đăng xuất</a>
	<form
		action="${pageContext.request.contextPath}/benhnhan/suabenhnhan.html"
		method="get">
		<label
			style="margin-top: 100px; margin-left: 400px; color: blue; font-style: italic;">Nhap
			ma benh nhan can sửa: </label><input type="text"
			style="height: 25px; width: 60px;" name="mabn"> <input
			type="submit" value="Tim"
			style="border-radius: 5px; font-style: italic; color: red; width: 50px;">
	</form>
	<table width="100%">
		<tr>
			<td id="label" width="10%">Họ Tên</td>
			<td id="label" width="10%">Mã bệnh nhân</td>
			<td id="label" width="10%">Địa chỉ</td>
			<td id="label" width="5%">Cân nặng</td>
			<td id="label" width="10%">SĐT</td>
			<td id="label" width="5%">Tình trạng</td>
			<td id="label" width="8%">Phòng</td>
			<td id="label" width="8%">Khoa</td>
			<td id="label" width="5%">Bác sĩ</td>
			<td id="label" width="10%">Toa thuốc</td>
			<td id="label" width="10%">Ngày khám</td>
			<td id="label" width="10%">Ngày xuất viện</td>
			<td id="label" width="10%">Viện phí</td>
		</tr>

		<c:forEach var="bn" items="${benhnhan }">
			<tr>
				<td width="12%">${bn.tenbn}</td>

				<td width="10%">${bn.mabn}</td>
				<td width="10%">${bn.diachi}</td>
				<td width="10%">${bn.cannang}</td>
				<td width="10%">${bn.sdt}</td>
				<td width="10%">${bn.tinhtrangsk}</td>
				<td width="10%">${bn.phongbenh}</td>
				<td width="10%">${bn.khoadieutri}</td>
				<td width="10%">${bn.bacsidieutri }</td>
				<td width="10%">${bn.toathuoc}</td>
				<td width="10%">${bn.ngaykham}</td>
				<td width="10%">${bn.ngayxuatvien}</td>
				<td width="10%">${bn.vienphi}</td>

			</tr>
		</c:forEach>
		<tr>
			<th align="left"><a
				href="${pageContext.request.contextPath}/benhnhan/all.html"> Xem
					hồ sơ tất cả bệnh nhân</a> |</th>
			<th align="left"><a
				href="${pageContext.request.contextPath}/benhnhan/them.html">
					Thêm bệnh nhân</a> |</th>
			<th align="right"><a
				href="${pageContext.request.contextPath}/benhnhan/suabenhnhan1.html">
					Sửa bệnh nhân</a></th>
			<th align="right"><a
				href="${pageContext.request.contextPath}/benhnhan/xoabenhnhan1.html">
					Xoa bệnh nhân</a></th>
		</tr>
	</table>

	Admin nè
</body>
</html>