<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Kí Tài Khoản</title>
<link href="/NLHospital/resource/css/index.css" rel="stylesheet"
	type="text/css">
<link href="/NLHospital/resource/css/validationEngine.jquery.css"
	rel="stylesheet" type="text/css">
<link href="/NLHospital/resource/css/template.css" rel="stylesheet"
	type="text/css">
<script src="/NLHospital/resource/js/jquery.js"></script>
<script src="/NLHospital/resource/js/amazingslider.js"></script>
<link rel="stylesheet" type="text/css"
	href="sliderengine/amazingslider-1.css">
<script src="/NLHospital/resource/js/initslider-1.js"></script>
<script src="/NLHospital/resource/js/jquery.js"></script>
<script src="/NLHospital/resource/js/jquery-1.8.2.min.js"></script>
<script src="/NLHospital/resource/js/jquery.validationEngine-vi.js"></script>
<script src="/NLHospital/resource/js/jquery.validationEngine.js"></script>
<link href="/NLHospital/resource/css/dangky.css" rel="stylesheet"
	type="text/css" />
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
							<strong>Bệnh viện</strong>
						</p>
						<strong>Đại Học Nông Lâm </strong> <a
							href="${pageContext.request.contextPath}/user/dangnhap.html"><input
							type="button" class="dangnhap" value="Đăng nhập"></a>
					</div>
				</div>
				<ul class="menu">

					<li class="menubutton"><a
						href="${pageContext.request.contextPath}/user/trangchu.html"
						class="myButton">Trang chủ</a></li>
					<li class="menubutton"><a
						href="${pageContext.request.contextPath}/user/gioithieu.html"
						class="myButton">Giới thiệu</a>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/user/trangchu.html">Trang
									chu</a></li>
							<li><a
								href="${pageContext.request.contextPath}/user/giothieu.html">Gi?i
									thi?u b?nh vi?n</a></li>
							<li><a
								href="${pageContext.request.contextPath}/user/bacsi.html">Ð?i
									ngu bác si</a></li>
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
	<div class="contenttbn">
		<div class="ctleft">
			<div class="buttonxhs">Đăng Ký</div>
			<br>
			<div class="formtbn">


				<form onsubmit="return validateForm()"
					action="${pageContext.request.contextPath}/benhnhan/dangkitaikhoan.html"
					method="post" name="myform">
					<table width="444" border="0">
						<tr>
							<th width="214" height="48" scope="row">Tên đăng nhập</th>
							<td width="214"><input type="text" id="them" name="mabn"
								class="validate[required] text-input"></td>
						</tr>
						<tr>
							<th height="48" scope="row">Mật khẩu</th>
							<td><input type="password" id="them" name="tenbn"></td>
						</tr>
						<tr>
							<th height="48" scope="row">Địa chỉ email</th>
							<td><input type="text" id="them" name="mail"></td>
						</tr>
						<tr>
							<th height="48" scope="row">Số điện thoại</th>
							<td><input type="text" id="them" name="sdt"></td>
						</tr>
						<tr>
							<th height="26" scope="row"></th>
							<td><input type="submit"
								value="&nbsp;&nbsp;Ðăng ký&nbsp;&nbsp;"
								onclick="return confirm('Bạn chắc chắn đăng ký tài khoản khám bệnh chứ')"></td>
						</tr>
					</table>

				</form>
			</div>
		</div>

	</div>
</body>
</html>
