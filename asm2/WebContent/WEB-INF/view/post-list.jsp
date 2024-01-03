<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Work CV</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap"
	rel="stylesheet">

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

	<div class="hero-wrap hero-wrap-2"
		style="background-image: url('user/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5"
		th:if="${session.user.role.id == 2 }">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-start">
				<div class="col-md-12 text-center mb-5">
					<p class="breadcrumbs mb-0">
						<span class="mr-3"><a href="index.html">Trang chủ <i
								class="ion-ios-arrow-forward"></i></a></span>Danh sách <span></span>
					</p>
					<h1 class="mb-3 bread">Danh sách bài đăng</h1>
				</div>
			</div>
		</div>
	</div>

	<%-- 	<div c:if="${success eq true}" class="toast" data-delay="2500"
		style="position: fixed; top: 100PX; left: 10PX; z-index: 2000; width: 300px">
		<script>
        swal({
            title: 'Thành công!',
            /* text: 'Redirecting...', */
            icon: 'success',
            timer: 3000,
            buttons: true,
            type: 'success'
        })
    </script>
	</div>
	<div th:if="${error}" class="toast" data-delay="2500"
		style="position: fixed; top: 100PX; left: 10PX; z-index: 2000; width: 300px">
		<script>
        swal({
            title: 'Bài đăng đang có người ứng tuyển!',
            /* text: 'Redirecting...', */
            icon: 'error',
            timer: 3000,
            buttons: true,
            type: 'error'
        })
    </script>
	</div> --%>
	<c:if test="${sessionScope.role eq  0}">
		<div class="hero-wrap hero-wrap-2"
			style="background-image: url('user/assets/images/bg_1.jpg');"
			data-stellar-background-ratio="0.5"
			th:if="${session.user.role.id == 1 }">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text align-items-end justify-content-start">
					<div class="col-md-12 text-center mb-5">

						<h1 class="mb-3 bread">Không tìm thấy trang yêu cầu</h1>
					</div>
				</div>
			</div>
		</div>
	</c:if>

	<c:if test="${sessionScope.role eq  1}">
		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 pr-lg-4">
						<div class="row">
							<c:if test="${recruits.size() eq 0}">
								<div class="row form-group">
									<label for="company-website-tw d-block">Danh sách bài
										tuyển dụng </label> <br>
									<div class="col-md-12">
										<a href="/asm2/recruitment/post"
											class="btn px-4 btn-primary text-white">Đăng tuyển</a>
									</div>
								</div>
							</c:if>

							<c:if test="${recruits.size() gt 0}">
								<c:forEach var="recruitment" items="${recruits}">

									<div class="col-md-12 ">
										<div
											class="job-post-item p-4 d-block d-lg-flex align-items-center">
											<div class="one-third mb-4 mb-md-0">
												<div class="job-post-item-header align-items-center">
													<span class="subadge"> ${recruitment.type} </span>
													<h2 class="mr-3 text-black">
														<a>${recruitment.title}</a>
													</h2>
												</div>
												<div class="job-post-item-body d-block d-md-flex">
													<div class="mr-3">
														<span class="icon-layers"></span> <a href="#">${company_name}</a>
													</div>
													<div>
														<span class="icon-my_location"></span> <span>
															${recruitment.address}</span>
													</div>
												</div>
											</div>

											<div
												class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0"
												style="width: 330px !important;">
												<!--                                    <div>-->
												<!--                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">-->
												<!--                                            <span class="icon-heart"></span>-->
												<!--                                        </a>-->
												<!--                                    </div>-->
												<a
													href="/asm2/recruitment/job-details/${recruitment.recruitId}"
													class="btn btn-primary py-2 ml-2">Xem chi tiết</a> <a
													href="/asm2/recruitment/job-edit/${recruitment.recruitId}"
													class="btn btn-warning py-2 ml-2">Cập nhật</a> <a
													class="btn btn-danger py-2 ml-2"
													onclick="return confirm('Are you sure you want to delete this job?');"
													href="/asm2/recruitment/job-delete/${recruitment.recruitId}">Xóa</a>

											</div>
										</div>
									</div>
									<!-- end -->
									<!-- Modal -->
									<%-- 									<div class="modal fade"
										th:id="${'exampleModal'} + ${recruitment.id}" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Bạn có
														chắc chắn muốn xóa ?</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													Bài đăng : <span th:text="${recruitment.title}"></span>
													<form action="/recruitment/delete" method="post">
														<input type="hidden" class="form-control" id="id"
															name="id" th:value="${recruitment.id}">
														<div class="modal-footer mt-1">
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Đóng</button>
															<button type="submit" class="btn btn-danger">Xóa</button>
														</div>
													</form> 
												</div>

											</div>
										</div>
									</div>--%>
								</c:forEach>
							</c:if>
							<!-- Modal -->
						</div>
				</div>
			</div>
		</section>
	</c:if>


	<script>
    ClassicEditor.create(document.querySelector('#editorN')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
</script>

	<footer th:replace="public/fragments :: footer"
		class="ftco-footer ftco-bg-dark ftco-section"> </footer>
</body>
</html>