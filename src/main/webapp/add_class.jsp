<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no"/>
    <!-- Chrome, Firefox OS and Opera -->
    <meta name="theme-color" content="#49CEFF">
    <!-- Windows Phone -->
    <meta name="msapplication-navbutton-color" content="#49CEFF"/>
    <!-- iOS Safari -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">


    <title>Contacts</title>
    <link rel="stylesheet" href="${ctx}/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${ctx}/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="${ctx}/bower_components/animate.css/animate.min.css">
    <link rel="stylesheet" href="${ctx}/bower_components/metisMenu/dist/metisMenu.min.css">
    <link rel="stylesheet" href="${ctx}/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="${ctx}/bower_components/Waves/dist/waves.min.css">
    <link rel="stylesheet" href="${ctx}/bower_components/toastr/toastr.css">
    <link rel="stylesheet" href="${ctx}/bower_components/dropzone/dist/min/dropzone.min.css">
    <link rel="stylesheet" href="${ctx}/css/style.css">
</head>

<body>


<div class="wrapper">

    <jsp:include page="header.jsp"/>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="content-box gallery-widget gallery-big">
                    <div class="head success-bg clearfix">
                        <h5 class="content-title pull-left">图片预览</h5>
                        <div class="functions-btns pull-right">
                            <a class="refresh-btn" href="#"><i class="zmdi zmdi-refresh"></i></a>
                            <a class="fullscreen-btn" href="#"><i class="zmdi zmdi-fullscreen"></i></a>
                            <a class="close-btn" href="#"><i class="zmdi zmdi-close"></i></a>
                        </div>
                    </div>
                    <div class="content clearfix">
                        <a href="#"><img class="img-responsive" src="img/pictures/1.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/2.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/3.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/4.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/5.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/6.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/7.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/8.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/9.jpg" alt="gallery"></a>

                        <a href="#"><img class="img-responsive" src="img/pictures/10.jpg" alt="gallery"></a>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <form action="#" class="dropzone" id="my-awesome-dropzone">
                    <button type="submit" class="btn btn-success raised">上传图片</button>
                </form>
            </div>

        </div>
    </div>

    <footer class="page-footer">xx &copy; 2019.</footer>
</div>


<script src="${ctx}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${ctx}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${ctx}/bower_components/metisMenu/dist/metisMenu.min.js"></script>
<script src="${ctx}/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.js"></script>
<script src="${ctx}/bower_components/Waves/dist/waves.min.js"></script>
<script src="${ctx}/bower_components/toastr/toastr.js"></script>
<script src="${ctx}/bower_components/dropzone/dist/min/dropzone.min.js"></script>

<script>
    $(document).ready(function () {

        Dropzone.options.myAwesomeDropzone = {

            autoProcessQueue: false,
            uploadMultiple: true,
            parallelUploads: 100,
            maxFiles: 100,

            // Dropzone settings
            init: function () {
                var myDropzone = this;

                this.element.querySelector("button[type=submit]").addEventListener("click", function (e) {
                    e.preventDefault();
                    e.stopPropagation();
                    myDropzone.processQueue();
                });
                this.on("sendingmultiple", function () {
                });
                this.on("successmultiple", function (files, response) {
                });
                this.on("errormultiple", function (files, response) {
                });
            }

        }

    });
</script>
<script src="${ctx}/js/common.js"></script>


</body>
</html>
