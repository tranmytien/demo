<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String tendn = request.getParameter("tendn");
	String err_tendn = (String) request.getAttribute("err_tendn");
	String[] quocgias = new String[]{"Việt Nam", "Lào", "Camphuchia",
	"Thái Lan", "Trung Quốc", "Nhật Bản","Hàn Quốc", "Singapo",
	" Nuoc Khac"};

	// Lay du lieu loi:
	if (tendn == null)
		tendn = "";
	if (request.getAttribute("tendn") != null)
		tendn = (String) request.getAttribute("tendn");
	
	if (err_tendn == null)
		err_tendn = "";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Nha Hang Ba Mien</title>
</head>

<link rel="stylesheet" type="text/css" href="css/Loginstyle.css" />
<script type="text/javascript" src="js/jquery.validationEngine.js"></script>
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

<script language="javascript" type="text/javascript">
	function check() {
		if (document.dangky.tendn.value == "") {
			alert("Bạn chưa nhập Tên Đăng Nhập!");
			document.dangky.tendangnhap.focus();
			return false;
		}
		
		if (document.dangky.matkhau.value == "") {
			window.alert("Bạn Chưa Nhập Mật Khẩu.");
			document.dangky.matkhau.focus();
			return false;
		}
		if (document.dangky.re_matkhau.value == "") {
			window.alert("bạn phải nhập lại mật khẩu");
			document.dangky.re_matkhau.focus();
			return false;
		}
		if (document.dangky.matkhau.value != document.dangky.re_matkhau.value) {
			window.alert("Mật Khẩu Không Khớp.");
			document.dangky.re_matkhau.focus();
			return false;
		}
		if (document.dangky.ten.value == "") {
			window.alert("Bạn chưa nhập tên");
			document.dangky.ten.focus();
			return false;

		}
		
		var email = document.forms["dangky"]["email"].value;
		var aCong = email.indexOf("@");
		var dauCham = email.lastIndexOf(".");
		if (email == "") {
			alert("Email không được để trống");
			return false;
		} else if ((aCong < 1) || (dauCham < aCong + 2)
				|| (dauCham + 2 > email.length)) {
			alert("Email bạn điền không chính xác");
			return false;
		}
		if (document.dangky.sodienthoai.value == "") {
			alert("Bạn phải nhập số điện thoại");
			document.dangky.sodienthoai.focus();
			return false;
		
		}
		
		if (document.dangky.sodienthoai.value.length > 14
				|| document.dangky.sodienthoai.value.length < 10) {
			alert("Số điện thoại phải từ 10-13 số");
			document.dangky.sodienthoai.focus();
			return false;
		}
		
		

		if (document.dangky.diachi.value == "") {
			alert("Bạn phải nhập địa chỉ");
			document.dangky.diachi.focus();
			return false;
		}
		return true;
	}
</script>
<script>
function keyPhone(e)
{
var keyword=null;
    if(window.event)
    {
    keyword=window.event.keyCode;
    }else
    {
        keyword=e.which; //NON IE;
    }
    
    if(keyword<48 || keyword>57)
    {
        if(keyword==48 || keyword==127)
        {
            return ;
        }
        return false;
    }
}

</script>

<body bgcolor="#FFFFFF" onload="Captcha();">

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
					<form action="DangKyServlet" method="post" name="dangky"
						onsubmit="return check();">
						<td><span>THÔNG TIN TÀI KHOẢN</span></td>
						<tr>

							<table width="886" id="form" class="table">



								<tr>
									<td width="213">
										<p>
											<span>Tên Đăng Nhập <strong
												style="color: RED; font-weight: normal">(*)</strong></span>
									</td>
									<td><input type="text" name="tendn" id="hoten"
										value="<%=tendn%>" maxlength="255" /><%=err_tendn%></td>
								</tr>


								<tr>
									<td>
										<p>
											<span>Mật Khẩu <strong
												style="color: RED; font-weight: normal">(*)</strong></span>
									</td>
									<td><input type="password" name="matkhau" id="hoten"
										value="" maxlength="255" /></td>
									</p>
								</tr>

								<tr>
									<td>
										<p>
											<span>Nhập Lại Mật Khẩu <strong
												style="color: RED; font-weight: normal">(*)</strong></span>
									</td>
									<td><input type="password" name="re_matkhau" id="hoten"
										value="" maxlength="255" /></td>
									</p>
								</tr>
								<td><span>THÔNG TIN CÁ NHÂN</span></td>

								<tr>
									<td>
										<p>
											<span>Họ Tên<strong
												style="color: RED; font-weight: normal">(*)</strong></span>
									</td>
									<td><input type="text" name="ten" id="hoten"  value=""
										maxlength="255" /></td>
									</p>
								</tr>

								<tr>
									<td><span>Email <strong
											style="color: RED; font-weiaght: normal">(*)</strong></span></td>
									<td><input type="text" name="email" id="email" value=""
										maxlength="255" /></td>

								</tr>
								<tr>
									<td>
										<p>
											<span>Điện Thoại<strong
												style="color: RED; font-weight: normal">(*)</strong></span>
									</td>
									<td><input type="text" name="sodienthoai" id="hoten"  
										value="" maxlength="14" onkeypress="return keyPhone(event);" /></td>
									</p>
								</tr>
								<tr>
									<td><span>Ngày Sinh <strong
											style="color: RED; font-weight: normal"></strong></span></td>
									<td><select name="day">
											<%
												for (int day = 1; day <= 31; day++) {
											%>
											<option value="<%=day%>"><%=day%></option>
											<%
												}
											%>
									</select> <select name="month">
											<%
												for (int mounth = 1; mounth <= 12; mounth++) {
											%>
											<option value="<%=mounth%>"><%=mounth%></option>
											<%
												}
											%>
									</select> <select name="year">
											<%
												for (int year = 1970; year <= 2020; year++) {
											%>
											<option value="<%=year%>"><%=year%></option>
											<%
												}
											%>
									</select> <font style="color: red;"></font></td>

								</tr>
								<tr>
									<td>
										<p>
											<span>Giới Tính</span>
									</td>
									<td><input type="radio" name="gioitinh" value="nam"
										checked="checked" maxlength="255" />Nam <input type="radio"
										name="gioitinh" value="nu" />Nữ <input type="radio"
										name="gioitinh" value="khac" />Khác</td>
									</p>
								</tr>
								<tr>
									<td>
										<p>
											<span>Nghề Nghiệp</span>
									</td>
									<td><input name="nghenghiep" id="hoten" value=""
										maxlength="255"></td>
									</p>
								</tr>
								<tr>
									<td>
										<p>
											<span>Quốc Gia<strong
												style="color: RED; font-weight: normal">(*)</strong></span>
									<td><select name="quocgia" id="hoten">
											<%
												for (String qg : quocgias) {
											%>

											<option value="<%=qg%>"><%=qg%></option>
											<%
												}
											%>

									</select></td>
									</p>
								</tr>
								<tr>
									<td>
										<p>
											<span>Địa Chỉ<strong
												style="color: RED; font-weight: normal">(*)</strong></span>
									</td>
									<td><textarea name="diachi" id="hoten" value=""
											maxlength="255"></textarea></td>
									</p>
								</tr>

							</table>

							<table class="table2">

								<strong style="color: RED; font-weight: normal">(*)</strong> là
								trường bắt buộc nhập
								<div>
									<button type="submit" class="button">Lưu</button>
									<button type="reset" class="button">Hủy</button>
								</div>
							</table>
					</form>
				</div>
				<!--đống div show-->
				<! Stop here Dung lam gi nua>
				</!>
			</div>
			<div id="footer">Thuc Hien boi Team 8 TKHDT</div>
		</div>
</body>
</html>
