<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 09-Jun-22
  Time: 9:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Employee List</title>
        <link rel="stylesheet" href="template/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="template/datatable/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="template/style.css">
    </head>
    <body>
        <%--++++++++++header+++++++++--%>
        <div>
                <%@include file="/template/layout/header.jsp" %>
        </div>
        <!--++++++++++++navbar top++++++++++++++++++-->
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
                <%@include file="/template/layout/sidebar.jsp" %>
                <div class="col-md-10">
                    <center>
                        <h1 class="font-text-footer">Employee List</h1>
                        <c:if test="${mess !=null}">
                            <h2 class="text-danger">${mess}</h2>
                        </c:if>
                    </center>
                    <br>
                    <table id="tableEmployee" class="table table-hover" style="font-size: 12px; display: grid">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Birthday</th>
                                <th>Id Card</th>
                                <th>Salary</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Position</th>
                                <th>Education Degree</th>
                                <th>Division</th>
                                <th>Username</th>
                                <th></th>
                                <th><a href="/employee?action=create">
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
                                                onclick="showInfo('${employee.id}','${employee.name}')"
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
        </div>

        <!-- Modal -->
        <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <%--            ---------thêm thẻ form---------%>
                <form action="/employee" method="get">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-danger" id="exampleModalLabel">Xác nhận xoá !</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="text" hidden id="idEmployee" name="idDelete">
                            <span>Bạn có muốn xóa Employee </span>
                            <span class="text-danger" id="nameEmployee"></span><span> không?</span>
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
        <%--+++++footer+++++++--%>
        <div>
            <%@include file="/template/layout/footer.jsp" %>
        </div>
    </body>
    <script src="template/bootstrap/jquery-3.6.0.min.js"></script>
    <script src="template/bootstrap/js/bootstrap.js"></script>
    <script src="template/datatable/js/jquery.dataTables.min.js"></script>
    <script src="template/datatable/js/dataTables.bootstrap4.min.js"></script>
    <script src="template/main.js"></script>
    <script>
        $(document).ready(function () {
            $('#tableEmployee').dataTable({
                "dom": 'lrtip',
                "lengthChange": false,
                "pageLength": 6
            });
        });

        function showInfo(id, name) {
            document.getElementById("idEmployee").value = id;
            document.getElementById("nameEmployee").innerText = name;
        }
    </script>
</html>


