<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="/style/Noemi.css" rel="stylesheet" />

<style>
    .form-box {
      box-shadow: 0 0 30px #ff748c; /* Add shadow effect */
      padding: 20px; /* Add some padding for better appearance */
      border-radius: 10px; /* Optional: Add border radius for rounded corners */
    }
  </style>
</head>
<body>
<%@ include file="header.jsp"%>
	<c:if test="${error_string != null}">
	<div class="alert alert-danger">${error_string} Click here to <a href="register_user">
		Register</a></div>
	</c:if>
	<section id="login">
		<div class="form-box">
		<c:url var="post_url" value="/login" />
			<div class="form-value">
				<form action="${post_url}" method="post" class="was-validated">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<h2 class="login">Login</h2>
					<div class="inputbox">
						<ion-icon name="person-outline"></ion-icon>
						<input type="text" id="userName" name="username" value="" required>
						<label for="username">Username</label>
					</div>
					
					<div class="inputbox">
						<ion-icon name="lock-closed-outline"></ion-icon>
						<input type="password" id="password" name="password" value="" required>
						<label for="username">Password</label>
					</div>
					
					<div class="forget">
						<label for=""><input type="checkbox">Remember Me</label>
						<a href="#">Forgot Password?</a>
					</div>
					
					<input class="login-button" type="submit" name="Login" value="Login"></input>
					
					<div class="register">
						<p>Don't have an account yet? Click here to <a href="register_user">Register</a></p>
					</div>
				</form>
			</div>
		</div>
	</section>
	
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	
<%@ include file="footer.jsp"%>
</body>
</html>
