<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="icon" href="<c:url value="/resources/truck-front.png"/>">

    <title>Manager's UI</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jumbotron.css"/>">
    <style type="text/css">
        acronym {
            border-bottom: none; /* Подчеркивание текста */
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
    <a class="navbar-brand" href="#">
        <img src="<c:url value="/resources/truck.svg"/>" width="30" height="30" class="d-inline-block align-top" alt="Click to description">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="manager-navbar">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="trips">TRIPS <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="trucks">VEHICLES<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="drivers">DRIVERS<span class="sr-only">(current)</span></a>
            </li>
        </ul>

    </div>
</nav>

<main role="main">
    <div class="mx-3 mb-3">
        <h1>Drivers</h1>

        <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModalCenter">Add</button>
        <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModalCenter">Edit</button>
        <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModalCenter">Delete</button>
    </div>
    <div>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">name</th>
                <th scope="col"><acronym type="" title="off-work/standby/driving">status</acronym></th>
                <th scope="col">hours</th>
                <th scope="col">current vehicle</th>
                <th scope="col">phone number</th>
                <th scope="col">e-mail</th>
                <th scope="col">partners</th>
                <th scope="col">current location</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${driversAndCitiesList.driverList}" var="driver">
                    <tr>
                        <td>${driver._driver_name}<br>${driver._driver_surname}</td>
                        <td>${driver._driver_status}</td>
                        <td>${driver._driver_hours}</td>
                        <td>${driver._driver_vehicle}</td>
                        <td>${driver._driver_phone_number}</td>
                        <td>${driver._driver_email}</td>
                        <td></td>
                        <td>${driver._driver_city}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Add a new Driver</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="drivers" method="post" modelAttribute="addDriverForm">
                    <div class="modal-body">
                        <div class="form-group row">
                            <label for="driver-name-input" class="col-5 col-form-label">Name:</label>
                            <div class="col-5">
                                <input class="form-control" type="text" id="driver-name-input" name="driver-name-input">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="driver-surname-input" class="col-5 col-form-label">Surname:</label>
                            <div class="col-5">
                                <input class="form-control" type="text" id="driver-surname-input" name="driver-surname-input">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="driver-phone-input" class="col-5 col-form-label">Phone number:</label>
                            <div class="col-5">
                                <input class="form-control" type="text" value="79213241569" id="driver-phone-input" name="driver-phone-input">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="driver-mail-input" class="col-5 col-form-label">E-mail:</label>
                            <div class="col-5">
                                <input class="form-control" type="text" value="79213241569" id="driver-mail-input" name="driver-mail-input">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="city-select" class="col-5 col-form-label">Current location:</label>
                            <div class="col-5">
                                <select class="custom-select" id="city-select" name="city-select">
                                    <c:forEach items="${truckAndCitiesList.cityList}" var="city">
                                        <option value="${city._city_id}">${city._city_name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add driver</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/resources/js/jquery-slim.min.js"><\/script>')</script>
<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</body>
</html>

