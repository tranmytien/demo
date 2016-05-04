
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="controller.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AdminBAMIEN</title>
<link href="cssad/adminstyle.css" rel="stylesheet"></link>
</head>

<body>
<div class="header"><a class="bamien">BAMIENADMIN</a></div>
<div class="left">
		<ul class="menu">
			<li id="li"><a href="index1.jsp"><span class="thucdon"></span>Trang chủ</a></li>
			<li id="li"><a href="thucdon.jsp"><span class="thucdon"></span>Thực đơn</a></li>
			<li id="li"><a href="khuyenmai.jsp"><span class="thucdon"></span>Khuyến mãi</a></li>
			<li id="li"><a href="khachhang.jsp"><span class="thucdon"></span>Khách hàng</a></li>
			<li id="li"><a href="nhanvien.jsp"><span class="thucdon"></span>Nhân viên</a></li>
			<li id="li"><a href="quantri.jsp"><span class="thucdon"></span>Quản trị</a></li>
            <li id="li"><img src="images/user.jpg" style="width:25px; height:25px; margin-left:-15px;"/><a href="http://localhost:8080/3MienProject/Login.jsp"><span class="thucdon"></span>Login page</a></li>
		</ul>
	</div>
    <div class="right">
    	<div class="tieude" style="text-align:center; font-weight:bold; font-size:24px;"><span>TRANG CHỦ</span></div>
		Tạm thơi
    </div>
</body>
</html>
