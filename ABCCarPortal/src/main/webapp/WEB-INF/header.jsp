<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
<link href="css/styles.css" rel="stylesheet" />

<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <h4 class="text-white">ABC Cars</h4>
        <sec:authorize access="isAuthenticated()">
        	<div class="navbar-nav px-5 py-3">
				<sf:form action="search" method="get" style="width: 70%;">
					<div class="input-group">
						<input type="search" class="form-control rounded"
							placeholder="Search" aria-label="Search" name="keyword"
							aria-describedby="search-addon" />
						<button type="submit" class="btn btn-outline-primary">search</button>
					</div>
				</sf:form>
			</div>
        </sec:authorize>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <sec:authorize access="!isAuthenticated()">
                <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    <li class="nav-item"><a href="register_user">Register</a></li>
                    <li class="nav-item"><a href="about_us">About Us</a></li>
                    <li class="nav-item"><a href="contact_us">Contact Us</a></li>
                    <li class="nav-item"><a href="login">Login</a></li>
                </ul>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <sec:authorize access="hasRole('Users')">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a href="cars">Home</a></li>
                        <li class="nav-item"><a href="profile">Profile</a></li>
                        <li class="nav-item"><form action="logout" method="post">
                            <input type="hidden" name="${_csrf.parameterName}"
                                value="${_csrf.token}" /> <a><input type="submit" name="Logout"
                                value="Logout"></input></a>
                        </form></li>
                    </ul>
                </sec:authorize>

                <sec:authorize access="hasRole('Administrator')">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a href="cars">Home</a></li>
                        <li class="nav-item"><a href="all_cars">Car Management</a></li>
                        <li class="nav-item"><a href="users">User Management</a></li>
                        <li class="nav-item"><a href="profile">Profile</a></li>
                        <li class="nav-item"><form action="logout" method="post">
                            <input type="hidden" name="${_csrf.parameterName}"
                                value="${_csrf.token}" /> <a><input type="submit" name="Logout"
                                value="Logout"></input></a>
                        </form></li>
                    </ul>
                </sec:authorize>
            </sec:authorize>
        </div>
    </div>
</nav>