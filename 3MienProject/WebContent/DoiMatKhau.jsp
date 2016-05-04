<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Nha Hang Ba Mien</title>
</head>
<link rel="stylesheet" type="text/css" href="css/LienHestyle.css" />
<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript" charset="UTF-8">
		$(document).ready(function(){
			$(window).scroll(function() {
				if ($(window).scrollTop() > 50) {
			$("#menu").css("position", "fixed");
												}
			else {
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
					Ban phai cai dat Flash Player de xem phan menu nay<br/> <a
						href="http://www.adobe.com/go/getflashplayer">Tai Flash Player
						Tai day</a>
				</div>
				<script type="text/javascript">
    // <![CDATA[
        var so = new SWFObject("menu.swf", "menu", "1366", "90", "8", "#000000");
        
        so.addParam("wmode", "transparent");
        so.addParam("scale", "noscale");
        so.addParam("salign", "TL");    
        so.write("FlashMenuLabs");
    // ]]>
    </script>
			</div>
			<div class="body" id="body">
				<!-- Moi nguoi bat dau lam tu day  -->
				
				<div class="center" id="show">
					<!--mở div show-->

					<center><p class="dangki">ĐĂNG KÍ TÀI KHOẢN</p></center>
		
	<form action="#" method="POST" name="lienheform" id="formlienhe">
 	<table width="886" id ="form">
  
  		<tr>
  		<td width="213">
		<p><span>Email:<strong style="color:RED; font-weight:normal"></strong></span>
		</td>
		<td width="661">
		<input type="text" name="tendn" id="hoten" value="" maxlength="255">
		</td>
	<td width="10"></td>
	</tr>
	
	 
  <tr>
  		<td>
		<p><span>Mật Khẩu :<strong style="color:RED; font-weight:normal"></strong></span></p>
		</td>
		<td>
		<input type="password" name="tendn" id="hoten" value="" maxlength="255">
		</td>
	
	</tr>
	</table>
	</form>
			
	</div>
	<!--đống div show-->
   		
	</div>
			<div id="footer">Thuc Hien boi Team 8 TKHDT</div>
		</div>
</body>
</html>