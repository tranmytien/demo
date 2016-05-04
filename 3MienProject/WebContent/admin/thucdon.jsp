
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
<link
	href="http://localhost:8080/3MienProject/admin/cssad/adminstyle.css"
	rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/3MienProject/admin/cssad/adminstyle.css" />
<script type="text/javascript" language="javascript" src="http://localhost:8080/3MienProject/admin/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="http://localhost:8080/3MienProject/admin/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="UTF-8">
$(document).ready(function() { 
$('#table').dataTable( {

	 paging: false,
	    scrollY: 400
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
				src="http://localhost:8080/3MienProject/admin/images/user.jpg"
				style="width: 25px; height: 25px; margin-left: -15px;" /><a
				href="#"><span class="thucdon"></span>Login page</a></li>
		</ul>
	</div>
	<div class="right">
<form action="DatMon" method="get">
		<button type="button"
			style='float: right; position: absolute; top: 115px; right: 22px'
			onclick="window.location='../addFood.jsp'">Thêm thực đơn</button>
		<div class="tieude"
			style="text-align: center; font-weight: bold; font-size: 24px;">
			<span>THỰC ĐƠN</span>
		</div>
		<center>
			<table cellpadding="0" cellspacing="0" border="0" class="display" id="table" width="100%"> 
				  <thead> 
        <tr> 
            <th width="7%">ID</th> 
            <th width="15%">Tên món</th> 
            <th width="15%">Giá</th> 
            <th width="15%">Hình ảnh </th> 
            <th width="10%">Thuộc tính</th> 
              <th width="5%">Sửa</th> 
             <th width="5%">Xóa</th> 
          
        </tr> 
    </thead> 
					<%
						String sql = "SELECT foods.food_id, foods.name, foods.price, foods.image, foodtype.description from fooddetail inner join foods on fooddetail.food_id =foods.food_id inner join foodtype on fooddetail.type_id=foodtype.typeid";

						PreparedStatement st;
						try {

							st = ConnectSQL.getConnect().prepareStatement(sql);
							ResultSet re = st.executeQuery();
					%>
					<%
						while (re.next()) {
					%>
					 <tbody> 
					<tr style="border: groove #999;">
						<td><%=re.getInt(1)%></td>
						<td><%=re.getString(2)%></td>
						<td><%=re.getInt(3)%></td>
						<td><%=re.getString(4)%></td>
						<td><%=re.getString(5)%></td>



						<td><a href="/3MienProject/EditMenu?id=<%=re.getInt(1)%>"
							id="linksua"><img
								src="http://localhost:8080/3MienProject/admin/images/edit.jpg"
								style="width: 20px; height: 20px; margin-left: 10px;" /></a></td>
						<td><a href="/3MienProject/DeleteMenu?id=<%=re.getInt(1)%>"
							id="linksua"><img
								src="http://localhost:8080/3MienProject/admin/images/xoa.png"
								style="width: 20px; height: 20px; margin-left: 10px;" /></a></td>


					</tr>
</tbody>
					<%
						}
							re.close();
							st.close();

						} catch (SQLException e) {
							e.printStackTrace();

						}
					%>


					</form>

				</table>
				</table>

				<br />
				<div class="buttonend">
					<button type="submit" class="button1">Lưu</button>
					<button type="reset" class="button1">Hủy</button>
				</div>
			</form>

		</center>
	</div>
</body>
</html>
