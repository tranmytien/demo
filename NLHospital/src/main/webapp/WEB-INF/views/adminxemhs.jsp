<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Xem Hồ Sơ Bệnh Nhân</title>
<link href="/NLHospital/resource/css/adds.css" rel="stylesheet">

<script type="text/javascript" language="javascript"
	src="/NLHospital/resource/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="/NLHospital/resource/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript"
	src="/NLHospital/resource/js/dataTables.tableTools.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/NLHospital/resource/css/dataTables.tableTools.css" />

</head>
<body>

	<jsp:include page="banner.jsp"></jsp:include>
  <a href="${pageContext.request.contextPath}/user/logout.html" id="doi_dangxuat">Đăng xuất  </a>
	<a href="${pageContext.request.contextPath}/benhnhan/them.html" style="text-decoration: none;"><input
		type="button" value="Thêm Bệnh Nhân" id="buttonthembenhnhan"></a>
		
		<div class="containt">
		<div class="content">
			<div class="ctleft">
				<div class="buttonxhs">Danh sách bệnh nhân</div>
				<br>
				<div class="thongtinbn">Thông tin bệnh nhân</div>
				<table width="1120" border="1">
					<tr>
						<td id="thongtin" >MaBN</td>
						<td id="thongtin"   >Họ tên</td>
						<td  id="thongtin" >Địa chỉ</td>
						<td id="thongtin"   >Cân Nặng</td>
						<td id="thongtin"  >SĐT</td>
						<td id="thongtin"   >Tình trạng bệnh</td>
						<td id="thongtin" >Viện phí</td>
					</tr>
					<c:forEach var="bn" items="${benhnhan }">
					<form
				action="${pageContext.request.contextPath}/benhnhan/suabenhnhanfinal.html"
				method="post">
						<tr>
						<td><input type="text" value="${bn.mabn}" name="mabn"></td>
				<td><input type="text" value="${bn.tenbn}" name="tenbn"></td>
				<td><input type="text" value="${bn.diachi}" name="diachi"></td>
				<td><input type="text" value="${bn.cannang}" name="cannang"></td>
				<td><input type="text" value="${bn.sdt}" name="sdt"></td>
				<td><input type="text" value="${bn.tinhtrangsk}"
				
					name="tinhtrangsk"></td>
					<td><input type="text" value="${bn.vienphi}" name="vienphi"></td>
				<td><a href=""><input type="submit" value="Sua" id="suaxoa"></a></td>
				<td><a
					href="${pageContext.request.contextPath}/benhnhan/xoabenhnhanfinal?mabn=${bn.mabn }"><input
						type="button" value="Xoa" id="suaxoa"></a></td>
						</tr>
						</form>
					</c:forEach>
				</table>
				<br>
				<br>
				
				<div class="thongtinbn">Thông tin khám</div>
				<table width="1120" border="1">
					<tr>
						<td id="thongtin" >MaBN</td>
						<td    id="thongtin" >Phòng khám</td>
						<td id="thongtin" >Khoa khám</td>
						<td id="thongtin" >Bác sĩ điều trị</td>
						<td id="thongtin" >Toa thuốc</td>
						<td id="thongtin" >Ngày khám</td>
						<td id="thongtin" >Ngày xuất viện</td>
						
						
					</tr>
					<c:forEach var="bn" items="${benhnhan }">
					<form
				action="${pageContext.request.contextPath}/benhnhan/suabenhnhanfinal.html"
				method="post">
						<tr>
						<td><input type="text" value="${bn.mabn}" name="mabn"></td>
				<td><input type="text" value="${bn.phongbenh}" name="phongbenh"></td>
				<td><input type="text" value="${bn.khoadieutri}"
					name="khoadieutri"></td>
				<td><input type="text" value="${bn.bacsidieutri }"
					name="bacsidieutri"></td>
				<td><input type="text" value="${bn.toathuoc}" name="toathuoc"></td>
				<td><input type="text" value="${bn.ngaykham}" name="ngaykham"></td>
				<td><input type="text" value="${bn.ngayxuatvien}"
					name="ngayxuatvien"></td>
				
				<td><a href=""><input type="submit" value="Sua" id="suaxoa"></a></td>
				<td><a
					href="${pageContext.request.contextPath}/benhnhan/xoabenhnhanfinal?mabn=${bn.mabn }"><input
						type="button" value="Xoa" id="suaxoa"></a></td>
			</tr>
						</form>
					</c:forEach>
				</table>
				
			</div>
		</div>
		
		
	

</body>
</html>
