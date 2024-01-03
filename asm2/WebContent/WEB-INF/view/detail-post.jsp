<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head th:replace="public/fragments :: html_head">
<title>Skillhunt - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
		style="background-image: url('/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-start">
				<div class="col-md-12 text-center mb-5">
					<p class="breadcrumbs mb-0">
						<span class="mr-3"><a href="index.html">Trang chủ <i
								class="ion-ios-arrow-forward"></i></a></span>Chi tiết <span></span>
					</p>
					<h1 class="mb-3 bread">Chi tiết công việc</h1>
				</div>
			</div>
		</div>
	</div>

	<section style="margin-top: 10px" class="site-section">
		<div class="container">
			<div class="row align-items-center mb-5">
				<div class="col-lg-8 mb-4 mb-lg-0">
					<div class="d-flex align-items-center">
						<div class="border p-2 d-inline-block mr-3 rounded">
							<img width="100" height="100"
								src="data:image/png;base64,${company.logo}" alt="Image">
						</div>
						<div>
							<h2>${recruitment.title }</h2>
							<div>
								<span class="icon-briefcase mr-2"></span><a
									class="ml-0 mr-2 mb-2">${company.companyName }</a> <span
									class="icon-room mr-2"></span><span class="m-2">${company.address }</span>
								<span class="icon-clock-o mr-2"></span><span class="m-2">${recruitment.type }</span>
							</div>
							<input type="hidden">
						</div>
					</div>
				</div>
				<!--  <div class="col-lg-4">
                <div class="row">
                    <div class="col-6">
                        <a class="btn btn-block btn-light btn-md"><span class="icon-heart-o mr-2 text-danger"></span>Lưu</a>
                    </div>
                    <div class="col-6">
                        <a data-toggle="modal" class="btn btn-block btn-primary btn-md">Ứng tuyển</a>
                    </div>
                </div>
            </div> -->
				<div class="col-lg-4">
					<div class="row">
						<c:if test="${sessionScope.role eq  0}">
							<div class="col-6">
								<a class="btn btn-block btn-light btn-md"><span
									class="icon-heart-o mr-2 text-danger"></span>Lưu</a>
							</div>
							<div class="col-6">
								<a data-toggle="modal" class="btn btn-block btn-primary btn-md">Ứng
									tuyển</a>
							</div>
						</c:if>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8">
					<div class="mb-5">

						<h3 class="h5 d-flex align-items-center mb-4 text-primary">
							<span class="icon-align-left mr-3"></span>Mô tả công việc
						</h3>
						<p>${recruitment.description}</p>
					</div>

				</div>
				<div class="col-lg-4">
					<div class="bg-light p-3 border rounded mb-4">
						<h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Tóm tắt công
							việc</h3>
						<ul class="list-unstyled pl-3 mb-0">
							<li class="mb-2"><strong class="text-black">Ngày
									tạo: </strong> <span>${recruitment.createdAt }</span></li>
							<li class="mb-2"><strong class="text-black">Kiểu
									công việc: </strong> <span>${recruitment.type }</span></li>
							<li class="mb-2"><strong class="text-black">Loại
									công việc: </strong> <span">${recruitment.categoryId }</span></li>
							<li class="mb-2"><strong class="text-black">Kinh
									nghiệm: </strong> <span>${recruitment.experience } </span></li>
							<li class="mb-2"><strong class="text-black">Đại
									chỉ: </strong> <span> ${recruitment.address }</span></li>
							<li class="mb-2"><strong class="text-black">Lương:
							</strong> <span> ${recruitment.salary } </span></li>
							<li class="mb-2"><strong class="text-black">Số
									lượng: </strong><span>${recruitment.quantity }</span></li>
							<li class="mb-2"><strong class="text-black">Hạn nộp
									cv: </strong><span>${recruitment.deadline }</span></li>
						</ul>
					</div>

					<div class="bg-light p-3 border rounded">
						<h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Share</h3>
						<div class="px-3">
							<a href="#" class="pt-3 pb-3 pr-3 pl-0"><span
								class="icon-facebook"></span></a> <a href="#"
								class="pt-3 pb-3 pr-3 pl-0"><span class="icon-twitter"></span></a>
							<a href="#" class="pt-3 pb-3 pr-3 pl-0"><span
								class="icon-linkedin"></span></a> <a href="#"
								class="pt-3 pb-3 pr-3 pl-0"><span class="icon-pinterest"></span></a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- Modal -->
	<div class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">
						Ứng tuyển: <span></span>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="post" action="/user/apply-job">
					<div class="modal-body">
						<div class="row">
							<div class="col-12">
								<label for="fileUpload" class="col-form-label">Chọn cv:</label>
								<%-- <input type="file" class="form-control"
                                   th:id="${'fileUpload'}+${recruitment.id}" name="file"   required> --%>
								<label for="fileUpload" class="col-form-label">Giới
									thiệu:</label>
								<textarea rows="10" cols="3" class="form-control">

                                                    </textarea>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Đóng</button>
							<button type="button"
								<%-- th:onclick="'apply(' +${recruitment.id}+ ')'" --%> class="btn btn-primary">Nộp</button>
						</div>
					</div>
				</form>


			</div>
		</div>
	</div>
	<section class="site-section" id="next">
		<div class="container">

			<div class="row mb-5 justify-content-center">
				<div class="col-md-7 text-center">
					<c:if test="${sessionScope.role eq  1}">
						<h2 class="section-title mb-2" th:if="${applyPosts}">Danh
							sách ứng viên ứng tuyển</h2>
					</c:if>
					<c:if test="${sessionScope.role eq  0}">
						<h2 class="section-title mb-2" th:unless="${applyPosts}">Những
							công việc liên quan</h2>
					</c:if>
				</div>
			</div>

			<div th:if="${applyPosts != null}" class="row">
				<div class="col-lg-12 pr-lg-4">
					<c:if test="${sessionScope.role eq  1}">
						<div class="row">

							<c:forEach var="applyPost" items="${applications }"
								varStatus="loopCounter">
								<div class="col-md-12"
									style="box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px; margin: 20px auto;">
									<div class="team d-md-flex p-4 bg-white">
										<IMG class="img"
											src="data:image/png;base64,${users.get(loopCounter.count-1).image}"></IMG>
										<div class="text pl-md-4">
											<H5 class="location mb-0">${users.get(loopCounter.count-1).fullName}</H5>
											<p style="display: block; color: black">${users.get(loopCounter.count-1).address}</p>
											<span class="position" style="display: block; color: black">${users.get(loopCounter.count-1).email}</span>
											<p class="mb-4" style="width: 700px">${users.get(loopCounter.count-1).description}</p>
											<div class="row">
												<c:if test="${users.get(loopCounter.count-1).cv != null}">
													<p>
														<a
															href="/asm2/user/getCv/${users.get(loopCounter.count-1).id}"
															class="btn btn-primary">Xem cv</a>
													</p>
												</c:if>
												<c:if test="${applyPost.status == 1 && sessionScope.company_id == company.companyId}">
													<p style="margin-left: 10px">
														<a class="btn btn-outline-primary"
															href="/asm2/user/approveCv/${applyPost.applicationId}/${recruitment.recruitId}">Duyệt</a>
													</p>
												</c:if>
												<c:if test="${applyPost.status == 0 }">
													<p style="margin-left: 10px; margin-top: 15px">
														<span style="color: #1e7e34; font-weight: bold">Đã
															duyệt</span>
													</p>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>

							<c:if test="${applications.size() == 0}">
								<p>Chưa có ứng cử viên nào ứng tuyển</p>
							</c:if>

						</div>
					</c:if>
				</div>

				<c:forEach var="recruitment" items="${relatedJobs}"
							varStatus="loopCounter">
							<div class="col-md-12 ">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge"> ${recruitment.type}</span>
											<h2 class="mr-3 text-black">
												<a href="/asm2/recruitment/job-details/${recruitment.recruitId}">${recruitment.title}</a>
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
												<span style="color: red;"><bold>Already applied</bold></span>
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
													name="recruit_id" /> 
												<input type="hidden"
													value="home" name="type_search" />
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
				
				<script>
				
            function apply(id){
                var name = "#idRe" +id;
                var nameModal = "#exampleModal" +id;
                var nameFile = "#fileUpload"+id;
                var nameText = "#text" +id;
                var idRe = $(name).val();
                var textvalue = $(nameText).val();
                var fileUpload = $(nameFile).get(0);
                var files = fileUpload.files;
                var formData = new FormData();
                formData.append('file', files[0]);
                formData.append('idRe', idRe);
                formData.append('text', textvalue);
                if(files[0] == null){
                    swal({
                        title: 'Bạn cần phải chọn cv!',
                        /* text: 'Redirecting...', */
                        icon: 'error',
                        timer: 3000,
                        buttons: true,
                        type: 'error'
                    })
                } else {
                    $.ajax(
                        {
                            type: 'POST',
                            url: '/user/apply-job/',
                            contentType: false,
                            processData: false,
                            data: formData,
                            success: function (data) {
                                if(data == "false"){
                                    swal({
                                        title: 'Bạn cần phải đăng nhập!',
                                        /* text: 'Redirecting...', */
                                        icon: 'error',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'error'
                                    })
                                }else if(data == "true"){
                                    swal({
                                        title: 'Ứng tuyển thành công!',
                                        /* text: 'Redirecting...', */
                                        icon: 'success',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'success'
                                    })
                                    $(nameModal).modal('hide');
                                    $('#fileUpload').val("");
                                }else{
                                    swal({
                                        title: 'Bạn đã ứng tuyển công việc này!',
                                        /* text: 'Redirecting...', */
                                        icon: 'error',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'error'
                                    })
                                    $(nameModal).modal('hide');
                                    $('#fileUpload').val("");
                                }
                            },
                            error: function (err) {
                                alert(err);
                            }
                        }
                    )
                }

            }


            function save(id){
                var name = "#idRe" +id;
                var idRe = $(name).val();
                var formData = new FormData();
                formData.append('idRe', idRe);
                $.ajax(
                    {
                        type: 'POST',
                        url: '/save-job/save/',
                        contentType: false,
                        processData: false,
                        data: formData,
                        success: function (data) {
                            if(data == "false"){
                                swal({
                                    title: 'Bạn cần phải đăng nhập!',
                                    /* text: 'Redirecting...', */
                                    icon: 'error',
                                    timer: 3000,
                                    buttons: true,
                                    type: 'error'
                                })
                            }else if(data == "true"){
                                swal({
                                    title: 'Lưu thành công!',
                                    /* text: 'Redirecting...', */
                                    icon: 'success',
                                    timer: 3000,
                                    buttons: true,
                                    type: 'success'
                                })
                            }else{
                                swal({
                                    title: 'Bạn đã lưu bài này rồi!',
                                    /* text: 'Redirecting...', */
                                    icon: 'error',
                                    timer: 3000,
                                    buttons: true,
                                    type: 'error'
                                })
                            }
                        },
                        error: function (err) {
                            alert(err);
                        }
                    }
                )
            }
        </script>
			</div>
	</section>




	<footer th:replace="public/fragments :: footer"
		class="ftco-footer ftco-bg-dark ftco-section"> </footer>
</body>
</html>