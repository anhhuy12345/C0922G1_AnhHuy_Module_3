<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 09-Jun-22
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Employee Create</title>
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
                    <form class="d-flex m-0">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-light" type="submit">Search</button>
                    </form>
                </div>
            </nav>
        </div>

        <%--+++++++++content++++++++--%>
        <div class="row">
            <%@include file="/template/layout/sidebar.jsp" %>
            <div class="col-md-10 container">
                <center>
                    <h1 class="font-text-footer">Create Employee</h1>
                    <c:if test="${mess !=null}">
                        <h2 class="text-danger">${mess}</h2>
                    </c:if>
                    <br>
                    <div class="container">
                        <form action="/employee?action=create" method="post"
                              name="formCreate" onsubmit="return validateForm()">
                            <div class="input-group mb-3">
                                <span class="input-group-text">Name</span>
                                <input name="name" value="${name}" type=" text" class="form-control me-2"
                                       placeholder="name employee">

                                <span class="input-group-text">Birthday</span>
                                <input name="birthday" value="${birthday}" type="date" class="form-control me-2"
                                       placeholder="birthday">

                                <span class="input-group-text">Id Card</span>
                                <input name="idCard" value="${idCard}" type="text" class="form-control me-2"
                                       placeholder="Id Card">
                            </div>

                            <%-- Th??ng b??o kh??ng nh???p input--%>
                            <div class="input-group mb-5">
                                <span class="me-2 text-danger " style="left: 5px; position: absolute; font-weight: bold"
                                      id="nameNotInput"></span>
                                <span class="me-2 text-danger" id="birthdayNotInput"
                                      style="right: 445px; position: absolute; font-weight: bold"></span>
                                <span class="me-2 text-danger" id="idCardNotInput"
                                      style="right: 5px; position: absolute; font-weight: bold"></span>
                                <c:if test="${errors!=null}">
                                    <p class="me-2 text-danger"
                                       style="right: 5px; position: absolute; font-weight: bold">${errors.get("idCard")}</p>
                                </c:if>
                            </div>


                            <div class="input-group mb-3">
                                <span class="input-group-text">Salary</span>
                                <input name="salary" value="${salary}" type=" text" class="form-control me-2"
                                       placeholder="Salary">

                                <span class="input-group-text">Phone</span>
                                <input name="phone" value="${phone}" type="text" class="form-control me-2"
                                       placeholder="phone number">

                                <span class="input-group-text">Email</span>
                                <input name="email" value="${email}" type="text" class="form-control me-2"
                                       placeholder="email">
                            </div>

                            <%-- Th??ng b??o kh??ng nh???p input--%>
                            <div class="input-group mb-5">
                                <span class="me-2 text-danger " style="left: 5px; position: absolute; font-weight: bold"
                                      id="salaryNotInput"></span>
                                <span class="me-2 text-danger" id="phoneNotInput"
                                      style="right: 445px; position: absolute; font-weight: bold"></span>

                                <c:if test="${errors!=null}">
                                    <p class="me-2 text-danger"
                                       style="left: 5px; position: absolute; font-weight: bold">${errors.get("salary")}</p>
                                </c:if>

                                <c:if test="${errors!=null}">
                                    <p class="me-2 text-danger"
                                       style="right: 445px; position: absolute; font-weight: bold">${errors.get("phone")}</p>
                                </c:if>

                                <c:if test="${errors!=null}">
                                    <p class="me-2 text-danger"
                                       style="right: 5px; position: absolute; font-weight: bold">${errors.get("email")}</p>
                                </c:if>

                                <span class="me-2 text-danger" id="emailNotInput"
                                      style="right: 5px; position: absolute; font-weight: bold"></span>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Position</span>
                                <select name="positionId" class="me-2">
                                    <c:if test="${positionId == null}">
                                        <option value="">Ch???n</option>
                                        <c:forEach items="${positionList}" var="position">
                                            <option value="${position.positionId}">${position.name}</option>
                                        </c:forEach>
                                    </c:if>

                                    <c:if test="${positionId != null}">
                                        <c:forEach items="${positionList}" var="position">
                                            <c:if test="${position.positionId == employee.positionId}">
                                                <option value="${position.positionId}">${position.name}</option>
                                            </c:if>
                                        </c:forEach>

                                        <c:forEach items="${positionList}" var="position">
                                            <c:if test="${position.positionId != employee.positionId}">
                                                <option value="${position.positionId}">${position.name}</option>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </select>

                                <span class="input-group-text">Education Degree</span>
                                <select name="educationDegreeId" class="me-2">
                                    <c:if test="${educationDegreeId == null}">
                                        <option value="">Ch???n</option>
                                        <c:forEach items="${educationDegreeList}" var="educationDegree">
                                            <option value="${educationDegree.educationDegreeId}">${educationDegree.name}</option>
                                        </c:forEach>
                                    </c:if>

                                    <c:if test="${educationDegreeId != null}">
                                        <c:forEach items="${educationDegreeList}" var="educationDegree">
                                            <c:if test="${educationDegree.educationDegreeId == employee.educationDegreeId}">
                                                <option value="${educationDegree.educationDegreeId}">${educationDegree.name}</option>
                                            </c:if>
                                        </c:forEach>
                                        <c:forEach items="${educationDegreeList}" var="educationDegree">
                                            <c:if test="${educationDegree.educationDegreeId != employee.educationDegreeId}">
                                                <option value="${educationDegree.educationDegreeId}">${educationDegree.name}</option>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </select>


                                <span class="input-group-text">Division</span>
                                <select name="divisionId" class="me-2">
                                    <c:if test="${divisionId == null}">
                                        <option value="">Ch???n</option>
                                        <c:forEach items="${divisionList}" var="division">
                                            <option value="${division.divisionId}">${division.name}</option>
                                        </c:forEach>
                                    </c:if>

                                    <c:if test="${divisionId != null}">
                                        <c:forEach items="${divisionList}" var="division">
                                            <c:if test="${division.divisionId == employee.divisionId}">
                                                <option value="${division.divisionId}">${division.name}</option>
                                            </c:if>
                                        </c:forEach>

                                        <c:forEach items="${divisionList}" var="division">
                                            <c:if test="${division.divisionId != employee.divisionId}">
                                                <option value="${division.divisionId}">${division.name}</option>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div>

                            <%-- Th??ng b??o kh??ng nh???p input--%>
                            <div class="input-group mb-5">
                                <span class="me-2 text-danger" style="left: 5px; position: absolute; font-weight: bold"
                                      id="positionIdNotInput"></span>
                                <span class="me-2 text-danger" id="educationDegreeIdNotInput"
                                      style="right: 445px; position: absolute; font-weight: bold"></span>
                                <span class="me-2 text-danger" id="divisionIdNotInput"
                                      style="right: 5px; position: absolute; font-weight: bold"></span>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Address</span>
                                <input name="address" value="${address}" type="text" class="form-control me-2"
                                       placeholder="Address">

                                <span class="input-group-text">Username</span>
                                <input name="username" value="${username}" type="text" class="form-control me-2"
                                       placeholder="Username">
                            </div>

                            <%-- Th??ng b??o kh??ng nh???p input--%>
                            <div class="input-group mb-5">
                                <span class="me-2 text-danger " style="left: 5px; position: absolute; font-weight: bold"
                                      id="addressNotInput"></span>
                                <span class="me-2 text-danger" id="usernameNotInput"
                                      style="right: 5px; position: absolute; font-weight: bold"></span>
                            </div>

                            <br>
                            <button type="submit" class="btn btn-primary">Create</button>
                        </form>
                    </div>
                </center>
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

    <script>
        function validateForm() {
            let check = 0;
            let name = document.forms["formCreate"]["name"].value;
            let birthday = document.forms["formCreate"]["birthday"].value;
            let idCard = document.forms["formCreate"]["idCard"].value;
            let salary = document.forms["formCreate"]["salary"].value;
            let phone = document.forms["formCreate"]["phone"].value;
            let email = document.forms["formCreate"]["email"].value;
            let positionId = document.forms["formCreate"]["positionId"].value;
            let educationDegreeId = document.forms["formCreate"]["educationDegreeId"].value;
            let divisionId = document.forms["formCreate"]["divisionId"].value;
            let address = document.forms["formCreate"]["address"].value;
            let username = document.forms["formCreate"]["username"].value;

            // reset l???i c???nh b??o
            document.getElementById("nameNotInput").innerText = "";
            document.getElementById("birthdayNotInput").innerText = "";
            document.getElementById("idCardNotInput").innerText = "";
            document.getElementById("salaryNotInput").innerText = "";
            document.getElementById("phoneNotInput").innerText = "";
            document.getElementById("emailNotInput").innerText = "";
            document.getElementById("positionIdNotInput").innerText = "";
            document.getElementById("educationDegreeIdNotInput").innerText = "";
            document.getElementById("divisionIdNotInput").innerText = "";
            document.getElementById("addressNotInput").innerText = "";
            document.getElementById("usernameNotInput").innerText = "";

            if (name == "") {
                document.getElementById("nameNotInput").innerText = "B???n ch??a nh???p t??n nh??n vi??n";
                check++;
            }

            if (birthday == "") {
                document.getElementById("birthdayNotInput").innerText = "B???n ch??a nh???p ng??y sinh nh??n vi??n";
                check++
            }

            if (idCard == "") {
                document.getElementById("idCardNotInput").innerText = "B???n ch??a nh???p id card nh??n vi??n";
                check++
            }

            if (salary == "") {
                document.getElementById("salaryNotInput").innerText = "B???n ch??a nh???p l????ng nh??n vi??n";
                check++
            }

            if (phone == "") {
                document.getElementById("phoneNotInput").innerText = "B???n ch??a nh???p s??? ??i???n tho???i nh??n vi??n";
                check++
            }

            if (email == "") {
                document.getElementById("emailNotInput").innerText = "B???n ch??a nh???p email nh??n vi??n";
                check++
            }

            if (positionId == "") {
                document.getElementById("positionIdNotInput").innerText = "B???n ch??a nh???p v??? tr?? nh??n vi??n";
                check++
            }

            if (educationDegreeId == "") {
                document.getElementById("educationDegreeIdNotInput").innerText = "B???n ch??a nh???p h???c v???n nh??n vi??n";
                check++
            }

            if (divisionId == "") {
                document.getElementById("divisionIdNotInput").innerText = "B???n ch??a nh???p b??? ph???n l??m vi???c nh??n vi??n";
                check++
            }

            if (address == "") {
                document.getElementById("addressNotInput").innerText = "B???n ch??a nh???p ??ia ch??? nh??n vi??n";
                check++
            }

            if (username == "") {
                document.getElementById("usernameNotInput").innerText = "B???n ch??a nh???p t??i kho???n nh??n vi??n";
                check++
            }


            if (check > 0) {
                return false;
            }
        }
    </script>
</html>


