<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Work CV</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

  <!-- CSS -->
  <link href="<c:url value="/assets/css/open-iconic-bootstrap.min.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/animate.css" />" rel="stylesheet">
  <link href="<c:url value="/assets/css/owl.carousel.min.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/owl.theme.default.min.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/magnific-popup.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/owl.carousel.min.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/owl.theme.default.min.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/aos.css" />" rel="stylesheet">
  <link href="<c:url value="/assets/css/ionicons.min.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/bootstrap-datepicker.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/jquery.timepicker.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/css/bootstrap-reboot.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/css/mixins/_text-hide.css" />"
  	rel="stylesheet">
  <link href="<c:url value="/assets/css/flaticon.css" />" rel="stylesheet">
  <link href="<c:url value="/assets/css/icomoon.css" />" rel="stylesheet">
  <link href="<c:url value="/assets/css/style.css" />" rel="stylesheet">
  <link href="<c:url value="/assets/css/bootstrap/bootstrap-grid.css" />"
  	rel="stylesheet">
  <link
  	href="<c:url value="/assets/css/bootstrap/bootstrap-reboot.css" />"
  	rel="stylesheet">

  <!-- JS -->
  <script src="<c:url value="/assets/js/jquery.min.js" />"></script>
  <script src="<c:url value="/assets/js/jquery-migrate-3.0.1.min.js" />"></script>
  <script src="<c:url value="/assets/js/popper.min.js" />"></script>
  <script src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
  <script src="<c:url value="/assets/js/jquery.easing.1.3.js" />"></script>
  <script src="<c:url value="/assets/js/jquery.waypoints.min.js" />"></script>
  <script src="<c:url value="/assets/js/jquery.stellar.min.js" />"></script>
  <script src="<c:url value="/assets/js/owl.carousel.min.js" />"></script>
  <script src="<c:url value="/assets/js/jquery.magnific-popup.min.js" />"></script>
  <script src="<c:url value="/assets/js/aos.js" />"></script>
  <script src="<c:url value="/assets/js/jquery.animateNumber.min.js" />"></script>
  <script src="<c:url value="/assets/js/scrollax.min.js" />"></script>
  <script
  	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="<c:url value="/assets/js/google-map.js" />"></script>
  <script src="<c:url value="/assets/js/main.js" />"></script>
  <script
  	src="https://cdn.ckeditor.com/ckeditor5/29.0.0/classic/ckeditor.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </head>
  <body>
  <body>
  	<nav class="header_menu"
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container-fluid px-md-4	">
			<a class="navbar-brand" href="/asm2/">Work CV</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="/asm2/" class="nav-link">Trang
							chủ</a></li>
					<li class="'nav-item"><a
						href="/asm2/recruitment/list-all-jobs" class="nav-link">Công
							việc</a></li>
					<c:if test="${empty sessionScope.full_name}">
						<li class="nav-item cta cta-colored"><a href="/asm2/auth/login"
							class="nav-link">Đăng nhập</a></li>
					</c:if>
					
					<c:if test="${not empty sessionScope.full_name}">
							<li class="nav-item cta mr-md-1"><a class="nav-link" href="/asm2/user/profile">Hồ Sơ</a></li>
							<c:if test="${sessionScope.role eq  0}">
								<li class="nav-item active" ><a href="/asm2/user/list-apply-job" class="nav-link">Công việc đã ứng
										tuyển</a></li>
							</c:if>
							
							<c:if test="${sessionScope.role eq  1}">
								<li class="nav-item cta mr-md-1"><a
									href="/asm2/recruitment/post" class="nav-link">Đăng tuyển</a></li>
								<li class="nav-item cta mr-md-1"><a href="/asm2/recruitment/list-post"
								class="nav-link">Danh sách bài đăng</a></li>
							</c:if>
							
							<li  class="nav-item active"><a href="/asm2/auth/logout" class="nav-link">Đăng xuất</a></li>
					</c:if>

					<li></li>



				</ul>
			</div>
		</div>
	</nav>
	<!-- END NAV -->
  	<!-- END NAV -->

<div class="hero-wrap hero-wrap-2" style="background-image: url('user/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text align-items-end justify-content-start">
      <div class="col-md-12 ftco-animate text-center mb-5">
        <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Job Post</span></p>
        <h1 class="mb-3 bread">Browse Job</h1>
      </div>
    </div>
  </div>
</div>
<section style="display: block" class="ftco-section">
  <div class="">
    <div class="row justify-content-center mb-5">
      <div class="col-md-7 heading-section text-center ">
        <span class="subheading">Job Categories</span>
        <h2 class="mb-0">Top Categories</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3 ">
        <ul class="category text-center">
          <li><a href="#">Web Development <br><span class="number">354</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Graphic Designer <br><span class="number">143</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Multimedia <br><span class="number">100</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Advertising <br><span class="number">90</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
        </ul>
      </div>
      <div class="col-md-3 ">
        <ul class="category text-center">
          <li><a href="#">Education &amp; Training <br><span class="number">100</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">English <br><span class="number">200</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Social Media <br><span class="number">300</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Writing <br><span class="number">150</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
        </ul>
      </div>
      <div class="col-md-3 ">
        <ul class="category text-center">
          <li><a href="#">PHP Programming <br><span class="number">400</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Project Management <br><span class="number">100</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Finance Management <br><span class="number">222</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Office &amp; Admin <br><span class="number">123</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
        </ul>
      </div>
      <div class="col-md-3 ">
        <ul class="category text-center">
          <li><a href="#">Web Designer <br><span class="number">324</span> <span>Open position</span></span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Customer Service <br><span class="number">564</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Marketing &amp; Sales <br><span class="number">234</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
          <li><a href="#">Software Development <br><span class="number">425</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
</section>

<section class="ftco-section ftco-no-pb bg-light">
  <div class="container">
    <div class="row justify-content-center mb-4">
      <div class="col-md-7 text-center heading-section ">
        <span class="subheading">Browse Jobs</span>
        <h2 class="mb-4">Advance Search</h2>
      </div>
    </div>
    <div class="row">
      <div class="ftco-search">
        <div class="row">
          <div class="col-md-12 nav-link-wrap">
            <div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Find a Job</a>

              <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Find a Candidate</a>

            </div>
          </div>
          <div class="col-md-12 tab-wrap">

            <div class="tab-content p-4" id="v-pills-tabContent">

              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                <form action="#" class="search-job">
                  <div class="row no-gutters">
                    <div class="col-md mr-md-2">
                      <div class="form-group">
                        <div class="form-field">
                          <div class="icon"><span class="icon-briefcase"></span></div>
                          <input type="text" class="form-control" placeholder="eg. Garphic. Web Developer">
                        </div>
                      </div>
                    </div>
                    <div class="col-md mr-md-2">
                      <div class="form-group">
                        <div class="form-field">
                          <div class="select-wrap">
                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                            <select name="" id="" class="form-control">
                              <option value="">Category</option>
                              <option value="">Full Time</option>
                              <option value="">Part Time</option>
                              <option value="">Freelance</option>
                              <option value="">Internship</option>
                              <option value="">Temporary</option>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md mr-md-2">
                      <div class="form-group">
                        <div class="form-field">
                          <div class="icon"><span class="icon-map-marker"></span></div>
                          <input type="text" class="form-control" placeholder="Location">
                        </div>
                      </div>
                    </div>
                    <div class="col-md">
                      <div class="form-group">
                        <div class="form-field">
                          <button type="submit" class="form-control btn btn-primary">Search</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>

              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                <form action="#" class="search-job">
                  <div class="row">
                    <div class="col-md">
                      <div class="form-group">
                        <div class="form-field">
                          <div class="icon"><span class="icon-user"></span></div>
                          <input type="text" class="form-control" placeholder="eg. Adam Scott">
                        </div>
                      </div>
                    </div>
                    <div class="col-md">
                      <div class="form-group">
                        <div class="form-field">
                          <div class="select-wrap">
                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                            <select name="" id="" class="form-control">
                              <option value="">Category</option>
                              <option value="">Full Time</option>
                              <option value="">Part Time</option>
                              <option value="">Freelance</option>
                              <option value="">Internship</option>
                              <option value="">Temporary</option>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md">
                      <div class="form-group">
                        <div class="form-field">
                          <div class="icon"><span class="icon-map-marker"></span></div>
                          <input type="text" class="form-control" placeholder="Location">
                        </div>
                      </div>
                    </div>
                    <div class="col-md">
                      <div class="form-group">
                        <div class="form-field border">
                          <button type="submit" class="form-control btn btn-primary">Search</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="ftco-section bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-9 pr-lg-4">
        <div class="row">
          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Partime</span>
                  <h2 class="mr-3 text-black"><a href="#">Frontend Development</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">Facebook, Inc.</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->

          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Fulltime</span>
                  <h2 class="mr-3 text-black"><a href="#">Full Stack Developer</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">Google, Inc.</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->

          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Freelance</span>
                  <h2 class="mr-3 text-black"><a href="#">Open Source Interactive Developer</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">New York Times</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->

          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Partime</span>
                  <h2 class="mr-3 text-black"><a href="#">Frontend Development</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">Facebook, Inc.</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->

          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Temporary</span>
                  <h2 class="mr-3 text-black"><a href="#">Open Source Interactive Developer</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">New York Times</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->

          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Fulltime</span>
                  <h2 class="mr-3 text-black"><a href="#">Full Stack Developer</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">Google, Inc.</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->

          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Freelance</span>
                  <h2 class="mr-3 text-black"><a href="#">Open Source Interactive Developer</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">New York Times</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->

          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Internship</span>
                  <h2 class="mr-3 text-black"><a href="#">Frontend Development</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">Facebook, Inc.</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->

          <div class="col-md-12 ftco-animate">
            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
              <div class="one-third mb-4 mb-md-0">
                <div class="job-post-item-header align-items-center">
                  <span class="subadge">Temporary</span>
                  <h2 class="mr-3 text-black"><a href="#">Open Source Interactive Developer</a></h2>
                </div>
                <div class="job-post-item-body d-block d-md-flex">
                  <div class="mr-3"><span class="icon-layers"></span> <a href="#">New York Times</a></div>
                  <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>
                </div>
              </div>

              <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                <div>
                  <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                    <span class="icon-heart"></span>
                  </a>
                </div>
                <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
              </div>
            </div>
          </div><!-- end -->
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 sidebar">
        <div class="sidebar-box bg-white p-4 ftco-animate">
          <h3 class="heading-sidebar">Browse Category</h3>
          <form action="#" class="search-form mb-3">
            <div class="form-group">
              <span class="icon icon-search"></span>
              <input type="text" class="form-control" placeholder="Search...">
            </div>
          </form>
          <form action="#" class="browse-form">
            <label for="option-job-1"><input type="checkbox" id="option-job-1" name="vehicle" value="" checked> Website &amp; Software</label><br>
            <label for="option-job-2"><input type="checkbox" id="option-job-2" name="vehicle" value=""> Education &amp; Training</label><br>
            <label for="option-job-3"><input type="checkbox" id="option-job-3" name="vehicle" value=""> Graphics Design</label><br>
            <label for="option-job-4"><input type="checkbox" id="option-job-4" name="vehicle" value=""> Accounting &amp; Finance</label><br>
            <label for="option-job-5"><input type="checkbox" id="option-job-5" name="vehicle" value=""> Restaurant &amp; Food</label><br>
            <label for="option-job-6"><input type="checkbox" id="option-job-6" name="vehicle" value=""> Health &amp; Hospital</label><br>
          </form>
        </div>

        <div class="sidebar-box bg-white p-4 ftco-animate">
          <h3 class="heading-sidebar">Select Location</h3>
          <form action="#" class="search-form mb-3">
            <div class="form-group">
              <span class="icon icon-search"></span>
              <input type="text" class="form-control" placeholder="Search...">
            </div>
          </form>
          <form action="#" class="browse-form">
            <label for="option-location-1"><input type="checkbox" id="option-location-1" name="vehicle" value="" checked> Sydney, Australia</label><br>
            <label for="option-location-2"><input type="checkbox" id="option-location-2" name="vehicle" value=""> New York, United States</label><br>
            <label for="option-location-3"><input type="checkbox" id="option-location-3" name="vehicle" value=""> Tokyo, Japan</label><br>
            <label for="option-location-4"><input type="checkbox" id="option-location-4" name="vehicle" value=""> Manila, Philippines</label><br>
            <label for="option-location-5"><input type="checkbox" id="option-location-5" name="vehicle" value=""> Seoul, South Korea</label><br>
            <label for="option-location-6"><input type="checkbox" id="option-location-6" name="vehicle" value=""> Western City, UK</label><br>
          </form>
        </div>

        <div class="sidebar-box bg-white p-4 ftco-animate">
          <h3 class="heading-sidebar">Job Type</h3>
          <form action="#" class="browse-form">
            <label for="option-job-type-1"><input type="checkbox" id="option-job-type-1" name="vehicle" value="" checked> Partime</label><br>
            <label for="option-job-type-2"><input type="checkbox" id="option-job-type-2" name="vehicle" value=""> Fulltime</label><br>
            <label for="option-job-type-3"><input type="checkbox" id="option-job-type-3" name="vehicle" value=""> Intership</label><br>
            <label for="option-job-type-4"><input type="checkbox" id="option-job-type-4" name="vehicle" value=""> Temporary</label><br>
            <label for="option-job-type-5"><input type="checkbox" id="option-job-type-5" name="vehicle" value=""> Freelance</label><br>
            <label for="option-job-type-6"><input type="checkbox" id="option-job-type-6" name="vehicle" value=""> Fixed</label><br>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="ftco-section-parallax">
  <div class="parallax-img d-flex align-items-center">
    <div class="container">
      <div class="row d-flex justify-content-center">
        <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
          <h2>Subcribe to our Newsletter</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
          <div class="row d-flex justify-content-center mt-4 mb-4">
            <div class="col-md-12">
              <form action="#" class="subscribe-form">
                <div class="form-group d-flex">
                  <input type="text" class="form-control" placeholder="Enter email address">
                  <input type="submit" value="Subscribe" class="submit px-3">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<footer th:replace="public/fragments :: footer" class="ftco-footer ftco-bg-dark ftco-section">

</footer>




</body>
</html>