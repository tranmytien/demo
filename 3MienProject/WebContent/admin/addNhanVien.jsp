<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add admin</title>
<link href="http://localhost:8080/3MienProject/admin/cssad/adminstyle.css" rel="stylesheet"></link>

</head>
<body>
	<center>
		<form class="form"  action="/3MienProject/ThemNhanVien" method="post">
		<h3 style="margin-left: -400px;">Thêm nhân viên</h3>
			<table class="bang">
				<tr>
					<td style="width: 170px; height: 26px; color: #06C;">Id</td>
					<td style="width: 170px; height: 26px; color: #06C;">Họ tên</td>
					<td style="width: 170px; height: 26px; color: #06C;">Email</td>
					<td style="width: 170px; height: 26px; color: #06C;">Số điện thoại</td>
					<td style="width: 170px; height: 26px; color: #06C;">Ngày vào làm</td>
					<td style="width: 170px; height: 26px; color: #06C;">Chức vụ</td>
					<td style="width: 170px; height: 26px; color: #06C;">Lương</td>
					
				</tr>
				<tr>
					<td><input type="text" style="width: 170px; height: 26px;"name="id"> </td>
					<td><input type="text" style="width: 170px; height: 26px;" name="hoten"> </td>
					<td><input type="text" style="width: 170px; height: 26px;" name="email"> </td>
					<td><input type="text" style="width: 170px; height: 26px;" name="sodienthoai"> </td>
					<td><input type="text" style="width: 170px; height: 26px;"name="ngayvao"> </td>
					<td><input type="text" style="width: 170px; height: 26px;"name="chucvu"> </td>
					<td><input type="text" style="width: 170px; height: 26px;"name="luong"> </td>
					
				</tr>
			</table>
			<br>
			 <div class="buttonend" style="margin-left: -400px;">
                        <button type="submit" class="button1" >Lưu </button>
						<button type="reset" class="button1">Hủy </button>
                        </div>
		</form>
	</center>
</body>
</html>