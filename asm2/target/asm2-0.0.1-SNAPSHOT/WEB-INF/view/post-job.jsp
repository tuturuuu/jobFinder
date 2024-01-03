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
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid px-md-4	">
			<a class="navbar-brand" href="/asm2/">Work CV</a>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="/" class="nav-link">Trang
							chủ</a></li>
					<li class="'nav-item"><a href="/" class="nav-link">Công
							việc</a></li>
					<li class="nav-item"><a href="/" class="nav-link">Ứng cử
							viên</a></li>
					<li></li>

					<c:if test="${empty sessionScope.full_name}">
						<li class="nav-item cta cta-colored"><a href="auth/login"
							class="nav-link">Đăng nhập</a></li>
					</c:if>

					<c:if test="${not empty sessionScope.full_name}">
						<li class="nav-item"><a href="/asm2/user/profile"
							class="nav-link">Hồ sơ</a></li>
							<c:if test="${sessionScope.role eq  1}">
								<li class="nav-item cta mr-md-1"><a href="/recruitment/post"
									class="nav-link">Đăng tuyển</a></li>
								<li class="nav-item"><a href="/user/list-post"
									class="nav-link">Danh sách bài đăng</a></li>
							</c:if>
							<c:if test="${sessionScope.role eq  0}">
								<li class="nav-item"><a href="/save-job/get-list"
									class="nav-link">Công việc đã lưu</a></li>
								<li class="nav-item"><a href="/user/get-list-apply"
									class="nav-link">Công việc đã ứng tuyển</a></li>
								<li class="nav-item"><a href="/user/get-list-company"
									class="nav-link">Công ty đã theo dõi</a></li>
							</c:if>
						<li class="nav-item"><a href="auth/logout" class="nav-link">Đăng
								xuất</a></li>
					</c:if>
				</ul>

			</div>
		</div>
	</nav>
	<!-- END nav -->
<div class="hero-wrap hero-wrap-2" style="background-image: url('user/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" th:if="${session.user.role.id == 2 }">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">
                <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span> Đăng bài<span></span></p>
                <h1 class="mb-3 bread">Đăng bài tuyển dụng</h1>
            </div>
        </div>
    </div>
</div>
<div th:if="${success}" class="toast" data-delay="2500" style="position:fixed; top: 100PX; right: 10PX;z-index: 2000;width: 300px">
    <script>
        swal({
            title: 'Đăng tuyển thành công!',
            /* text: 'Redirecting...', */
            icon: 'success',
            timer: 3000,
            buttons: true,
            type: 'success'
        })
    </script>
</div>

<!--<div th:if="${msg_register_error}" class="toast" data-delay="2500" style="position:fixed; top: 100PX; right: 10PX;z-index: 2000;width: 300px">-->
<!--    <div class="toast-header" style="background-color: red">-->

<!--        <strong class="mr-auto" style="color: white">Thông báo</strong>-->
<!--        <small style="color: white">Vừa xong</small>-->
<!--        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">-->
<!--            <span aria-hidden="true" style="color: white">&times;</span>-->
<!--        </button>-->
<!--    </div>-->
<!--    <div class="toast-body" >-->
<!--        <p th:text="'❌ ' +${msg_register_error}"></p>-->
<!--    </div>-->
<!--    <script>-->
<!--        $(document).ready(function(){-->
<!--            $('.toast').toast('show');-->
<!--        });-->
<!--    </script>-->
<!--</div>-->
<!-- HOME -->
<%-- <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section" th:if="${session.user.role.id == 2 }">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1 class="text-white font-weight-bold">Đăng bài</h1>
                <div class="custom-breadcrumbs">
                    <a href="#">Trang chủ</a> <span class="mx-2 slash">/</span>
                    <span class="text-white"><strong>Đăng bài tuyển dụng</strong></span>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="hero-wrap hero-wrap-2" style="background-image: url('user/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" th:if="${session.user.role.id == 1 }">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">

                <h1 class="mb-3 bread">Không tìm thấy trang yêu cầu</h1>
            </div>
        </div>
    </div>
</div> --%>
<section class="site-section" th:if="${session.user.role.id == 2 }">
    <div class="container">
    <form:form action="/asm2/recruitment/addRecruit" method="post" modelAttribute="recruit">
        <div class="row align-items-center mb-5">
            <div class="col-lg-8 mb-4 mb-lg-0">
                <div class="d-flex align-items-center">
                    <div>
                        <h2>Đăng bài</h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="row">
                    <div class="col-6">
                        <a href="#" class="btn btn-block btn-light btn-md"></a>
                    </div>
                    <div class="col-6">
                        <button type="submit" class="btn btn-block btn-primary btn-md">Đăng</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mb-5">
            <div class="col-lg-12">
                <div class="p-4 p-md-5 border rounded" method="post">
                    <h3 class="text-black mb-5 border-bottom pb-2">Chi tiết bài tuyển dụng</h3>

                    <div class="form-group">
                        <label path="title">Tiêu đề</label>
                        <form:input type="text" class="form-control" path="title" placeholder="Tiêu đề"></form:input>
                    </div>
                    <div class="form-group">
                        <label >Mô tả công việc</label>
                        <form:textarea  path="description"   class="form-control" id="editorN" placeholder="Mô tả"></form:textarea>
                    </div>
                    <div class="form-group">
                        <label">Kinh nghiệm</label>
                        <form:input type="text" class="form-control" id="job-title" path="experience" placeholder="Kinh nghiệm"></form:input>
                    </div>
                    <div class="form-group">
                        <label >Số người cần tuyển</label>
                        <form:input type="number" class="form-control" id="job-title" path="quantity" placeholder="Số người cần tuyển"></form:input>
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ</label>
                        <form:input type="text" class="form-control" id="job-location"  path="address" placeholder="Địa chỉ công ty"></form:input>
                    </div>
                    <div class="form-group">
                        <label >Hạn ứng tuyển</label>
                        <form:input type="date" class="form-control" id="job-location"  path="deadline" placeholder="Địa chỉ công ty"></form:input>
                    </div>
                    <div class="form-group">
                        <label for="job-location">Lương</label>
                        <form:input type="text" class="form-control" id="job-location"  path="salary" placeholder="Mức lương"></form:input>
                    </div>

                    <div class="form-group">
                        <label for="job-region">Loại công việc</label>
                        <form:select class="form-control" path="type" aria-label="Default select example">
                            <option selected>Chọn loại công việc</option>
                            <option value="Part time">Part time</option>
                            <option value="Full time">Full time</option>
                            <option value="Freelancer">Freelancer</option>
                        </form:select>

                    </div>
                    <div class="form-group">
                        <label for="job-region">Danh mục công việc</label>
                         <form:select class="form-control" path="categoryId" aria-label="Default select example" >
                            <option selected>Chọn danh mục công việc</option>
                           	<form:options items="${category }"/>
                        </form:select>  
                    </div>
                </div>
            </div>

        </div>
        <div class="row align-items-center mb-5">

            <div class="col-lg-4 ml-auto">
                <div class="row">
                    <div class="col-6">
                        <a href="#" class="btn btn-block btn-light btn-md"></a>
                    </div>
                    <div class="col-6">
                        <button type="submit" class="btn btn-block btn-primary btn-md">Đăng tuyển</button>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
    </div>
</section>
<script>
    ClassicEditor.create(document.querySelector('#editorN')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
</script>
<footer th:replace="public/fragments :: footer" class="ftco-footer ftco-bg-dark ftco-section">

</footer>
</body>
</html>