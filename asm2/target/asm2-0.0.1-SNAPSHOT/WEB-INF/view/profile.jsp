<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head">
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
					<li class="nav-item active"><a href="/" class="nav-link">Trang
							chủ</a></li>
					<li class="'nav-item"><a href="/" class="nav-link">Công
							việc</a></li>
					<li class="nav-item"><a href="/" class="nav-link">Ứng cử
							viên</a></li>
					<!--        <li class="nav-item"><a href="blog.html" class="nav-link">Công ty</a></li>-->
					<!-- 
            <li th:if="${session.user}" class="nav-item"><a th:href="@{'/user/profile/'+${session.user.id}}" th:text="${session.user.fullName}" class="nav-link" ></a> -->

					<ul class="dropdown">
						<li><a href="/">Hồ Sơ</a></li>
						<!--            <li><a href="service-single.html">Đổi mật khẩu</a></li>-->
						<li><a href="/save-job/get-list">Công việc đã lưu</a></li>
						<li><a href="/user/list-post">Danh sách bài đăng</a></li>
						<li><a href="/user/get-list-apply">Công việc đã ứng tuyển</a></li>
						<li><a href="/user/get-list-company">Công ty đã theo dõi</a></li>
						<!--            <li th:if="${session.user.role.id == 2}"><a href="/auth/logout" >Ứng cử viên tiềm năng</a></li>-->
						<li><a href="/auth/logout">Đăng xuất</a></li>
					</ul>
					</li>

					<li></li>

					<li class="nav-item cta mr-md-1"><a href="/recruitment/post"
						class="nav-link">Đăng tuyển</a></li>
					<li class="nav-item cta cta-colored"><a href="/auth/login"
						class="nav-link">Đăng nhập</a></li>

				</ul>
			</div>
		</div>
	</nav>

	<div class="hero-wrap hero-wrap-2"
		style="background-image: url('user/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-start">
				<div class="col-md-12 text-center mb-5">
					<h1 class="mb-3 bread">Hồ sơ</h1>
					<div class="form-group">
						<form id="imageAvatarForm" action="uploadAvatar" method="POST"
							enctype="multipart/form-data">
							<label class="btn btn-primary btn-md btn-file"> Chọn ảnh<input
								type="file" name="file" accept="image/jpeg, image/png"
								onchange="validateFile('imageAvatarForm', this.files[0]);"
								required hidden>
							</label>
							<p id="avatarErrorMessage" style="display: none; color: red;">Invalid
								file type. Only JPG and PNG images are allowed.</p>
						</form>

					</div>
					<div style="margin-left: 0px" id="divImage">
						<img id="avatar" height="100" width="100"
							style="border-radius: 50px" src="data:image/png;base64,${avatar}"
							alt="Image">

					</div>
				</div>
			</div>
		</div>
	</div>

	<%-- 	<!-- HOME -->
	<div th:if="${userInformation.status == 0}" class="container-fluid"
		style="text-align: center">
		<p
			style="font-size: 20px; font-weight: bold; color: #aaa; margin-top: 10px">Xác
			thực email đăng nhập</p>
		<div
			style="width: 600px; height: 400px; border-radius: 5px; box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px; margin: 20px auto; padding: 15px">
			<p style="line-height: 35px; font-size: 16px">
				Xin chào, <span th:text="${userInformation.fullName}"></span> và làm
				theo hướng dẫn trong email. Trường hợp không nhận được email, bạn
				vui lòng bấm nút Nhận email xác thực dưới đây.
			</p>
			<div class="row form-group">
				<form action="/user/confirm-account" method="post" class="col-md-12">
					<input type="hidden" th:value="${userInformation.email}"
						name="email" class="btn px-4 btn-primary text-white"> <input
						type="submit" value="Nhận email xác thực"
						class="btn px-4 btn-primary text-white">
				</form>
			</div>
			<p>
				Mọi thắc mắc vui lòng liên hệ bộ phận CSKH của WorkCV:<br>
			</p>
			- Điện thoại:<span style="color: #5f80ec">(024) 6680 5588</span><br>
			- Email: <a href="#" style="color: #5f80ec"> hotro@workcv.vn</a>
		</div>
		<div th:if="${comfirm_await}"
			style="width: 600px; height: 400px; border-radius: 5px; box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px; margin: 20px auto; padding: 15px">
			<p style="line-height: 35px; font-size: 16px">
				Xin chào, <span th:text="${userInformation.fullName}"></span> .Bạn
				đã gửi yêu cầu xác thực thành công, vui lòng kiểm tra mail để xác
				thực.Cảm ơn bạn!!!
			</p>
			<p>
				Mọi thắc mắc vui lòng liên hệ bộ phận CSKH của WorkCV:<br>
			</p>
			- Điện thoại:<span style="color: #5f80ec">(024) 6680 5588</span><br>
			- Email: <a href="#" style="color: #5f80ec"> hotro@workcv.vn</a>
		</div> 
	</div>--%>
	<c:if test="${sessionScope.role eq  0}">
		<section class="site-section" style="margin-top: 10px">
			<div class="container">
				<div style="margin-top: 25px"></div>
				<form id="cvForm" action="uploadCv" method="POST"
					enctype="multipart/form-data">
					<div class="row align-items-center mb-5">
						<div class="col-lg-8 ">
							<div class="d-flex align-items-center">
								<div class="form-group" style="margin-top: 15px"></div>
							</div>

							<label class="btn btn-primary btn-md btn-file"> Chọn cv
								(pdf)<input type="file" name="file" accept="application/pdf"
								onchange="validateCv('cvForm', this.files[0]);" required hidden>
							</label>
							<p id="cvErrorMessage" style="display: none; color: red;">Invalid
								file type. Only PDF files are allowed.</p>

							<a style="color: red; margin-left: 20px" th:if="${Cv !=null}"
								data-toggle="modal" data-target="#exampleModal">Xóa cv</a> <a
								style="color: red; margin-left: 20px" th:if="${Cv ==null}"
								id="xoa" data-toggle="modal" data-target="#exampleModal"></a>
						</div>
						<div class="col-lg-4">
							<div class="row">
								<div class="col-6">

									<button type="submit" id="myBtn"
										class="btn btn-block btn-light btn-md">
										<span class="icon-open_in_new mr-2"></span>Cập nhật cv
									</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<form:form action="update-profile" method="post"
					modelAttribute="the_user">
					<div class="row align-items-center mb-5">
						<div class="col-lg-8 mb-4 mb-lg-0">
							<div class="d-flex align-items-center">
								<div>
									<h2>Cập nhật thông tin</h2>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="row">
								<div class="col-6">
									<button type="submit" class="btn btn-block btn-primary btn-md">Lưu
										thông tin</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-5">
						<div class="col-lg-12">
							<div class="p-4 p-md-5 border
	rounded" method="post">
								<h3 class="text-black mb-5 border-bottom pb-2">Thông tin
									chi tiết</h3>
								<div class="form-group">
									<form:label path="email">Email</form:label>
									<form:input path="email" class="form-control"
										placeholder="you@yourdomain.com"></form:input>
								</div>
								<div class="form-group">
									<form:label path="fullName">Full name</form:label>
									<form:input type="text" class="form-control" path="fullName"
										placeholder="Full name"></form:input>
								</div>
								<div class="form-group">
									<form:label path="address">Địa chỉ</form:label>
									<form:input type="text" path="address" class="form-control"
										placeholder="e.g. New York"></form:input>
								</div>
								<div class="form-group">
									<form:label path="phoneNumber">Số điện thoại</form:label>
									<form:input type="text" path="phoneNumber" class="form-control"
										placeholder="+ 84"></form:input>
								</div>
								<div class="form-group">
									<form:label path="description">Mô tả bản thân</form:label>
									<form:textarea path="description" class="form-control"
										id="editor" placeholder="Mô tả"></form:textarea>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</section>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Bạn có chắc
							chắn muốn xóa ?</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						Cv : <span id="cvXoa"></span> <span th:if="${Cv != null}"
							th:text="${Cv.fileName}"></span>
						<form action="/user/deleteCv" method="post">
							<div class="modal-footer mt-1">
								<input type="hidden" name="idCv">
								<button type="submit" class="btn btn-secondary"
									data-dismiss="modal">Đóng</button>
								<button type="submit" class="btn btn-danger">Xóa</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</c:if>

	<c:if test="${sessionScope.role eq  1}">
		<section class="site-section" style="margin-top: 10px">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 mb-5">
						<h2 class="mb-4">Thông tin cá nhân</h2>
						<form:form action="/asm2/user/update-profile" method="post"
							modelAttribute="the_user">
							<div class="row mb-5">
								<div class="col-lg-12">
									<div class="p-4 p-md-5 border rounded" method="post">
										<div class="form-group">
											<form:label path="email">Email</form:label>
											<form:input type="email" class="form-control" id="email"
												name="email" path="email" />
										</div>
										<div class="form-group">
											<form:label path="fullName">Họ và tên</form:label>
											<form:input type="text" class="form-control" path="fullName"
												placeholder="Full name" />
										</div>
										<div class="form-group">
											<form:label path="address">Địa chỉ</form:label>
											<form:input type="text" path="address"
												placeholder="e.g. New York" />
										</div>
										<div class="form-group">
											<form:label path="phoneNumber">Số điện thoại</form:label>
											<form:input type="text" name="phoneNumber" path="phoneNumber"
												placeholder="+ 84" />
										</div>
										<div class="form-group">
											<form:label path="description">Mô tả bản thân</form:label>
											<form:textarea path="description" placeholder="Mô tả"></form:textarea>
										</div>
										<div class="row form-group">
											<div class="col-md-12">
												<input type="submit" value="Lưu thông tin"
													class="btn px-4 btn-primary text-white">
											</div>
										</div>
									</div>

								</div>

							</div>
						</form:form>
					</div>
					<div class="col-lg-6">
						<h2 class="mb-4">Thông tin công ty</h2>
						<div class="form-group">

							<form id="imageCompanyForm" action="uploadLogo" method="POST"
								enctype="multipart/form-data">
								<label class="btn btn-primary btn-md btn-file"> Chọn
									logo<input type="file" name="file"
									accept="image/jpeg, image/png"
									onchange="validateFile('imageCompanyForm', this.files[0]);"
									required hidden>
								</label>
								<p id="companyErrorMessage" style="display: none; color: red;">Invalid
									file type. Only JPG and PNG images are allowed.</p>
							</form>


							<div id="divLogo">
								<img id="avatar" height="100" width="100"
									style="border-radius: 50px" src="data:image/png;base64,${logo}"
									alt="Image">
							</div>
						</div>
						<form:form action="/asm2/user/update-company" method="post"
							enctype="multipart/form-data" modelAttribute="the_company">
							<div class="row mb-5">
								<div class="col-lg-12">
									<div class="p-4 p-md-5 border rounded" method="post">
										<div class="form-group">
											<form:label path="email">Email</form:label>
											<form:input type="text" class="form-control" path="email"
												placeholder="you@yourdomain.com"></form:input>
										</div>
										<div class="form-group">
											<form:label path="companyName">Tên công ty</form:label>
											<form:input type="text" class="form-control"
												path="companyName" placeholder="Company name"></form:input>
										</div>
										<div class="form-group">
											<form:label path="address">Địa chỉ</form:label>
											<form:input type="text" class="form-control" path="address"
												placeholder="e.g New York"></form:input>
										</div>
										<div class="form-group">
											<form:label for="job-location" path="phoneNumber">Số điện thoại công ty</form:label>
											<form:input type="text" class="form-control"
												path="phoneNumber" placeholder="+84"></form:input>
										</div>
										<div class="form-group">
											<form:label for="job-location" path="description">Mô tả công ty</form:label>
											<form:textarea path="description" class="form-control"
												placeholder="Mô tả"></form:textarea>
										</div>
										<div class="row form-group">
											<div class="col-md-12">
												<input type="submit" value="Lưu thông tin"
													class="btn px-4 btn-primary text-white">
											</div>
										</div>
									</div>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</section>
	</c:if>
	<script>
    ClassicEditor.create(document.querySelector('#editor')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
    ClassicEditor.create(document.querySelector('#editorN')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
</script>

	<script>
    function validateFile(formId, file) {
        var errorMessageId = formId === 'imageAvatarForm' ? 'avatarErrorMessage' : 'companyErrorMessage';
        if (!file.type.match(/image\/jpeg|image\/png/i)) {
            document.getElementById(errorMessageId).style.display = 'block';
        } else {
            document.getElementById(errorMessageId).style.display = 'none';
            document.getElementById(formId).submit();
        }
    }
</script>

	<script>
    function validateCv(formId, file) {
        var errorMessageId = 'cvErrorMessage';
        if (!file.type.match(/application\/pdf/i)) {
            document.getElementById(errorMessageId).style.display = 'block';
        } else {
            document.getElementById(errorMessageId).style.display = 'none';
            document.getElementById(formId).submit();
        }
    }
</script>

	<footer th:replace="public/fragments :: footer"
		class="ftco-footer ftco-bg-dark ftco-section"> </footer>
</body>
</html>