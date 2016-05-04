<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="controller.LoginServlet"%>
<%@ page import="datadao.TaiKhoan"%>
<%@ page import="controller.ConnectSQL"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	String err_username = "bạn chưa đăng nhập tên";
	String err_password = "bạn chưa nhập mật khẩu";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Nha Hang Ba Mien</title>
</head>
<link rel="stylesheet" type="text/css" href="css/Loginstyle.css" />
<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript" charset="UTF-8">
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(window).scrollTop() > 50) {
				$("#menu").css("position", "fixed");
			} else {
				$("#menu").css("position", "static");
			}
		});
	});
</script>
<body bgcolor="#FFFFFF">

	<div class="main" id="main">
		<div class="header" id="header">
			<div class="banner" id="banner">
				<div id="tenNh">Nhà Hàng Ba Miền</div>
			</div>
			<div id="menu">
				<!--Day la phan  Flash Menu -->
				<div id="FlashMenuLabs">
					Ban phai cai dat Flash Player de xem phan menu nay</br> <a
						href="http://www.adobe.com/go/getflashplayer">Tai Flash Player
						Tai day</a>
				</div>
				<script type="text/javascript">
					// <![CDATA[
					var so = new SWFObject("menu.swf", "menu", "1366", "90",
							"8", "#000000");

					so.addParam("wmode", "transparent");
					so.addParam("scale", "noscale");
					so.addParam("salign", "TL");
					so.write("FlashMenuLabs");
					// ]]>
				</script>
			</div>
			<div class="body" id="body">
				<! Moi nguoi bat dau lam tu day>
				</!>
				<div class="center" id="show">
					<!--mở div show-->

					<center>
						<p class="dangki">ĐĂNG NHẬP</p>
					</center>
<center>
					<form action="LoginServlet" method="toDo">
			<table class="table1">
				<tr>
					<td><a>Username:</a></td>
							<td><input type="text" name="taikhoan" id="hoten"
								value="${cookie['taikhoan'].value}" /><font color="red">
									 ${requestScope.err_user}</font></td>
				</tr>
				<tr>
					<td><a>Password:</a></td>
					<td><input type="password" name="matkhau" id="hoten"
						value="${cookie['matkhau'].value}" maxlength="255"/><font color="red">
							${requestScope.err_password}</font></td>
				</tr>
			</table>
			<table class="table2">
				<tr>
					<td><b><input type="checkbox" name="nhom" /></b></td>
					<td ><p style="margin-left: -60px; font-size: 14px;">Ghi nhớ tên truy cập và mật khẩu ?</p></td>
				</tr>
				<tr>
					<td><b><input type="submit"   value="Đăng Nhập" class="button"/></b></td>
					<td><input type="reset" value="Hủy Bỏ" class="button"/></td>
				</tr>
			</table>
		</form>
	<div class="quenmatkhau">
			<a href="DoiMatKhau.jsp">Quên mật khẩu ?</a><br></br>
		</div>
		</center>
		<hr />

	</div>
				<!--đống div show--> <! Stop here Dung lam gi nua></!> 
			</div>
			<div id="footer">Thuc Hien boi Team 8 TKHDT</div>
		</div>
</body>
</html>
