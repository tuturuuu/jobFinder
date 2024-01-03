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
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-start">
				<div class="col-md-12 text-center mb-5">
					<p class="breadcrumbs mb-0">
						<span class="mr-3"><a href="index.html">Trang chủ <i
								class="ion-ios-arrow-forward"></i></a></span> đăng nhập<span></span>
					</p>
					<h1 class="mb-3 bread">Đăng nhập / Đăng kí</h1>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${form_submitted }">
		<c:if test="${msg_register_success}">
			<div class="toast" data-delay="2500"
				style="position: fixed; top: 100PX; right: 10PX; z-index: 2000; width: 300px">
				<script>
					swal({
						title : 'Đăng ký thành công!',
						/* text: 'Redirecting...', */
						icon : 'success',
						timer : 3000,
						buttons : true,
						type : 'success'
					})
				</script>
			</div>
		</c:if>
		<c:if test="${!msg_register_success}">
			<div class="toast" data-delay="2500"
				style="position: fixed; top: 100PX; right: 10PX; z-index: 2000; width: 300px">
				<script>
					swal({
						title : 'Đăng ký thất bại!',
						/* text: 'Redirecting...', */
						icon : 'error',
						timer : 3000,
						buttons : true,
						type : 'error'
					})
				</script>
			</div>
		</c:if>
	</c:if>

	<c:if test="${login_failed}">
		<div class="toast" data-delay="2500"
			style="position: fixed; top: 100PX; right: 10PX; z-index: 2000; width: 300px">
			<script>
				swal({
					title : 'Đăng nhập thất bại!',
					/* text: 'Redirecting...', */
					icon : 'error',
					timer : 3000,
					buttons : true,
					type : 'error'
				})
			</script>
		</div>
	</c:if>
	<!-- HOME -->
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('images/hero_1.jpg');" id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1 class="text-white font-weight-bold">Đăng kí / đăng nhập</h1>
					<div class="custom-breadcrumbs">
						<a href="#">Trang chủ</a> <span class="mx-2 slash">/</span> <span
							class="text-white"><strong>Đăng nhập</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mb-5">
					<h2 class="mb-4">Đăng kí</h2>
					<form action="/asm2/auth/submitFormSignUp" method="post"
						class="p-4 border rounded">
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="text-black" for="fname">Email</label> <input
									type="email" id="email" name="email" class="form-control"
									placeholder="Email" required>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="text-black" for="fname">Họ và tên</label> <input
									type="text" id="email" name="fullName" class="form-control"
									placeholder="Họ và tên" required>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="text-black" for="fname">Mật khẩu</label> <input
									type="password" id="" name="password" class="form-control"
									placeholder="Mật khẩu" required>
							</div>
						</div>
						<div class="row form-group mb-4">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="text-black" for="fname">Nhập lại mật khẩu</label>
								<input type="password" id="fname" name="rePassword"
									class="form-control" placeholder="Nhập lại mật khẩu" required>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="text-black" for="fname">Vai trò</label> <select
									class="form-control" name="role_id"
									aria-label="Default select example" required>
									<option selected>Chọn vai trò</option>
									<option value="0">Ứng cử viên</option>
									<option value="1">Công ty</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<input type="submit" value="Đăng kí"
									class="btn px-4 btn-primary text-white">
							</div>
						</div>
					</form>
				</div>
				<div class="col-lg-6">
					<h2 class="mb-4">Đăng nhập</h2>
					<form action="/asm2/auth/submitFormLogin" method="POST"
						class="p-4 border rounded">
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="text-black" for="fname">Email</label> <input
									type="email" id="fname" p class="form-control"
									placeholder="Email" name="email"/>
							</div>
						</div>
						<div class="row form-group mb-4">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="text-black" for="fname">Mật khẩu</label> <input
									type="password" id="fname" class="form-control"
									placeholder="Mật khẩu" name="password"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<input type="submit" value="Đăng nhập"
									class="btn px-4 btn-primary text-white">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<footer th:replace="public/fragments :: footer"
		class="ftco-footer ftco-bg-dark ftco-section"> </footer>
</body>
</html>