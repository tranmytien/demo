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
<style >

@CHARSET "ISO-8859-1";
.left {
	float:left;
	background-color: #FFF;
	height: 1024px;
	width: 100px;
	
}

.formsua{
	text-align: center;
	float: right;
	margin-right:300px;
}
.bang {
	padding-top: 20px;
	text-align: center;
	
}




.form{
	margin-right:-200px;
	text-align:center;
	width: 1160px;
	float:right;
}


.button1 {
	color:#FFF;
	margin-top: 5px;
	text-align:center;
	border-radius: 5px;
	background-color: #09F;
	height: 30px;
	width: 80px;
}

.header {
	background-color: #333;
	height: 50px;
	width: 1500px;
	text-align:left;
}


.right {
	margin-left: -50px;
	padding-top: 10px;
	float:right;
	height: 1000px;
	width: 1160px;
	
}

</style>
</head>
<body>
 <form class="formsua" action="/3MienProject/UpdateMenu" style="margin-left: 400px;" method="post">
         	 
         	 <h3>Bảng sửa</h3>
         	 
						<table class="bangnhanvien">
						    <tr >
						    	<td style="width: 170px; height: 26px; color: #06C;">Id</td>
                       	    <td style="width: 170px; height: 26px; color: #06C;">Tên món</td>
						        <td style="width: 170px; height: 26px;color: #06C;" >Giá</td>
                                <td style="width: 170px; height: 26px;color: #06C;">Hình ảnh</td>
                                <td style="width: 170px; height: 26px; color: #06C;">Thuộc tính</td>
                                
                               
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
						    	ResultSet re = (ResultSet) request.getAttribute("menu");
						    	%>
                             <tr style="border: groove #999; ">
                             	<td ><input type="text" value="<%=re.getInt(1)%>" name="id"/></td>
						        <td ><input type="text" value="<%=re.getString(2) %>" name="name"/></td>
						        <td ><input type="text" value="<%=re.getInt(3) %>" name="price"/></td>
                                <td ><input type="text" value="<%=re.getString(4) %>" name="image"/></td>
                                <td ><input type="text" value="<%=re.getString(5)%>" name="description"/></td>
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