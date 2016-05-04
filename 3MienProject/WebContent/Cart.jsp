<%@page import="datadao.TaiKhoan"%>
<%@page import="datadao.TaiKhoangDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="datadao.SanPham"%>
<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Nha Hang Ba Mien</title>

<link rel="stylesheet" type="text/css" href="css/Cartstyle.css" />
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
<script>
	$(document).ready(function() {
		$(".popup").hide();

		$("#button1").click(function(e) {
			openPopup();
		});

		$(".close").click(function(e) {
			closePopup();
			e.preventDefault();
		});

		$("#background").click(function() {
			closePopup();
		});

	});
	function openPopup() {
		var dheight = 700;
		var dwidth = 1366;

		$("#background").width(dwidth).height(dheight);

		$("#background").fadeTo("slow", 0.8);

		var $popup1 = $("#popup1");
		$popup1.css("top", 100);
		$popup1.css("left", 350);
		$popup1.fadeIn();
	}
	function closePopup() {
		$("#background").fadeOut();
		$(".popup").hide();
	}
</script>
</head>
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
				<! Moi nguoi bat dau lam tu day> </!>
				<div id="all">
					<%
						String id = (String) session.getAttribute("id");
						Cart cart = (Cart) session.getAttribute("cart");
						if (cart == null)
							cart = new Cart();
					%>
					<jsp:useBean id="converter" class="beans.ConvertNumber" />
					<br> <a id="gHang"> <a id="gio">Giỏ Hàng</a>
					</a> <br> <a id="side">Bạn có <%=cart.side()%> món trong giỏ
						hàng.
					</a> <br></br>

					<div id="sPham">


						<p>
							<%
								Iterator<SanPham> it = cart.getIt();
								SanPham sp = null;
								while (it.hasNext()) {
									sp = it.next();
							%>
						
						<div id="mainCart">
							<img src="image/<%=sp.getImage()%>" width="109" height="46"
								id="image" />
							<div id="foodName">
								<div id="tenMon">
									<a><%=sp.getName()%></a>
								</div>
								<form id="form1" name="form1" method="get" action="SuaMon">
									<div id="sl">SL:</div>
									<input name="select" type="text" id="slText"
										value="<%=sp.getCount()%>" /> <input name="id" type="hidden"
										id="id" value="<%=sp.getId()%>" /> <input type="submit"
										value="Thay đổi" id="thayDoi" id="thayDoi" />
								</form>
								<a id="font" href="XoaMon?id=<%=sp.getId()%>">Xóa </a>

							</div>
							</p>

							<div id="giaKM">
								<%
									if (sp.getGiamgia() == 0) {
								%>
								<a id="giagoc"></a> <br> <a id="theGKM"><%=converter.formatNumber(""
							+ (int) (sp.getPrice() - sp.getPrice()
									* sp.getGiamgia()))%> VNĐ</a> <br> <a id="giamgia"></a>
							</div>
							<%
								} else {
							%>
							<a id="theGKM"><%=converter.formatNumber(""
							+ (int) (sp.getPrice() - sp.getPrice()
									* sp.getGiamgia()))%> VNĐ</a> <br> <a id="giagoc"><%=converter.formatNumber("" + sp.getPrice())%>
								VNĐ</a> <br> <a id="giamgia"><%=sp.getLogan()%></a>
						</div>
						<%
							}
						%>
						<div id="total">
							<p><%=converter.formatNumber(""
						+ (int) (sp.getCount() * (sp.getPrice() - sp
								.getGiamgia() * sp.getPrice())))%>
								VNĐ
							</p>
						</div>
					</div>
					<%
						}
					%>




				</div>

				<div id="but">
					<p id="tTien">
						Thành Tiền:
						<%=converter.formatNumber("" + cart.total())%>
						VNĐ
					</p>
				</div>
				<div>
					<form id="form1" name="form1" method="get" action="ClearCart">
						<input type="submit" name="xoa" id="xoaC" value="Làm Trống" />
					</form>
					<form>
						
					</form>
					<button id="button1">Thanh Toán</button>
					<!-- POPUP CONTENT -->
					<div id="popup1" class="popup"
						style="background: lavender; width: 700px; height: 530px; border-radius: 5px;">
						<div
							style="padding-left: 20px; width: 700px; height: 20px; margin-top: 5px;">
							Thanh Toán<a style="padding-right: 30px;" " href="#"
								class="close" />X </a>
						</div>
						<div style="margin-top: 5px">
						<br>
						<% TaiKhoan tk1 = (TaiKhoan)session.getAttribute("tk");
						if(tk1 == null){
						tk1 = new TaiKhoan();%>
						
						Bạn chưa đăng nhập. Vui lòng đăng nhập để tiến hành Thanh Toán<br>
						<a id="" href="Login.jsp"><input id="buy" type="button" value="Đăng Nhập"></a>
						<% } else {%>
							
						
						Xin Chao : <%=tk1.gettaikhoan()%> <br>
							Quý khách còn <%=converter.formatNumber(""+tk1.getSodutk()) %> VNĐ Trong tài khoảng <br>
							Thanh toán giỏ hàng : <%=converter.formatNumber("" + cart.total())%>VNĐ <br>
							Số dư còn lại trong tài khoảng : <%=converter.formatNumber(""+(tk1.getSodutk()- + cart.total()))%> VNĐ<br>
							
							<br />
							<%session.setAttribute("tkid", tk1.getid());
							session.setAttribute("sodu", converter.formatNumber(""+(tk1.getSodutk()- + cart.total())));%>
							<a id="" href="ThanhToan?sodu"><input id="buy" type="button" value="Thanh Toán"></a>
							<%}%>
						</div>
						<!-- END POPUP CONTENT -->
					</div>

					<div id="background"></div>
					<div style="margin-top: 5px">

						<br />
					</div>
				</div>
			</div>
			<! Stop here Dung lam gi nua> </!> 
		</div>
		<div id="footer">Thuc Hien boi Team 8 TKHDT</div>
	</div>
</body>
</html>
