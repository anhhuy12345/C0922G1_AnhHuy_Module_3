<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/29/2022
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>calculator</title>
    <style>
      .choose {
        height:180px; width:230px;
        margin:0;
        padding:10px;
      }
    </style>
  </head>
  <body>
  <form action="/display-discount" method="post">
    <div class="choose">
      <h2> Nhập Sản Phẩm</h2>
      <input type="text" name="name" size="40" placeholder="tên sản phảm">
      <input type="text" name="product" size="40" placeholder="mô tả sản phẩm">
      <input type="number" name="listprice" size="40" placeholder="giá niêm yết">
      <input type="number" name="discountpercent" size="20" placeholder="tỉ lệ chiét kháu">
      <input type="submit" value="Caculate Discount"/>

    </div>
  </form>
  </body>
</html>
