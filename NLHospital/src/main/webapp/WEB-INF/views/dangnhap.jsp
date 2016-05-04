<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/NLHospital/resource/js/checklogin.js"
	type="text/javascript"></script>
<script src="/NLHospital/resource/js/jquery.js"></script>
<script src="/NLHospital/resource/js/amazingslider.js"></script>
<link href="/NLHospital/resource/css/index.css" rel="stylesheet"
	type="text/css">

<link href="/NLHospital/resource/css/amazingslider-1.css"
	rel="stylesheet" type="text/css">
<script src="/NLHospital/resource/js/initslider-1.js"></script>
<link href="/NLHospital/resource/css/dangnhap/dangnhap.css"
	rel="stylesheet" type="text/css" />
<link href="/NLHospital/resource/css/dangnhap/api.css" rel="stylesheet"
	type="text/css" />
<link href="/NLHospital/resource/css/dangnhap/css.css" rel="stylesheet"
	type="text/css" />
<title>Đăng Nhập</title>
</head>
<body>
	<div id="top"></div>
	<jsp:include page="banner.jsp"></jsp:include>
	<div id="contentdn">
		<div id="content_top">
			<center>
				<a href="#"> </a>
			</center>

		</div>
		<!--end content_TOP------------------------------->
		
		<div id="content_B">
			<div id="center">
				<div class="formCont">
					<div class="brTop"></div>
					<form name="login" onsubmit="return checkField()"
						action="${pageContext.request.contextPath}/user/xulydangnhap.html"
						method="post">
						<table width="100%">
							<div class="inputForm">
								<span class="prefix"><span class="entypo-user"></span></span><input
									type="text" name="username" class="submit"
									style="border-radius: 5px;" /><label id="lblUsername"></label>
							</div>
							<br />
							<div class="inputForm">
								<span class="prefix"><span class="entypo-key"></span></span><input
									type="password" name="password" class="submit"
									style="border-radius: 5px;"  /><label id="lblPassword"></label>
								<span class="sufix"><span class="entypo-lock"></span></span>
							</div>
							<tr>
								<td width="45%"></td>
								<td colspan="2" align="left"><input type="submit"
									value="&nbsp;Đăng nhập&nbsp;" class="submit"
									style="border-bottom-color: blue;font-weight: bold; border-radius: 5px; color: red; margin-left:-30px;" /></td>
									</tr>
									<tr>
									 <td colspan="2" align="left"><a href="${pageContext.request.contextPath}/benhnhan/dangki.html" style="margin-left: 150px;color: #000;">Đăng kí</a></td>
									
							</tr>
							<tr>
								<td colspan="3" align="center"><font color="red">${message}</font></td>
							</tr>
						</table>
					</form>

				</div>
			</div>
		</div>
		<!-- end content_B ---------------------------------->
		<div class="space2">
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
		</div>
	</div>
	<!-- end content ---------------------------------->
</body>
</html>