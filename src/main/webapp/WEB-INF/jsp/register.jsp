<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/fontawesome/css/all.css">
    <link rel="stylesheet" href="css/default.css">
    <title>Register</title>
</head>

<body class="d-flex align-items-center justify-content-center">

    <!-- Card Registered -->
    <div class="card registration-form-card col-6 bg-transparent border-0">

        <!--Card Body-->
        <div class="card-body">
            <h1 class="form-header card-title mb-3">
            <i class="fa fa-edit">Register</i></h1>

            <c:if test="${requestScope.passwordMisMatch != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.passwordMisMatch}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->

            <!-- Display Message -->
            <c:if test="${requestScope.success != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.success}</b>
                </div>
            </c:if>

            <form:form action="/register" class="reg-form" modelAttribute="registerUser">
                   <!-- Row -->
                   <div class="row">
                       <!-- From Group -->
                       <div class="form-group col">
                           <form:input type="text" path="first_name" class="form-control form-control-lg" placeholder="Enter First Name"/>
                           <form:errors path="first_name" class="text-white bg-danger"/>
                       </div>
                       <!-- End Of From Group -->

                       <!-- From Group -->
                       <div class="form-group col">
                           <form:input type="text" path="last_name" class="form-control form-control-lg" placeholder="Enter Last Name"/>
                           <form:errors path="last_name" class="text-white bg-danger"/>
                       </div>
                       <!-- End Of From Group -->
                   </div>
                   <!-- End Of Row -->

                   <!-- From Group -->
                   <div class="form-group col">
                       <form:input type="email" path="email" class="form-control form-control-lg" placeholder="Enter Email"/>
                       <form:errors path="email" class="text-white bg-danger"/>

                   </div>
                   <!-- End Of From Group -->

                   <!-- Row -->
                   <div class="row">
                       <!-- From Group -->
                       <div class="form-group col">
                           <form:input type="password" path="password" class="form-control form-control-lg" placeholder="Enter Password"/>
                           <form:errors path="password" class="text-white bg-danger"/>
                       </div>
                       <!-- End Of From Group -->

                       <!-- From Group -->
                       <div class="form-group col">
                           <input type="password" name="confirm_password" class="form-control form-control-lg" placeholder="Confirm Password"/>
                           <small class="text-white bg-danger">${confirm_pass}</small>
                       </div>
                       <!-- End Of From Group -->
                   </div>
                   <!-- End Of Row -->

                   <!-- From Group -->
                   <div class="form-group col">
                       <button class="btn btn-lg">Register</button>
                   </div>
                   <!-- End Of From Group -->

            </form:form>
            <p class="card-text text-white my-2">
                Already have an Account <span class="ms-2"><a href ="/login" class="btn btn-sm text-warning">Sign In
                </a></span>
            </p>

            <small class="text-warning">
                <i class="fa fa-arrow-alt-circle-left"></i>
                <a href="/" class="btn btn-sm text-warning" >Back</a>
            </small>

        </div>
        <!-- Card body End-->

    </div>

    <!--card Registration form card-->

</body>
</html>