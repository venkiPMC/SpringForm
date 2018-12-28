<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/mdb.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- Material form contact -->
<div class="container-fluid">

    <h5 class="card-header info-color white-text text-center py-4">
        <strong>Contact us</strong>
    </h5>

    <!--Card content-->
    <div class="card-body px-lg-5 pt-0">

        <!-- Form -->
        <form class="text-center" style="color: #757575;">

            <!-- Name -->
            <div class="md-form mt-3">
                <input type="text" id="materialContactFormName" class="form-control">
                <label for="materialContactFormName">Name</label>
            </div>

            <!-- E-mail -->
            <div class="md-form">
                <input type="email" id="materialContactFormEmail" class="form-control">
                <label for="materialContactFormEmail">E-mail</label>
            </div>

            <!--Message-->
            <div class="md-form">
                <textarea type="text" id="materialContactFormMessage" class="form-control md-textarea" rows="3"></textarea>
                <label for="materialContactFormMessage">Message</label>
            </div>

            <!-- Copy -->
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="materialContactFormCopy">
                <label class="form-check-label" for="materialContactFormCopy">Send me a copy of this message</label>
            </div>

            <!-- Send button -->
            <button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit">Send</button>

        </form>
        <!-- Form -->


    </div>

</div>


<!-- Material form contact -->

<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
