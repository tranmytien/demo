
<%@page import="beans.ConvertNumber"%>
<%@page import="org.omg.CORBA.NVList"%>
<%@page import="java.util.TreeMap"%>
<%@page import="datadao.NhanVien"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="controller.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AdminBAMIEN</title>
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/3MienProject/admin/cssad/jquery.dataTables.css" />
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/3MienProject/admin/cssad/adminstyle.css" />
<script type="text/javascript" language="javascript"
	src="http://localhost:8080/3MienProject/admin/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="http://localhost:8080/3MienProject/admin/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript"
	src="http://localhost:8080/3MienProject/admin/js/dataTables.tableTools.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/3MienProject/admin/cssad/dataTables.tableTools.css" />
<script type="text/javascript" charset="UTF-8">
	$(document).ready(function() {
						$('#table').dataTable(
								
										{
											"columnDefs": [
											               { "orderable": false, "targets": 5},
											               { "orderable": false, "targets": 6}
											             ],
											"language" : {
												"lengthMenu" : "Hiển thị _MENU_  sản phẩm mỗi trang",
												"zeroRecords" : "Không tìm thấy bất cứ sản phẩm nào với từ khóa này",
												"info" : "Hiển thị _PAGE_ trong  _PAGES_ trang",
												"infoEmpty" : "Không tìm thấy sản phẩm nào",
												"infoFiltered" : "(Tìm kiếm trong _MAX_ sản phẩm)",
												"search" : "Tìm kiếm",
												"thousands" : ",",
												"paginate" : {
													"first" : "Đầu tiên",
													"last" : "Trang cuối",
													"next" : "Trang Sau",
													"previous" : "Trang Trước"
												},
											},
											"dom" : 'T<"clear">lfrtip',

											"oTableTools" : {
												"sSwfPath" : "http://localhost:8080/3MienProject/admin/swf/copy_csv_xls_pdf.swf",
												"aButtons" : [
														{
															"sExtends" : "print",
															"sButtonText" : "Xem",
															"mColumns" : [ 0,
																	1, 2, 3, 4 ],
															"sInfo" : "Nhấn esc để thoát khỏi chế độ xem trước",
															"sMessage" : "Nhà hàng Ba Miền",

														},
														{
															"sExtends" : "xls",
															"sButtonText" : "Lưu file Excel",
															"sAction" : "flash_save",
															"mColumns" : [ 0,
																	1, 2, 3, 4 ],
														},

														{
															"sExtends" : "pdf",
															"sButtonText" : "Lưu file PDF",
															"sAction" : "flash_pdf"
														} ]
											}
										});
					});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=" UTF-8" />
</head>

<body>
	<div class="header">
		<a class="bamien">BAMIENADMIN</a>
	</div>
	<div class="left">
		<ul class="menu">
			<li id="li"><a href="index1.jsp"><span class="thucdon"></span>Trang
					chủ</a></li>
			<li id="li"><a href="thucdon.jsp"><span class="thucdon"></span>Thực
					đơn</a></li>
			<li id="li"><a href="khuyenmai.jsp"><span class="thucdon"></span>Khuyến
					mãi</a></li>
			<li id="li"><a href="khachhang.jsp"><span class="thucdon"></span>Khách
					hàng</a></li>
			<li id="li"><a href="nhanvien.jsp"><span class="thucdon"></span>Nhân
					viên</a></li>
			<li id="li"><a href="quantri.jsp"><span class="thucdon"></span>Quản
					trị</a></li>
			<li id="li"><img
				src="http://localhost:8080/3MienProject/image/user.jpg"
				style="width: 25px; height: 25px; margin-left: -15px;" /><a
				href="http://localhost:8080/3MienProject/Login.jsp"><span
					class="thucdon"></span>Login page</a></li>
		</ul>
	</div>
	<div class="right">
		<div class="tieude" id ="tieuDe">
			<span>Sản Phẩm</span>
		
		</div>
		<a id="themSP" href="/3MienProject/admin/addNhanVien.jsp"><input id="themSP" type="button" value=" Thêm Sản Phẩm"> </input> </a></p>
				<table cellpadding="0" cellspacing="0" border="0" class="display"
				id="table" width="95%">
		<center>
				<thead>
					<tr>
						<th width="3%">ID</th>
						<th width="10%">Tên món</th>
						<th width="7%">Giá</th>
						<th width="15%">Hình ảnh</th>
						<th width="5%">Thuộc tính</th>
						<th width="2%">Sửa</th>
						<th width="2%">Xóa</th>
					</tr>
				</thead>
				
				<tbody>
					<jsp:useBean id="converter" class="beans.ConvertNumber" />
					<%String sql = "SELECT foods.food_id, foods.name, foods.price, foods.image, foodtype.description from fooddetail inner join foods on fooddetail.food_id =foods.food_id inner join foodtype on fooddetail.type_id=foodtype.typeid";
						PreparedStatement st;
						try {
							st = ConnectSQL.getConnect().prepareStatement(sql);
							ResultSet re = st.executeQuery();
					%>
					<%
						while (re.next()) {
					%>
					<tr>
						<td><%=re.getInt(1)%></td>
						<td><%=re.getString(2)%></td>
						<td><%=converter.formatNumber(re.getInt(3)+" VNĐ")%></td>
						<td><%=re.getString(4)%></td>
						<td><%=re.getString(5)%></td>
						<td><a
							href="/3MienProject/EditEmployee?id=<%=re.getInt(1)%>"
							id="linksua"><img
								src="http://localhost:8080/3MienProject/image/edit.jpg"
								style="width: 20px; height: 20px; margin-left: 10px;" /></a></td>
						<td><a
							href="/3MienProject/DeleteEmployee?id=<%=re.getInt(1)%>"
							id="linksua"><img
								src="http://localhost:8080/3MienProject/image/xoa.png"
								style="width: 20px; height: 20px; margin-left: 10px;" /></a></td>
					</tr>

					<%
						}
							re.close();
							st.close();

						} catch (SQLException e) {
							e.printStackTrace();

						}
					%>




				</tbody>
				
			</table>


		</center>
	</div>
</body>
</html>
