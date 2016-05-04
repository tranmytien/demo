<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm Bệnh Nhân</title>
<link href="/NLHospital/resource/css/index.css" rel="stylesheet"
	type="text/css">
<link href="/NLHospital/resource/css/ttsk.css" rel="stylesheet"
	type="text/css">
<script src="/NLHospital/resource/js/jquery.js"></script>
<script src="/NLHospital/resource/js/amazingslider.js"></script>
<link rel="stylesheet" type="text/css"
	href="sliderengine/amazingslider-1.css">
<script src="/NLHospital/resource/js/initslider-1.js"></script>
</head>

<body>


	<div class="container">
		<div class="header">
			<div class="leftheader">
				<a href="#"><img
					src="/NLHospital/resource/image/11351448_641899752611106_852087769_n.jpg"
					alt="Insert Logo Here" name="Insert_logo" width="200" height="201"
					id="Insert_logo" style="background-color: #8090AB; display: block;" /></a>
			</div>
			<div class="rightheader">
				<div class="topheader">
					<div id="eff6">
						<p>
							<strong>Bệnh viện</strong>
						</p>
						<strong>Đại Học Nông Lâm </strong>
						 <a href="${pageContext.request.contextPath}/user/dangnhap.html"><input type="button" class="dangnhap" value="Đăng Nhập"></a>
					</div>
				</div>
				<ul class="menu">

					<li class="menubutton"><a
						href="${pageContext.request.contextPath}/user/trangchu.html"
						class="myButton">Trang chu</a></li>
					<li class="menubutton"><a
						href="${pageContext.request.contextPath}/user/gioithieu.html"
						class="myButton">Giới thiệu</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/user/trangchu.html">Trang
									chu</a></li>
							<li><a
								href="${pageContext.request.contextPath}/user/giothieu.html">Giới
									thiệu bệnh viện</a></li>
							<li><a
								href="${pageContext.request.contextPath}/user/bacsi.html">Đội
									ngũ bác sĩ</a></li>
						</ul></li>
					<li class="menubutton4"><a
						href="${pageContext.request.contextPath}/user/xemhoso.html"
						class="myButton1">Ho So Benh An</a></li>
					<li class="menubutton2"><a
						href="${pageContext.request.contextPath}/user/datlich.html"
						class="myButton2">Dang ky lich kham benh</a></li>
					<li class="menubutton3"><a
						href="${pageContext.request.contextPath}/user/ttsk.html"
						class="myButton3">Cham soc suc khoe</a></li>
					<li class="menubutton3"><a
						href="${pageContext.request.contextPath}/user/tuvan.html"
						class="myButton3">Tu van truc tuyen</a></li>
					<li class="menubutton1"><a
						href="${pageContext.request.contextPath}/user/lienhe.html"
						class="myButton">Lien he</a></li>
				

				</ul>
			</div>

			<!-- end .header -->
		</div>


	</div>
	<div>

  <a href="${pageContext.request.contextPath}/user/logout.html">Đăng xuất</a>
		<form
			action="${pageContext.request.contextPath}/benhnhan/thembenhnhan.html" method="post">
			<table width="100%" border="0">

				<tr>

					<th id="label" align="right">Họ Tên:</th>
					<th align="left"><input type="text" id="them" name="tenbn"></th>
				</tr>

				<tr>
					<th id="label" align="right">Mã BN:</th>
					<th align="left"><input type="text" id="them" name="mabn"></th>
				</tr>
				<tr>
					<th id="label" align="right">Địa chỉ:</th>
					<th align="left"><input type="text" id="them" name="diachi"></th>
				</tr>
				<tr>
					<th id="label" align="right">Cân nặng:</th>
					<th align="left"><input type="text" id="them" name="cannang"></th>
				</tr>
				<tr>
					<th id="label" align="right">SĐT:</th>
					<th align="left"><input type="text" id="them" name="sdt"></th>
				</tr>
				<tr>
					<th id="label" align="right">Tình trạng:</th>
					<th align="left"><input  type="text" id="them" name="tinhtrangsk"></th>
				</tr>
				<tr>
					<th id="label" align="right">Phòng:</th>
					<th align="left"><input type="text" id="them" name="phongbenh"></th>
				</tr>
				<tr>
					<th id="label" align="right">Khoa:</th>
					<th align="left"><input type="text" id="them" name="khoa"></th>
				</tr>
				<tr>
					<th id="label" align="right">Bác sĩ:</th>
					<th align="left"><input type="text" id="them" name="bacsi"></th>
				</tr>
				<tr>
					<th id="label" align="right">Toa thuốc:</th>
					<th align="left"><input type="text" id="them" name="toathuoc"></th>
				</tr>
				<tr>
					<th id="label" align="right">Ngày khám:</th>
					<th align="left"><input type="text" id="them" name="ngaykham"></th>
				</tr>
				<tr>
					<th id="label" align="right">Ngày xuất viện:</th>
					<th align="left"><input type="text" id="them" name="ngayxuatvien"></th>
				</tr>
				<tr>
					<th id="label" align="right">Viện phí:</th>
					<th align="left"><input type="text" id="them" name="vienphi"></th>
				</tr>




					<tr>
						<th><input type="submit" value="Thêm bệnh nhân" id="buttonThem"></th>
						<th align="left"><a href="${pageContext.request.contextPath}/benhnhan/all.html">
							Xem hồ sơ tất cả bệnh nhân</a> | 
						<a href="${pageContext.request.contextPath}/benhnhan/them.html">
							Thêm bệnh nhân</a></th>
					</tr>
			</table>
		</form>
	</div>
</body>
</html>
