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
    <h1>Vehicles</h1>

    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModalCenter">Add</button>
    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModalCenter">Edit</button>
    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModalCenter">Delete</button>
    </div>
    <div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">registration No</th>
            <th scope="col">status</th>
            <th scope="col">driver</th>
            <th scope="col">location</th>
            <th scope="col">capacity</th>
            <th scope="col">quantity of drivers</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${truckAndCitiesList.truckList}" var="truck">
                <tr>
                    <td>${truck._truck_reg_number}</td>
                    <td></td>
                    <td></td>
                    <td>${truck._truck_current_location}</td>
                    <td>${truck._truck_capacity}</td>
                    <td>${truck._truck_quantity_of_drivers}</td>
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
                    <h5 class="modal-title" id="exampleModalLongTitle">Add a new Vehicle</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="trucks" method="post" modelAttribute="addTruckForm">
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="reg-number-input" class="col-5 col-form-label">Registration number:</label>
                        <div class="col-5">
                            <input class="form-control" type="text" value="AA12345" id="reg-number-input" name="reg-number-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="capacity-input" class="col-5 col-form-label">Vehicle capacity:</label>
                        <div class="col-5">
                            <input class="form-control" type="number" value="20" id="capacity-input" name="capacity-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="quantity-of-drivers-input" class="col-5 col-form-label">Quantity of drivers:</label>
                        <div class="col-5">
                            <input class="form-control" type="number" value="2" id="quantity-of-drivers-input" name="quantity-of-drivers-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="condition-select" class="col-5 col-form-label">Vehicle condition:</label>
                        <div class="col-5">
                            <select class="custom-select" id="condition-select" name="condition-select">
                                    <option value="1">working</option>
                                    <option value="0">in service</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="city-select" class="col-5 col-form-label">Select the current city:</label>
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
                    <button type="submit" class="btn btn-primary">Add vehicle</button>
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

