<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
<link href="/css/styles.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>
<%@ include file="header.jsp"%>

	<header class="masthead" style= "background-image: url(https://www.phgmag.com/wp-content/uploads/2021/06/PHG0721AuthCars02-1.jpg); no-repeat;">
        <div class="container">
            <div class="masthead-heading text-uppercase">ABOUT US</div>
            <div class="masthead-subheading">Get to know more about ABC Car Portal</div>
        </div>
    </header>
        
	<section class="page-section bg-light" id="team">
         <div class="container">
             <div class="text-center">
                 <h2 class="section-heading text-uppercase">About</h2>
             </div>
             <div class="row pb-5">
                 <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">
                     Welcome to Abc Cars - Where Luxury Redefined Meets Unmatched Quality Assurance
                     At Abc Cars, we're dedicated to redefining luxury through our commitment to unparalleled quality and craftsmanship. As purveyors of pre-owned prestige, we invite you to rediscover the essence of luxury with every vehicle in our collection.
                     Our Journey
                     Abc Cars began as a shared vision among three extraordinary individuals: Zain Javadd Malik, Keanu Charles Reeves, and Matthew Steven Leblanc. Through their combined expertise and unwavering dedication, they transformed a dream into reality, establishing Abc Cars as a beacon of excellence in the pre-owned car industry.
                     Meet the Driving Force
                     Zain Javadd Malik, our esteemed CEO, is a visionary leader dedicated to setting new standards of luxury and performance. With his guidance, Abc Cars has become synonymous with prestige and refinement, offering customers an unparalleled experience from start to finish.
                     Keanu Charles Reeves, our esteemed COO, ensures that every aspect of our operations reflects our commitment to excellence. With a focus on efficiency and customer satisfaction, Keanu guarantees that each vehicle in our collection meets the highest standards of quality and craftsmanship.
                     Matthew Steven Leblanc, our esteemed Chairman, brings strategic insight and industry knowledge to the forefront, guiding Abc Cars towards continued success and innovation. Under his leadership, Abc Cars remains at the forefront of the pre-owned car market, setting new benchmarks for luxury and prestige.
                     Our Promise
                     At Abc Cars, we believe that luxury should be accessible to all. That's why we meticulously curate our collection to include only the finest vehicles, each a testament to quality craftsmanship and uncompromising performance. Whether you're in search of a sleek sedan, a rugged SUV, or a luxurious coupe, you'll find it at Abc Cars - where every vehicle is a masterpiece waiting to be discovered.
                     Experience the Abc Cars Difference
                     Rediscover luxury with Abc Cars and experience the pinnacle of pre-owned prestige. From our handpicked selection of vehicles to our unparalleled customer service, we're committed to exceeding your expectations at every turn. Join us on this journey and discover why Abc Cars is where luxury meets excellenc
                 </p></div>
             </div>
             <div class="text-center pt-5 pb-4">
                 <h2 class="section-heading text-uppercase">The Driving Force</h2>
             </div>
             <div class="row">
                 <div class="col-lg-4">
                     <div class="team-member">
                         <img class="mx-auto rounded-circle team-member-image" src="/images/zayn.jpg" alt="..." />
                         <h4>Zain Javadd Malik</h4>
                         <p class="text-muted">CEO</p>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Twitter Profile"><i class="fab fa-twitter"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                     </div>
                 </div>
                 <div class="col-lg-4">
                     <div class="team-member">
                         <img class="mx-auto rounded-circle team-member-image" src="/images/keanu.jpg" alt="..." />
                         <h4>Keanu Charles Reeves</h4>
                         <p class="text-muted">COO</p>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Twitter Profile"><i class="fab fa-twitter"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                     </div>
                 </div>
                 <div class="col-lg-4">
                     <div class="team-member">
                         <img class="mx-auto rounded-circle team-member-image" src="/images/matt.jpg" alt="..." />
                         <h4>Matthew Steven Leblanc</h4>
                         <p class="text-muted">Chairman</p>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Twitter Profile"><i class="fab fa-twitter"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                     </div>
                 </div>
             </div>
         </div>
     </section>

<%@ include file="footer.jsp"%>
</body>
</html>
