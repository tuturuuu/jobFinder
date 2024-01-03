<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head">
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
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid px-md-4	">
			<a class="navbar-brand" href="/asm2/">Work CV</a>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="/" class="nav-link">Trang
							chủ</a></li>
					<li class="'nav-item"><a href="/asm2/recruitment/list-all-jobs" class="nav-link">Công
							việc</a></li>

					<c:if test="${empty sessionScope.full_name}">
						<li class="nav-item cta cta-colored"><a href="/asm2/auth/login"
							class="nav-link">Đăng nhập</a></li>
					</c:if>

					<c:if test="${not empty sessionScope.full_name}">
						<li class="nav-item"><a href="/asm2/user/profile"
							class="nav-link">Hồ sơ</a></li>
						<c:if test="${sessionScope.role eq  1}">
							<li class="nav-item cta mr-md-1"><a href="recruitment/post"
								class="nav-link">Đăng tuyển</a></li>
							<li class="nav-item"><a href="recruitment/list-post"
								class="nav-link">Danh sách bài đăng</a></li>
						</c:if>
						<c:if test="${sessionScope.role eq  0}">
							<li class="nav-item"><a href="/asm2/user/list-apply-job"
								class="nav-link">Công việc đã ứng tuyển</a></li>
						</c:if>
						<li class="nav-item"><a href="auth/logout" class="nav-link">Đăng
								xuất</a></li>
					</c:if>
				</ul>

			</div>
		</div>
	</nav>
	<!-- END nav -->
<c:if test="${!success}">
<div class="toast" data-delay="2000" style="position:fixed;top: 100PX; right: 10PX;z-index: 2000;width: 300px">
  <script>
    swal({
      title: 'Ứng cử viên này chưa cập nhật cv!',
      /* text: 'Redirecting...', */
      icon: 'error',
      timer: 3000,
      buttons: true,
      type: 'error'
    })
  </script>
</div>
</c:if>
<div class="hero-wrap img" style="background-image: url(user/assets/images/bg_1.jpg);">
  <div class="overlay"></div>
  <div class="container">
    <div class="row d-md-flex no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-10 d-flex align-items-center ">
        <div class="text text-center pt-5 mt-md-5">
          <p class="mb-4">Tìm việc làm, Cơ hội việc làm và Nghề nghiệp</p>
          <h1 class="mb-5">Cách dễ dàng nhất để có được công việc mới của bạn</h1>
          <div class="ftco-counter ftco-no-pt ftco-no-pb">
            <div class="row">
              <div class="col-md-4 d-flex justify-content-center counter-wrap ">
                <div class="block-18">
                  <div class="text d-flex">
                    <div class="icon mr-2">
                      <span class="flaticon-visitor"></span>
                    </div>
                    <div class="desc text-left">
                      <strong class="number" data-number="46" th:text="${numberCandidate}"></strong>
                      <span>Ứng cử viên</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4 d-flex justify-content-center counter-wrap ">
                <div class="block-18 text-center">
                  <div class="text d-flex">
                    <div class="icon mr-2">
                      <span class="flaticon-visitor"></span>
                    </div>
                    <div class="desc text-left">
                      <strong class="number" data-number="450" th:text="${numberCompany}"></strong>
                      <span>Công ty</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4 d-flex justify-content-center counter-wrap">
                <div class="block-18 text-center">
                  <div class="text d-flex">
                    <div class="icon mr-2">
                      <span class="flaticon-resume"></span>
                    </div>
                    <div class="desc text-left">
                      <strong class="number" data-number="80000" th:text="${numberRecruitment}"></strong>
                      <span>Tuyển dụng</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="ftco-search my-md-5">
            <div class="row">
              <div class="col-md-12 nav-link-wrap">
                <div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                  <a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Tìm công việc</a>

                  <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Tìm ứng cử viên</a>
                  <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Tìm theo địa điểm</a>
                </div>
              </div>
              <div class="col-md-12 tab-wrap">
                <div class="tab-content p-4" id="v-pills-tabContent">

                  <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                    <form action="/asm2/recruitment/search" method="get" class="search-job">
                      <div class="row no-gutters">

                        <div class="col-md-10 mr-md-2">
                          <div class="form-group">
                            <div class="form-field">
                              <div class="icon"><span class="icon-map-marker"></span></div>
                              <input type="text" name="keySearch" class="form-control" placeholder="Tìm kiếm công việc">
                            </div>
                          </div>
                        </div>
                        <div class="col-md">
                          <div class="form-group">
                            <div class="form-field">
                              <button type="submit" class="form-control btn btn-primary">Tìm kiếm</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>

                  <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                    <form action="/asm2/user/search" method="get" class="search-job">
                      <div class="row no-gutters">

                        <div class="col-md-10 mr-md-2">
                          <div class="form-group">
                            <div class="form-field">
                              <div class="icon"><span class="icon-map-marker"></span></div>
                              <input type="text" name="keySearch" class="form-control" placeholder="Tìm kiếm ứng cử viên">
                            </div>
                          </div>
                        </div>
                        <div class="col-md">
                          <div class="form-group">
                            <div class="form-field">
                              <button type="submit" class="form-control btn btn-primary">Tìm kiếm</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                  <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                    <form action="/asm2/recruitment/searchaddress" method="get" class="search-job">
                      <div class="row no-gutters">

                        <div class="col-md-10 mr-md-2">
                          <div class="form-group">
                            <div class="form-field">
                              <div class="icon"><span class="icon-map-marker"></span></div>
                              <input type="text" name="keySearch" class="form-control" placeholder="Tìm kiếm theo địa điểm">
                            </div>
                          </div>
                        </div>
                        <div class="col-md">
                          <div class="form-group">
                            <div class="form-field">
                              <button type="submit" class="form-control btn btn-primary">Tìm kiếm</button>
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
    </div>
  </div>
</div>

<section class="ftco-section bg-light">
  <div class="container">
    <h4 style="margin-top: -20px">Kết quả tìm kiếm cho : <span th:text="${keySearch}"></span></h4>
    <div class="row">
      <div class="col-lg-12 pr-lg-5">
        <div class="row">
        <c:forEach var="applyPost" items="${users}">
            <div class="col-md-12" style="box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px;margin: 20px auto;">
              <div class="team d-md-flex p-4 bg-white">
                <IMG style="margin-top: 10px" class="img" src="data:image/png;base64,${applyPost.image}"></IMG>
                <div class="text pl-md-4">
                  <H5 class="location mb-0">${applyPost.fullName}</H5>
                  <p style="display: block;color: black" >${applyPost.address}</p>
                  <span class="position" style="display: block;color: black" >${applyPost.email}</span>
                  <p class="mb-4" style="width: 700px">${applyPost.description}</p>
                  <c:if test="${applyPost.cv != null}">
                  <div style="margin-left: 1px" class="row">
                    <p><a href="/asm2/user/getCv/${applyPost.id}"  class="btn btn-primary">Xem cv</a></p>
                  </div>
                  </c:if>
                </div>
              </div>
            </div>
          </c:forEach>
          <c:if test="${users.size() == 0}">
          <div  style="text-align: center">
            <p style="color: red">Không có kết quả nào</p>
          </div>
          </c:if>
        </div>
      </div>

    </div>
  </div>
</section>
<script>
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
                console.log(data);
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
  function apply1(id){
    var name = "#idRe" +id;
    var nameModal = "#exampleModal" +id;
    var nameFile = "#fileUpload"+id;
    var nameText = "#text" +id;
    var idRe = $(name).val();
    var textvalue = $(nameText).val();
    var formData = new FormData();
    formData.append('idRe', idRe);
    formData.append('text', textvalue);
    $.ajax(
            {
              type: 'POST',
              url: '/user/apply-job1/',
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
  function choosed(id){
    var name = '#choose' + id;
    var name1 = 'loai1' + id;
    var name2 = 'loai2' + id;
    var button1 = 'button1' + id;
    var button2 = 'button2' + id;
    var giaitri = $(name).val();
    if(giaitri == 1){
      document.getElementById(name1).style.display = 'block'
      document.getElementById(name2).style.display = 'none'
      document.getElementById(button1).style.display = 'block'
      document.getElementById(button2).style.display = 'none'
    }else{
      document.getElementById(name2).style.display = 'block'
      document.getElementById(name1).style.display = 'none'
      document.getElementById(button2).style.display = 'block'
      document.getElementById(button1).style.display = 'none'
    }
  }

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
</script>



<footer th:replace="public/fragments :: footer" class="ftco-footer ftco-bg-dark ftco-section">

</footer>


<!-- loader -->
<!--<div th:replace="public/fragments :: loading" id="ftco-loader" class="show fullscreen"></div>-->

</body>
</html>