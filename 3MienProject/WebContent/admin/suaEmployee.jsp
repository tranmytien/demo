<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="controller.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa thông tin nhân viên</title>
<link href="http://localhost:8080/3MienProject/admin/cssad/adminstyle.css" rel="stylesheet"></link>
</head>
<body>
 <form class="form" action="/3MienProject/UpdateEmployee" method="post">
         	 
         	 <h3>Bảng sửa</h3>
         	 
						<table class="bangnhanvien">
						    <tr >
						    	<td style="width: 170px; height: 26px; color: #06C;">Id</td>
                       	    <td style="width: 170px; height: 26px; color: #06C;">Tên nhân viên</td>
						        <td style="width: 170px; height: 26px;color: #06C;" >Email</td>
                                <td style="width: 170px; height: 26px;color: #06C;">Số điện thoại</td>
                                <td style="width: 170px; height: 26px; color: #06C;">Ngày vào làm</td>
                                <td style="width: 170px; height: 26px; color: #06C;">Chức vụ</td>
                                <td style="width: 170px; height: 26px; color: #06C;">Lương</td>
                               
						    </tr>
                       <%-- <% 
						    
						   
						String sqlsua = "SELECT * from admin where id= ";
										
						
						PreparedStatement stsua;
						try{
							
						st = ConnectSQL.getConnect().prepareStatement(sqlsua);
						ResultSet re = st.executeQuery();
						%>
						    
						    <% 
						   
						    while (re.next()){
						    	
						    	
						    	%> --%>
						    	<%
						    	ResultSet re = (ResultSet) request.getAttribute("employee");
						    	%>
                             <tr style="border: groove #999; ">
                             	<td ><input type="text" value="<%=re.getInt(1)%>" name="id"/></td>
						        <td ><input type="text" value="<%=re.getString(2) %>" name="hoten"/></td>
						        <td ><input type="text" value="<%=re.getString(3) %>" name="email"/></td>
                                <td ><input type="text" value="<%=re.getString(4) %>" name="sdt"/></td>
                                <td ><input type="text" value="<%=re.getString(5)%>" name="ngayvao"/></td>
                                <td ><input type="text" value="<%=re.getString(6)%>" name="chucvu"/></td>
                                <td ><input type="text" value="<%=re.getInt(7)%>" name="luong"/></td>
                                <td><a href="#" id="linksua" ><img src="http://localhost:8080/3MienProject/admin/images/edit.jpg" style="width:20px; height:20px; margin-left:10px;"/></a></td>
						    </tr>
						   
						  <%--
						   <% 
						    	}
                        re.close();
                        st.close();
						
						}catch (SQLException e) {
							e.printStackTrace();
							
						}
						
						%>
                             --%>
                            </table>
						   
                        <br />
                          <div class="buttonend">
                        <button type="submit" class="button1" >Lưu </button>
						<button type="reset" class="button1">Hủy </button>
                        </div>
                        </form>
</body>
</html>