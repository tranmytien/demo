<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="javax.servlet.http.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Nha Hang Ba Mien</title>

<link rel="stylesheet" type="text/css" href="css/ThucDonstyle.css" />
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


<style type="text/css">
.hovergallery img {
	-webkit-transform: scaleZ(0.8);
	/*Webkit: Scale down image to 0.8x original size*/
	-moz-transform: scale(0.8); /*Mozilla scale version*/
	-o-transform: scale(0.8);
	/*Opera scale version*/
	-webkit-transition-duration: 0.5s;
	/*Webkit: Animation duration*/
	-moz-transition-duration: 0.5s; /*Mozilla duration version*/
	-o-transition-duration: 0.5s;
	/*Opera duration version*/
	opacity: 1;
	/*initial opacity of images*/
	margin: 0 10px 5px 0; /*margin between images*/
}

.hovergallery img:hover {
	-webkit-transform: scale(1.1);
	/*Webkit: Scale up image to 1.2x original size*/
	-moz-transform: scaleZ(1.1);
	/*Mozilla scale version*/
	-o-transform: scale(1.1); /*Opera scale version*/
	box-shadow: 0px 0px 30px gray;
	/*CSS3 shadow: 30px blurred shadow all around image*/
	-webkit-box-shadow: 0px 0px 30px gray;
	/*Safari shadow version*/
	-moz-box-shadow: 0px 0px 30px gray; /*Mozilla shadow version*/
	opacity: 1;
}
</style>
</head>
<body bgcolor="#FFFFFF">

	<div class="main" id="main">
		<div class="header" id="header">
			<div class="banner" id="banner">
				<div id="tenNh">Nhà Hàng Ba Miền</div>
			</div>
			<div id="menu">
				<!--Day la phan  Flash Menu -->
				<div id="FlashMenuLabs"></div>
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
		</div>
		<c:if test='${err == null && foods == null}'>
			<jsp:forward page="menuservlet" />
		</c:if>
		<center>
			<div class="main" id="all"
				style='background: url(../image/mainback.jpg)'>

				<div class="center" id="show">
					<!--open div show-->

					<div id="left">
						<!--open div left-->
						<p id="lable">
							<a href="?type=all" id="lable">THỰC ĐƠN</a>
						</p>
						<br /> <br /> <br /> <br /> <br /> <br /> <br />

						<p id="lable2">THỰC ĐƠN CHÍNH</p>
						<hr id="hr" />
						<img id="icon" src="image/iconn.png" /><a href="?type=bac"
							id="lableB">MÓN MIỀN BẮC</a> <br />
						<hr id="hr" />
						<img id="icon" src="image/iconn.png" /><a href="?type=trung"
							id="lableB">MÓN MIỀN TRUNG</a> <br />
						<hr id="hr" />
						<img id="icon" src="image/iconn.png" /><a href="?type=nam"
							id="lableB">MÓN MIỀN NAM</a> <br />
						<hr id="hr" />
						<p id="lableTiec">THỰC ĐƠN ĐẶT TIỆC</p>
						<hr id="hr" />
						<img id="icon" src="image/iconn.png" /><a href="?type=khaivi"
							id="lableB">MÓN KHAI VỊ</a> <br />

						<hr id="hr" />
						<img id="icon" src="image/iconn.png" /><a href="?type=main"
							id="lableB">MÓN CHÍNH </a> <br />
						<hr id="hr" />
						<img id="icon" src="image/iconn.png" /><a href="?type=trangmieng"
							id="lableB">MÓN TRÁNG MIỆNG </a>
					</div>
					<!--close div left-->
					<div id="new">

						<div id="right">

							<c:if test="${err != null }">
						${err}
					</c:if>
							<!--open div right-->

							<jsp:useBean id="converter" class="beans.ConvertNumber" />
							<c:forEach var="food" items="${foods}">
								<div id="d1">
									<div class="hovergallery">

										<img id="pic" src='image/${food.image}' alt='img' />
									</div>
									<h4 id="food">${food.name}</h4>
									<p id="price"><a id="gia">${converter.formatNumber(food.price)}<sup>đ</sup></a>
								
									<a id="buy" href="DatMon?id=${food.id}"><input id="buy" type="button" value=" Đặt món" onclick="return confirm('bạn có muốn mua sản phẩm này hay không')"> </input> </a></p>
									<br> <br>
								</div>
								<!--close right-->
							</c:forEach>
						</div>
					</div>
				</div>
				<!--close div show-->
			</div>
			<!--close div main-->
			<div class='page' id="page">
				<c:if test='${cPage > 0}'>
					<a href='?type=${type}&p=0'>&lt;&lt;</a>
					<a href='?type=${type}&p=${cPage - 1}'>${cPage - 1}</a>
				</c:if>
				<span>${cPage}</span>
				<c:if test='${cPage <= sumPage - 2}'>
					<a href='?type=${type}&p=${cPage + 1}'>${cPage + 1}</a>
				</c:if>
				<c:if test='${cPage < sumPage - 2}'>
					<a href='?type=${type}&p=${sumPage - 1}'>&gt;&gt;</a>
				</c:if>
			</div>
		</center>
		<div id="footer">Thuc Hien boi Team 8 TKHDT</div>
	
</body>
</html>
