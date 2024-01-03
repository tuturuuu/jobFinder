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

	<section class="ftco-section bg-light">
			<div class="row">
				<div class="col-lg-12 pr-lg-4">
					<div class="row">
						<c:if test="${recruitments.size() eq 0}">
							<div class="row form-group">
								<label for="company-website-tw d-block">Danh sách bài
									tuyển dụng </label> <br>
								<div class="col-md-12">Hiện tại không có bài tuyển dụng
									nào</div>
							</div>
						</c:if>

						<c:if test="${recruitments.size() gt 0}">
							<c:forEach var="recruitment" items="${recruitments}"
								varStatus="loopCounter">
								<div class="col-md-12 ">
									<div
										class="job-post-item p-4 d-block d-lg-flex align-items-center">
										<div class="one-third mb-4 mb-md-0">
											<div class="job-post-item-header align-items-center">
												<span class="subadge"> ${recruitment.type}</span>
												<h2 class="mr-3 text-black">
													<a
														href="/asm2/recruitment/job-details/${recruitment.recruitId}">${recruitment.title}</a>
												</h2>
											</div>
											<div class="job-post-item-body d-block d-md-flex">
												<div class="mr-3">
													<a href="#">${companies.get(loopCounter.count -1).companyName}</a>
												</div>
												<div>
													<span class="icon-my_location"></span> <span>
														${recruitment.address}</span>
												</div>
											</div>
										</div>
										<input type="hidden">
										<div
											<%-- th:if="${session.user}" --%>
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
											<div<%-- th:if="${session.user.role.id == 1}" --%>>
												<a
													<%--  th:onclick="'save(' +${recruitment.id}+ ')'" --%>
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
													<span class="icon-heart"></span>
												</a>
											</div>
											<c:if test="${sessionScope.role eq  0}">

												<c:if test="${status.get(loopCounter.count -1) == -1}">
													<a class="btn btn-primary py-2" href="javascript:void(0);"
														onclick="showModal('${recruitment.recruitId}')">Apply
														Job</a>
												</c:if>
												<c:if test="${status.get(loopCounter.count -1) == 1}">
													<span style="color: red;"><bold>Already
														applied</bold></span>
												</c:if>
												<c:if test="${status.get(loopCounter.count -1) == 0}">
													<span style="color: green;"><bold>Hired</bold></span>
												</c:if>


											</c:if>
										</div>
										<div th:unless="${session.user}"
											class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
											<div>
												<!-- 										save the job
											<a th:onclick=""
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a data-toggle="modal"
											th:data-target="<%-- ${'#exampleModal'}+${recruitment.id} --%>"
											class="btn btn-primary py-2">Apply Job</a>  -->
											</div>
										</div>
									</div>
									<!-- end -->
									<!-- Modal -->
									<div id="modal-${recruitment.recruitId}" tabindex="10"
										role="dialog" aria-labelledby="exampleModalLabel"
										aria-hidden="true" style="display: none;">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">
														Ứng tuyển: <span> ${recruitment.title}</span>
													</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close"
														onclick="closeModal('${recruitment.recruitId}')">
														<span aria-hidden="true">&times;</span>
													</button>

												</div>
												<form method="post" action="/asm2/user/apply-job"
													enctype="multipart/form-data">
													<input type="hidden" value="${recruitment.recruitId }"
														name="recruit_id" /> <input type="hidden" value="home"
														name="type_search" />
													<div class="modal-body">
														<div class="row">
															<div class="col-12">
																<select class="form-control"
																	aria-label="Default select example" name="cv_category">
																	<option selected>Chọn phương thức nộp</option>
																	<option value="1">Dùng cv đã cập nhật</option>
																	<option value="2">Nộp cv mới</option>
																</select>
															</div>
															<div class="col-12">
																<label for="fileUpload" class="col-form-label">Giới
																	thiệu:</label>
																<textarea rows="10" cols="3" class="form-control"
																	name="introduction">
														</textarea>
																<input style="margin-top: 10px;" type="file"
																	name="new_file" />
															</div>

														</div>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-dismiss="modal"
															onclick="closeModal('${recruitment.recruitId}')">Đóng</button>
														<input type="Submit" value="Nộp" class="btn btn-primary">
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<script>
							function showModal(recruitId) {
								document.getElementById('modal-' + recruitId).style.display = 'block';
							}

							function closeModal(recruitId) {
								document.getElementById('modal-' + recruitId).style.display = 'none';
							}
						</script>
						</c:if>
						<!-- Modal -->
					</div>
				</div>
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

	<footer th:replace="public/fragments :: footer"
		class="ftco-footer ftco-bg-dark ftco-section"> </footer>
</body>
</html>