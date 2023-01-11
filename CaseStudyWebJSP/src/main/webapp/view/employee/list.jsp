<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/10/2023
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employee List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

</head>
<body>
<p>${mess}</p>
<div class="mt-2 sticky-top" style="background: #046056">
    <nav class="navbar navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand text-light ps-5 click" href="/home">Home</a>
            <a class="navbar-brand text-light click" href="/employee">Employee</a>
            <a class="navbar-brand text-light click" href="/customer">Customer</a>
            <a class="navbar-brand text-light click" href="/service">Service</a>
            <a class="navbar-brand text-light click" href="/contract">Contract</a>
            <form class="d-flex m-0" action="/employee" method="get">
                <input class="me-2" name="nameSearch" placeholder="Nhập tên" value="${nameSearch}">
                <input class="me-2" name="emailSearch" placeholder="Nhập email" value="${emailSearch}">
                <select class="me-2" name="divisionSearch">
                    <option value="">Chọn</option>
                    <c:forEach items="${divisionList}" var="division">
                        <option value="${division.divisionId}">${division.name}</option>
                    </c:forEach>
                </select>
                <button class="btn btn-outline-light" type="submit" name="action" value="search">Search
                </button>
            </form>
        </div>
    </nav>
</div>

<%--+++++++++content++++++++--%>
<div class="container-fluid">
    <div class="row">
        <center>
            <h1 class="font-text-footer">Employee List</h1>
            <c:if test="${mess !=null}">
                <h2 class="text-danger">${mess}</h2>
            </c:if>
        </center>
        <br>
        <table id="tableEmployee" class="table table-striped table-bordered">
            <thead>
            <tr>
                <th class="col">ID</th>
                <th class="col">Name</th>
                <th class="col">Birthday</th>
                <th class="col">Id Card</th>
                <th class="col">Salary</th>
                <th class="col">Phone</th>
                <th class="col">Email</th>
                <th class="col">Address</th>
                <th class="col">Position</th>
                <th class="col">Education Degree</th>
                <th class="col">Division</th>
                <th>Username</th>
                <th></th>
                <th class="col"><a href="/employee?action=create">
                    <button class="btn btn-secondary w-100">Create</button>
                </a></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="employee" items="${employeeList}">
                <tr>
                    <td><c:out value="${employee.id}"/></td>
                    <td><c:out value="${employee.name}"/></td>
                    <td style="width: 90px;"><c:out value="${employee.birthday}"/></td>
                    <td><c:out value="${employee.idCard}"/></td>
                    <td><c:out value="${employee.salary}"/></td>
                    <td><c:out value="${employee.phone}"/></td>
                    <td><c:out value="${employee.email}"/></td>
                    <td><c:out value="${employee.address}"/></td>
                    <c:forEach items="${positionList}" var="position">
                        <c:if test="${position.positionId == employee.positionId}">
                            <td><c:out value="${position.name}"/></td>
                        </c:if>
                    </c:forEach>

                    <c:forEach items="${educationDegreeList}" var="educationDegree">
                        <c:if test="${educationDegree.educationDegreeId == employee.educationDegreeId}">
                            <td><c:out value="${educationDegree.name}"/></td>
                        </c:if>
                    </c:forEach>

                    <c:forEach items="${divisionList}" var="division">
                        <c:if test="${division.divisionId == employee.divisionId}">
                            <td><c:out value="${division.name}"/></td>
                        </c:if>
                    </c:forEach>

                    <td><c:out value="${employee.username}"/></td>

                    <td>
                        <a href="/employee?action=edit&id=${employee.id}">
                            <button class="btn btn-primary">Edit</button>
                        </a>
                    </td>
                    <td>
                        <!-- Button trigger modal -->
                        <button type="button"
                                onclick="infoDelete('${employee.id}','${employee.name}')"
                                class="btn btn-danger"
                                data-bs-toggle="modal"
                                data-bs-target="#deleteModal">
                            Delete
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <%--            ---------thêm thẻ form---------%>
        <form action="/employee?action=delete" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-danger" id="exampleModalLabel">Xác nhận xoá !</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden id="deleteId" name="deleteId">
                    <span>Bạn có muốn xóa Employee </span>
                    <span class="text-danger" id="deleteName"></span><span> không?</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="action" value="delete">Delele
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<%--<%@include file="/view/interface/footer.jsp" %>--%>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script>
    function infoDelete(id, name) {
        document.getElementById("deleteId").value=id;
        document.getElementById("deleteName").innerText=name;

    }
</script>
</html>
