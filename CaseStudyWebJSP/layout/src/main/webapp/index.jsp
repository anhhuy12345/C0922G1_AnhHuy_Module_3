<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/30/2022
  Time: 3:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Furama Resort</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid row" style="background-color: #6C60FF; margin: 0 auto;">
    <div class="col-md-3">
        <img src="picture\logo.png" style="height: 70px; width: 70px">
    </div>
    <div class="col-md-6">
        <a href="https://furamavietnam.com/vi/" style=" text-decoration: none;font-family: 'Algerian';
        font-size: 300%;font-weight: bold;color: #615f5f;margin-left: 200px">
            FURAMA RESORT</a>
    </div>
    <div class="col-md-3">
        <a style="font-family: 'Times New Roman';font-size: 100%;font-weight: bold;margin-left: 120px">Lê Trần Anh Huy
            C0922G1</a>
    </div>
</div>
<div class="mt-2 sticky row" style="background: #6C60FF;margin-top: -0.5rem!important;">
    <nav class="navbar navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand text-light ps-5 click col-l-2" href="">Home</a>
            <a class="navbar-brand text-light click col-l-2" href="">Employee</a>
            <a class="navbar-brand text-light click col-l-2" href="">Customer</a>
            <a class="navbar-brand text-light click col-l-2" href="">Service</a>
            <a class="navbar-brand text-light click col-l-2" href="">Contract</a>
            <form class="d-flex m-0 col-l-2">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>
        </div>
    </nav>
</div>
<div>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="picture\10953_16030216470040397599.jpg"
                     class="d-block w-100" alt="..." height="600px">
            </div>
            <div class="carousel-item">
                <img src="picture\0e899b3e41830a0f7088b7b99c0d14cb.jpg" class="d-block w-100"
                     alt="..." height="600px">
            </div>
            <div class="carousel-item">
                <img src="picture\Vietnam_Danang_Furama_Resort_Exterior_Beach.jpg" class="d-block w-100"
                     alt="..." height="600px">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
<div class="row" style="height: 103%; margin-top: 0%;">
    <div class="col-md-3 px-0">
        <ul class="list-group vh-100 overflow-scroll" style="border: 2px solid #7952b3">
            <li class="list-group-item" aria-current="true">item one</li>
            <li class="list-group-item">item two</li>
            <li class="list-group-item">item three</li>
            <li class="list-group-item">item four</li>

        </ul>
    </div>
</div>
<div class="container-fluid row" style="background-color: #FEF6F0; margin: 0 auto;">
    <div class="col-md-3">
        <a style="font-family: 'Times New Roman';font-size: 100%;font-weight: bold;">
            <a style="font-family: 'UVN Saigon'; font-size: 120%;margin-left: 50px">Hướng Dẫn Di Chuyển</a><br>
            Khu nghỉ dưỡng Furama là cơ sở hàng đầu để khám phá một trong những điểm đến hấp dẫn nhất Châu Á.
            Chỉ cách Đà Nẵng một quãng lái xe ngắn là bốn Di sản Văn hóa Thế giới được UNESCO công nhận:</a><br>
        <a style="font-family: 'UVN Saigon'; font-size: 120%;margin-left: 50px">Địa Điểm</a><br>

        <ul style=" font-family: 'Times New Roman';
        font-size: 150%;text-decoration: underline;color: #615f5f">
            <li class="list-group">Cố Đô Huế &nbsp &nbsp&nbsp&nbsp&nbsp 2 tiếng</li>
            <li class="list-group">Phố Cổ Hội An</li>
            <li class="list-group">Động Phong Nha</li>

        </ul>
    </div>
    <div class="col-md-6">
        <ul style=" font-family: 'Times New Roman';
        font-size: 150%;font-weight: bold;color: #615f5f;margin-left: 200px">
            <li class="list-item" aria-current="true">Giá Công Bố</li>
            <li class="list-item">Lifestyle Blog</li>
            <li class="list-item">Tuyển Dụng</li>
            <li class="list-item">Liên Hệ</li>

        </ul>
    </div>
    <div class="col-md-3">
        <a style="font-family: 'Times New Roman';font-size: 100%;font-weight: bold">
            103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam<br>
            Tel.: 84-236-3847 333/888 &nbsp Fax: 84-236-3847 666<br>
            Email: reservation@furamavietnam.com<br> Website: www.furamavietnam.com <br>GDS Codes: Amadeus-GD DADFUR,
            Galileo/Apollo-GD 16236, Sabre-GD 032771, Worldspan- GD DADFU</a>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
