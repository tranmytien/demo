<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>benh Nhan</title>
<link rel="stylesheet" type="text/css"
	href="/NLHospital/resource/css/jquery.dataTables.css" />

<script type="text/javascript" language="javascript"
	src="/NLHospital/resource/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="/NLHospital/resource/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript"
	src="/NLHospital/resource/js/dataTables.tableTools.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/NLHospital/resource/css/dataTables.tableTools.css" />
<link href="/NLHospital/resource/css/adds.css" rel="stylesheet"
	type="text/css">
</head>
<body>

<jsp:include page="banner.jsp"></jsp:include>
  <a href="${pageContext.request.contextPath}/user/logout.html">Đăng xuất</a>
	<div class="containt">
		<div class="content">
			<div class="ctleft">
				<div class="buttonxhs">Thông Tin Bệnh Nhân Cần Tìm</div>
				<br>
				<div class="thongtinbn">Thông tin bệnh nhân</div>
				<table width="1196" border="1">
					<tr>
						<td width="161" height="38" id="thongtin">Mã bệnh nhân</td>
						<td width="136" id="thongtin">Họ tên</td>
						<td width="253" id="thongtin">Địa chỉ</td>
						<td width="137" id="thongtin">Cân nặng</td>
						<td width="161" id="thongtin">Số điện thoại</td>
						<td width="308" id="thongtin">Tình trạng bệnh</td>
					</tr>
					<c:forEach var="bn" items="${benhnhan }">
						<tr>
							<td height="45" id="dulieubenhnhan">${bn.mabn}</td>
							<td id="dulieubenhnhan">${bn.tenbn}</td>
							<td id="dulieubenhnhan">${bn.diachi}</td>
							<td id="dulieubenhnhan">${bn.cannang}</td>
							<td id="dulieubenhnhan">${bn.sdt}</td>
							<td id="dulieubenhnhan">${bn.tinhtrangsk}</td>
						</tr>
					</c:forEach>
				</table>
				<div class="thongtinbn">Thông tin khám</div>
				<table width="1195" border="1">
					<tr>
						<td width="107" height="43" id="thongtin">Mã bệnh nhân</td>
						<td width="128" id="thongtin">Phòng khám</td>
						<td width="135" id="thongtin">Khoa khám</td>
						<td width="150" id="thongtin">Bác sĩ điều trị</td>
						<td width="220" id="thongtin">Toa thuốc</td>
						<td width="145" id="thongtin">Ngày khám</td>
						<td width="145" id="thongtin">Ngày xuất viện</td>
						<td width="113" id="thongtin">Viện phí</td>
					</tr>
					<c:forEach var="bn" items="${benhnhan }">
						<tr>
							<td height="40"  id="dulieubenhnhan">${bn.mabn}</td>
							<td height="40"  id="dulieubenhnhan">${bn.phongbenh}</td>
							<td id="dulieubenhnhan">${bn.khoadieutri}</td>
							<td id="dulieubenhnhan">${bn.bacsidieutri }</td>
							<td id="dulieubenhnhan">${bn.toathuoc}</td>
							<td id="dulieubenhnhan">${bn.ngaykham}</td>
							<td id="dulieubenhnhan">${bn.ngayxuatvien}</td>
							<td id="dulieubenhnhan">${bn.vienphi}</td>
						</tr>
					</c:forEach>
				</table>
				</div>
				</div>
				</div>
				
	
	
</body>
</html>
