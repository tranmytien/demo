<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://cksource.com/ckfinder" prefix="ckfinder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="ckfinder/ckfinder.js" language="javascript"></script>

 <script type="text/javascript">
        function BrowseServer() {
            var finder = new CKFinder();
            finder.basePath = '../';
            finder.selectActionFunction = SetFileField;
            finder.popup();
        }
        function SetFileField(fileUrl) {
            document.getElementById('Image').value = fileUrl;
        }
    </script>

</head>
<style type='text/css'>
input[type=text] {
	width: 400px;
}
</style>
<body>

	<form action="/3MienProject/FoodServlet?cmd=insert" method="post">
		<table>
			<tr>
				<td>Tên thức ăn</td>
				<td><input type="text" name="txtNameFood" />
			</tr>
			<tr>
				<td>Giá</td>
				<td><input type="text" name="txtPrice" />
			</tr>
			<tr>
				<td>Thuộc tính</td>
				<td><select style='width: 100%;' name="attribute">
						<option value="bac">Bắc</option>
						<option value="trung">Trung</option>
						<option value="nam">Nam</option>
						<option value="khaivi">Khai vị</option>
						<option value="monchinh">Món chính</option>
						<option value="montrangmieng">Món tráng miệng</option>
				</select></td>
			</tr>
			<tr>
				<td>Hình ảnh</td>
				<input type="text" name="Image" id="Image" />
    <input type="button" value="Chọn Ảnh ..." onclick="BrowseServer();"/>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type='submit' value='Thêm' />
					<input type='reset' value='Nhập lại' /></td>
			</tr>
		</table>
	</form>
</body>
</html>