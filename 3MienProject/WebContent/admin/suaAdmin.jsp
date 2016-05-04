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
<title>Insert title here</title>
<link href="http://localhost:8080/3MienProject/admin/cssad/adminstyle.css" rel="stylesheet"></link>

</head>
<body>
<center>
 <form class="formsua" action="/3MienProject/UpdateAdmin" method="post"> 
         	 
         	 <h3>Bảng sửa</h3>
         	 
						<table class="bang">
						    <tr >
						    	<td style="width: 170px; height: 26px; color: #06C;">Id</td>
                       	    <td style="width: 170px; height: 26px; color: #06C;">Tài khoản admin</td>
						        <td style="width: 170px; height: 26px;color: #06C;" >Mật khẩu</td>
                                <td style="width: 170px; height: 26px;color: #06C;">Nhóm</td>
                               
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
						    	ResultSet re = (ResultSet) request.getAttribute("admin");
						    	%>
                             <tr style="border: groove #999; ">
                             	<td ><input type="text" value="<%=re.getInt(1)%>" name="id"/></td>
						        <td ><input type="text" value="<%=re.getString(2) %>" name="taikhoan"/></td>
						        <td ><input type="password" value="<%=re.getString(3) %>" name="matkhau"/></td>
                                <td ><input type="text" value="<%=re.getString(4) %>" name="nhom"/></td>
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
                        </center>
</body>
</html>