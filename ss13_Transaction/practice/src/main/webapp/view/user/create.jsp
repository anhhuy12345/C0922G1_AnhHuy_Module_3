<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/5/2023
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>CREATE USERS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<h1><a href="/user">Quay lại danh sách</a></h1>
<form action="?action=create" method="post">
    <input type="text" name="name" placeholder="nhập tên"><br>
    <input type="text" name="email" placeholder="nhập email"><br>
    <input type="text" name="country" placeholder="nhập địa chỉ"><br>
    <button type="submit">SAVE</button>
</form>


</body>
</html>
