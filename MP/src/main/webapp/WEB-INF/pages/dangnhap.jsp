<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
 <title>View Batch</title>  
 </head>  
 <body>  
    <div align="center">
        <form action="register" method="post" commandName="userForm">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h1>Đăng ký thành viên</h1></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" /></td>
                </tr>
                <tr>
                    <td>Mật khẩu:</td>
                    <td><input type="password" /></td>
                </tr>
                <tr>
                    <td>Họ tên:</td>
                    <td><input type="text" /></td>
                </tr>
                <tr>
                    <td>Birthday:</td>
                    <td>
                    	<select>
                    		<option>01</option>
                    		<option>02</option>
                    		<option>03</option>
                    		<option>04</option>
                    		<option>05</option>
                    		<option>06</option>
                    		<option>07</option>
                    		<option>08</option>
                    		<option>09</option>
                    		<option>10</option>
                    		<option>11</option>
                    		<option>12</option>
                    		<option>13</option>
                    		<option>14</option>
                    		<option>15</option>
                    		<option>16</option>
                    		<option>17</option>
                    		<option>18</option>
                    		<option>19</option>
                    		<option>20</option>
                    		<option>21</option>
                    		<option>22</option>
                    		<option>23</option>
                    		<option>24</option>
                    		<option>25</option>
                    		<option>26</option>
                    		<option>27</option>
                    		<option>28</option>
                    		<option>29</option>
                    		<option>30</option>
                    		<option>31</option>
                    		
                    	</select>
                    	
                    	<select>
                    		<option>01</option>
                    		<option>02</option>
                    		<option>03</option>
                    		<option>04</option>
                    		<option>05</option>
                    		<option>06</option>
                    		<option>07</option>
                    		<option>08</option>
                    		<option>09</option>
                    		<option>10</option>
                    		<option>11</option>
                    		<option>12</option>
                    	</select>
                    	<select>
                    		<option>1990</option>
                    		<option>1991</option>
                    		<option>1992</option>
                    		<option>1993</option>
                    		<option>1994</option>
                    		<option>1995</option>
                    		<option>1996</option>
                    		<option>1997</option>
                    		<option>1998</option>
                    	</select>
                    	</td>
                </tr>
                <tr>
                    <td>Giới tính</td>
                    <td><input type="radio" name="gioitinh"/>Nam<input type="radio" name="gioitinh"/>Nữ</td>
                </tr>
                 <tr>
                    <td>Trình độ văn hóa:</td>
                    <td>
                    	<select>
                    	<option>Tốt nghiệp phổ thông</option>
                    	<option>Cao đẳng</option>
                    	<option>Đại học</option>
                    	<option>Thạc sĩ</option>
                    	<option>Tiến sĩ</option>
                    	
                    	</select>
                    </td>
                </tr>
                 <tr>
                    <td>Địa chỉ:</td>
                    <td><input type="text" /></td>
                </tr>
                 <tr>
                    <td>Điện thoại</td>
                    <td><input type="text" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
                </tr>
            </table>
            </form>
    </div>
 </body>  
 </html>  