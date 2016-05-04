
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
				src="http://localhost:8080/3MienProject/image/user.jpg"
				style="width: 25px; height: 25px; margin-left: -15px;" /><a
				href="http://localhost:8080/3MienProject/Login.jsp"><span
					class="thucdon"></span>Login page</a></li>
		</ul>
	</div>
	<div class="right">
		<div class="tieude"
			style="text-align: center; font-weight: bold; font-size: 24px;">
			<span>NHÂN VIÊN</span>
		</div>
		<center>
		
			<table cellpadding="0" cellspacing="0" border="0" class="display" id="table" width="100%"> 
    <thead> 
        <tr> 
            <th width="7%">ID</th> 
            <th width="15%">Họ Tên</th> 
            <th width="15%">Email</th> 
            <th width="15%">Số Điện Thoại</th> 
            <th width="10%">Ngày vào làm</th> 
            <th width="10%">Chức vụ</th> 
             <th width="10%">Lương</th> 
             <th width="5%">Sửa</th> 
             <th width="5%">Xóa</th> 
        </tr> 
    </thead> 
    <tbody> 
     <% String sql = "SELECT * FROM nhanvien";
						int i =0;
						PreparedStatement st;
						try{
							
						st = ConnectSQL.getConnect().prepareStatement(sql);
						ResultSet re = st.executeQuery();
								while (re.next()){
						    	i++;
						   	%>
                             <tr >
                             	<td ><%=re.getInt(1) %></td>
						        <td ><%=re.getString(2) %></td>
						        <td ><%=re.getString(3) %></td>
                                <td ><%=re.getString(4) %></td>
                                <td ><%=re.getString(5) %></td>
                                <td ><%=re.getString(6) %></td>
                                <td ><%=re.getInt(7) %></td>
                                <td><a href="/3MienProject/EditEmployee?id=<%=re.getInt(1) %>" id="linksua" ><img src="http://localhost:8080/3MienProject/image/edit.jpg" style="width:20px; height:20px; margin-left:10px;"/></a></td>
                                <td><a href="/3MienProject/DeleteEmployee?id=<%=re.getInt(1) %>" id="linksua" ><img src="http://localhost:8080/3MienProject/image/xoa.png" style="width:20px; height:20px; margin-left:10px;"/></a></td>
                               </tr>
						    
						   <% 
						    	}
                        re.close();
                        st.close();
						
						}catch (SQLException e) {
							e.printStackTrace();
							
						}
						
						%>
					
    
    
        
    </tbody> 
     <td style="width: 50px; height: 26px;color: #06C;"><a href="/3MienProject/admin/addNhanVien.jsp">Thêm</a></td>
   </table>  
			

		</center>
	</div>
</body>
</html>
