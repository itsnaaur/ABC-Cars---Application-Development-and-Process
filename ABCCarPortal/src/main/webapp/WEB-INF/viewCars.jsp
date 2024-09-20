<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
<link href="/css/styles.css" rel="stylesheet" />

</head>

<body>
<%@ include file="header.jsp"%>
		<header class="masthead2" style= "background-image: url(https://www.phgmag.com/wp-content/uploads/2021/06/PHG0721AuthCars02-1.jpg); no-repeat;">
            <div class="container">
                <div class="masthead-heading text-uppercase">ABC CARS</div>
                <div class="masthead-subheading">Rediscover Luxury: Experience the Pinnacle of Pre-Owned Prestige at ABC Cars - Where Every Vehicle is a Testament to Quality Craftsmanship!</div>
                <a class="btn btn-secondary btn-xl text-uppercase" href="#services" style="box-shadow: 0 0 30px #ff748c;">Tell Me More</a>
            </div>
        </header>

        <div class="container mt-5 mb-5">
            <sec:authorize access="hasRole('Users')">
                <!-- post car link-->
                <div class="row p-3 mb-5" style="border: 1px solid rgb(126, 120, 120); border-radius: 20px;">
                    <div class="col-5">
                        <p class="font-weight-bold"
                            style="margin-bottom: 0px; font-weight: bolder;">Sell Your Car
                            Today!</p>
                        <p style="margin-bottom: 0px;">Sell Your Car
                            in a click with Us</p>
                    </div>
                    <div class="col-4"></div>
                    <div class="col col-lg-2" style="text-align: end; margin: auto;">
                        <span class="border border-white p-2"> <!-- Button trigger modal -->
                            <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal" style="font-color: white;">
                                Sell Now</button>
                        </span>
                        <!-- Modal -->
    
                        <div class="modal fade" id="exampleModal" tabindex="-1"
                            aria-labelledby="exampleModalLabel" aria-hidden="true"
                            role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
    
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Sell Your
                                            Car Today!</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <c:if test="${success_post != null}">
                                            <div class="alert alert-success">${success_post}</div>
                                        </c:if>
    
                                        <!-- Car Post Form -->
                                        <sf:form action="car_post" method="post" class="was-validated"
                                            modelAttribute="car" enctype="multipart/form-data">
                                            <div class="mb-3 mt-3">
                                                <label for="name" class="d-flex form-label">Name:</label>
                                                <sf:input type="text" class="form-control"
                                                    placeholder="Enter car name" name="name" path="name"
                                                    required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="model" class="d-flex form-label">Model:</label>
                                                <sf:input type="text" class="form-control"
                                                    placeholder="Enter model" name="model" path="model"
                                                    required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="price" class="d-flex form-label">Price
                                                    (USD):</label>
                                                <sf:input type="text" class="form-control" id="price"
                                                    placeholder="Enter car price" name="price" path="price"
                                                    required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="make" class="d-flex form-label">Make
                                                    Year:</label>
                                                <sf:input type="text" class="form-control"
                                                    placeholder="Enter make year" name="make" path="make"
                                                    required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="registeration" class="d-flex form-label">Registration
                                                    Date:</label>
                                                <sf:input type="text" class="form-control" id="registeration"
                                                    placeholder="Enter registeration date" name="registeration"
                                                    path="registeration" required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="d-flex form-label">Photo:</label> <input
                                                    type="file" class="form-control" name="fileImage" id="photo"
                                                    accept="image/png, image/jpeg" required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
    
                                            <div class="holder"
                                                style="height: 300px; width: 300px; margin: auto;">
                                                <img id="imgPreview" src="#" alt="image preview"
                                                    style="width: inherit;" />
                                            </div>
    
                                            <button type="submit" class="btn btn-secondary d-flex">Post</button>
                                        </sf:form>
                                        <script>
                                        $(document).ready(() => {
                                            
                                            $("#photo").change(function () {
                                                const file = this.files[0];
                                                if (file) {
                                                    let reader = new FileReader();
                                                    reader.onload = function (event) {
                                                        $("#imgPreview")
                                                          .attr("src", event.target.result);
                                                    };
                                                    reader.readAsDataURL(file);
                                                }
                                            });
                                        });
                                    </script>
                                        <!-- Car Post Form -->
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
    
                                    </div>
                                </div>
                            </div>
    
                        </div>
                    </div>
                </div>
            </sec:authorize>
            <!-- post car link-->
    
    
            <!-- list of all cars posted -->
            <div class="row" style="gap: 60px;">
                <c:forEach items="${cars}" var="c">
                    <c:set var="id" value="${c.id}"></c:set>
                    <c:if test="${success_post == null}">
    
                        <c:if test="${c.sellStatus != 'sold'}">
                            <div class="card" style="width: 400px">
                                <img class="card-img-top" src="${c.photoImagePath}"
                                    alt="${c.photos}" style="width: 100%">
                                <div class="card-body">
                                    <h4 class="card-title">${c.name}</h4>
                                    <p class="card-text">
                                        <i class="fas fa-tags"></i>&nbsp;USD ${c.price}
                                    </p>
    
                                    <!--<a href="#" class="btn"
                                style="background-color: red; margin-right: 40px;">Book a
                                Test Drive</a>-->
                                    <a href="/car_detail?cid=${c.id}" class="btn btn-secondary">View
                                        Car Details</a>
                                </div>
                            </div>
                        </c:if>
    
                    </c:if>
                </c:forEach>
                <c:if test="${success_post != null}">
                    <div class="alert alert-success">${success_post}
                        Click here to <a href="/car_detail?cid=${id}">View</a> your car
                        post
                    </div>
                </c:if>
            </div>
            <!-- list of all cars posted -->
        </div>
        
        <section class="page-section bg-dark" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase text-white pb-5">Find Car Dealerships</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="https://di-uploads-pod9.dealerinspire.com/illininissan/uploads/2021/12/Sell-My-Car-Dealership-Meeting.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Brisbane City Used Cars</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="https://www.chase.com/content/dam/unified-assets/photography/articles/auto/buying/seo-buying-a-used-car-from-a-dealership_01052023.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Kelvin Grove QLD</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img style="height: 235px;" class="img-fluid" src="https://gaugemagazine.com/wp-content/uploads/2019/08/Negotiating-With-a-Car-Dealership-.png" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Wiltson QLD</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img style="height: 261px;" class="img-fluid" src="https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL2Nhci1kZWFsZXJzaGlwLW91dGRhdGVkLmpwZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6IjEyMDAifX19" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Paddington QLD</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img style="height: 261px; width: 450px;" class="img-fluid" src="https://smartcdn.gprod.postmedia.digital/driving/wp-content/uploads/2020/03/car-dealer-dealership-salesman-salesperson-new-car-buyer-purchase-1-e1585324385233.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Bowen Hills QLD</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img style="height: 261px;" class="img-fluid" src="https://www.the-sun.com/wp-content/uploads/sites/6/2023/06/close-couple-picking-new-car-827546184.jpg?strip=all&w=960" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Kedron</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="py-5">
            <div class="container">
                <h3 class="section-subheading text-dark text-center pb-2">Our Partners</h3>
                <div class="row align-items-center p-2">
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img style="width: 300px; height: 200px;" class="img-fluid img-brand d-block mx-auto" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuH5BsXL1Zy1Srr8qrrsCyImGN8K_MpxmhWVKqh192Cw&s" alt="..." aria-label="Microsoft Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img style="width: 300px; height: 200px;" class="img-fluid img-brand d-block mx-auto" src="https://wieck-nissanao-production.s3.amazonaws.com/photos/826d4fea6efc58c83d1dd23d683888e84d822960/thumbnail-364x204.jpg" alt="..." aria-label="Google Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img style="width: 300px; height: 200px;" class="img-fluid img-brand d-block mx-auto" src="https://uploads.audi-mediacenter.com/system/production/media/1282/images/bde751ee18fe149036c6b47d7595f6784f8901f8/AL090142_web_2880.jpg?1698171883" alt="..." aria-label="Facebook Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img style="width: 300px; height: 200px;" class="img-fluid img-brand d-block mx-auto" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGieSHtgWmefYnYTl15WaQEDiR784nzkpfaocl0Sbhfg&s" alt="..." aria-label="IBM Logo" /></a>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<%@ include file="footer.jsp"%>
</body>
</html>