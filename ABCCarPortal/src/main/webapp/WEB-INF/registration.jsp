<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>  

<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="/style/Noemi.css" rel="stylesheet" />
</head>

<style>
    .form-box-registration {
      box-shadow: 0 0 30px #ff748c; /* Add shadow effect */
      padding: 20px; /* Add some padding for better appearance */
      border-radius: 10px; /* Optional: Add border radius for rounded corners */
    }
  </style>

<body>
<%@ include file="header.jsp"%>
<c:if test="${success_register != null}">

	<div class="alert alert-success">${success_register} Click here to <a href="login">
	Sign In</a> </div>

</c:if>
	<section id="registration">
	<div class="form-box-registration">
		<div class="form-value">
			<sf:form action="register" method="post" class="was-validated" modelAttribute="user">
				<h2 class="registration">Register</h2>
				<div class="inputbox">
					<input type="text" name="name" path="name" required="true">
					<label for="name">Name</label>
				</div>
				
				<div class="inputbox">
					<input type="text" id="userName" name="userName" path="userName" required="true">
					<label for="userName">Username</label>
				</div>

				<div class="inputbox">
					<input type="email" name="email" path="email" required="true">
					<label for="email">Email</label>
				</div>

				<div class="inputbox">
					<input type="password" id="password" name="password" path="password" required="true">
					<label for="password">Password</label>
				</div>
				
				<input class="register-button" type="submit" value="Register"></input>
			</sf:form>
		</div>
	</div>
</section>

<%@ include file="footer.jsp"%>
</body>
</html>
