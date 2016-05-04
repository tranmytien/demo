<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nha Hang Ba Mien</title>
</head>
<link rel="stylesheet" type="text/css" href="css/LienHestyle.css" />
<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
<script src="ckfinder/ckfinder.js" language="javascript"></script>
<script src="ckeditor/ckeditor.js" language="javascript"></script>
<script type="text/javascript">
	var editor = null;
	window.onload = function() {
		editor = CKEDITOR.replace('text'); // ở biến “text” là nơi các bạn khai báo id và name cho tag <textarea>
		CKFinder.setupCKEditor(editor, '/ckfinder/');
	};
</script>

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
					function checkinput() {
						hoten = document.lienheform.hoten;
						email = document.lienheform.email;
						tuoi = document.lienheform.tuoi;
						nghenghiep = document.lienheform.nghenghiep;
						diachi = document.lienheform.diachi;
						dienthoai = document.lienheform.dienthoai;
						tieude = document.lienheform.tieude;
						noidung = document.lienheform.noidung;
						antoan = document.lienheform.antoan;
						reg1 = /^[0-9A-Za-z]+[0-9A-Za-z_]*@[\w\d.]+.\w{2,4}$/;
						testmail = reg1.test(email.value);
						if (!testmail) {
							alert("Địa chỉ email không hợp lệ");
							email.focus();
							return false;
						}
						if (isNaN(dienthoai.value)) {
							alert("Số điện thoại chưa chính xác");
							dienthoai.focus();
							return false;
						}
						return true;
					}
				</script>
			</div>
			<div class="body" id="body">
				<div class="center" id="show">
					<!--mở div show-->
					<div class="rightyahoo">
						<a href="ymsgr:SendIM?mytien244"> <img border="0" id="yahoo"
							src="http://opi.yahoo.com/online?u=mytien244&amp;m=g&amp;t=2"></a>
						
					</div>
					<!-- close div rightyahoo -->

					<form action="LienHeServlet" method="post" name="lienheform"
						id="formlienhe" onsubmit="return checkinput();">
						<center>
							<p class="lienhe">LIÊN HỆ</p>
							<table width="819" id="form">
								<tr>
									<td width="109">
										<p>
											<span>Họ tên</span>
									</td>
									<td width="779"><input type="text" name="name_ct"
										id="hoten" /></td>

								</tr>
								<tr>
									<td id="mail"><span>Email <strong
											style="color: RED; font-weight: normal">(*)</strong></span></td>
									<td><input type="text" name="email_ct" id="email" value=""
										maxlength="255"></td>
								</tr>
								<tr>
								<tr>
									<td>
										<p>
											<span>Yêu cầu về</span>
									</td>
									<td><select id="chonlua" name="chonluayeucau">
											<option value="Góp ý" name="chonluayeucau">Góp ý</option>
											<option value="Thắc mắc" name="chonluayeucau">Thắc
												mắc</option>
											<option value="Báo cáo về 1 vấn đề" name="chonluayeucau">Báo
												cáo về 1 vấn đề</option>
									</select></td>
								</tr>
								<tr>
									<td>
										<p>
											<span>Tiêu đề</span>
									</td>
									<td><input type="text" name="tieudehoi" id="tieude"
										value="" maxlength="255"></td>
								</tr>
								<tr>
									<td>
										<p>
											<span>Nội dung</span>
									</td>
									
									<td id="editor"><textarea id="ckeditor"
		class="ckeditor" name="ckeditor"></textarea></td>
		
								</tr>

							</table>
					</form>

					<p class="line">
						<strong style="color: RED; font-weight: normal">(*)</strong> là
						trường bắt buộc nhập
					</p>

					<p align="center">
						<input type="submit" name="gui" id="gui" value="Gửi"
							class="button"> <input type="reset" name="reset"
							id="reset" value="Làm lại" class="button">
					</p>
					</center>


				</div>
				<!--đống div show-->
				<! Stop here Dung lam gi nua> </!> 
			</div>

			<div id="footer">Thuc Hien boi Team 8 TKHDT</div>
		</div>
</body>
</html>
