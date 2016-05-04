
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="controller.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"  />
<title>AdminBAMIEN</title>
<script type="text/javascript" language="javascript" src="js/jquery-1.11.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#linkxoa").click(function(){
			alert("xóakhdsjf");
			
		});
		
		
	});
	
	
	}
</script>

<link href="http://localhost:8080/3MienProject/admin/cssad/adminstyle.css" rel="stylesheet"></link>

</head>

<body>
<div class="header"><a class="bamien">BAMIENADMIN</a></div>
<div class="left">
		<ul class="menu">
			<li id="li"><a href="index1.jsp"><span class="thucdon"></span>Trang chủ</a></li>
			<li id="li"><a href="thucdon.jsp"><span class="thucdon"></span>Thực đơn</a></li>
			<li id="li"><a href="khuyenmai.jsp"><span class="thucdon"></span>Khuyến mãi</a></li>
			<li id="li"><a href="khachhang.jsp"><span class="thucdon"></span>Khách hàng</a></li>
			<li id="li"><a href="nhanvien.jsp"><span class="thucdon"></span>Nhân viên</a></li>
			<li id="li"><a href="quantri.jsp"><span class="thucdon"></span>Quản trị</a></li>
            <li id="li"><img src="http://localhost:8080/3MienProject/image/user.jpg" style="width:25px; height:25px; margin-left:-15px;"/><a href="http://localhost:8080/3MienProject/Login.jsp"><span class="thucdon"></span>Login page</a></li>
		</ul>
	</div>
    <div class="right">
    	<div class="tieude" style="text-align:center; font-weight:bold; font-size:24px;"><span>QUẢN TRỊ</span></div>
		 <center>
         	 <form class="form" action="">
         	 
						<table class="bang">
						    <tr >
						    	<td style="width: 170px; height: 26px; color: #06C;" >Id</td>
                       	    <td style="width: 170px; height: 26px; color: #06C;">Tài khoản admin</td>
						        <td style="width: 170px; height: 26px;color: #06C;" >Mật khẩu</td>
                                <td style="width: 170px; height: 26px;color: #06C;">Nhóm</td>
                                <td style="width: 50px; height: 26px;color: #06C;">Sửa</td>
                                 <td style="width: 50px; height: 26px;color: #06C;">Xóa</td>
                                 <td style="width: 50px; height: 26px;color: #06C;"><a href="/3MienProject/admin/addAdmin.jsp">Thêm</a></td>
						    </tr>
						     <% 
					 	
						String sql = "SELECT * from admin";
						
										
						int i =0;
						PreparedStatement st;
						//String sql_names = "SET NAMES 'utf8'";
						//st = ConnectSQL.getConnect().prepareStatement(sql_names);
						try{
							
							
						st = ConnectSQL.getConnect().prepareStatement(sql);
						
						ResultSet re = st.executeQuery();
						
						
							
						%>
						    <% 
						   
						    while (re.next()){
						    	i++;
						    	
						    	
						    	%>
                             <tr style="border: groove #999; ">
                             	<td ><input type="text" value="<%=re.getInt(1) %>" /></td>
						        <td ><input type="text" value="<%=re.getString(2) %>" /></td>
						        <td ><input type="password" value="<%=re.getString(3) %>"/></td>
                                <td ><input type="text" value="<%=re.getInt(4) %>" /></td>
                                <td><a href="/3MienProject/EditAdmin?id=<%=re.getInt(1) %>" id="sua1" ><img src="http://localhost:8080/3MienProject/admin/images/edit.jpg" style="width:20px; height:20px; margin-left:10px;"/></a></td>
                                <td><a href="/3MienProject/DeleteAdmin?id=<%=re.getInt(1) %>" id="linkxoa"><img src="http://localhost:8080/3MienProject/admin/images/xoa.png" style="width:20px; height:20px; margin-left:10px;"/></a></td>
                                 
                                
                                
						    </tr>
						   
						    
						   <% 
						    	}
                        re.close();
                        st.close();
						
						}catch (SQLException e) {
							e.printStackTrace();
							
						}
						
						%>
                            
                            </table>
						
                        </form>
                        
                        </center>
                       
    </div>
</body>
</html>
