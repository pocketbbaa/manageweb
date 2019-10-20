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

    <title>Home</title>
    <link rel="stylesheet" href="${ctx}/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${ctx}/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="${ctx}/bower_components/animate.css/animate.min.css">
    <link rel="stylesheet" href="${ctx}/bower_components/metisMenu/dist/metisMenu.min.css">
    <link rel="stylesheet" href="${ctx}/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="${ctx}/bower_components/Waves/dist/waves.min.css">
    <link rel="stylesheet" href="${ctx}/bower_components/toastr/toastr.css">


    <link rel="stylesheet" href="${ctx}/bower_components/datatables/media/css/jquery.dataTables.min.css">

    <link rel="stylesheet" href="${ctx}/css/style.css">


    <!--
      <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
      <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    -->
    <!--[if lt IE 9]>
    <script src="${ctx}/bower_components/html5shiv/dist/html5shiv.min,js"></script>
    <script src="${ctx}/bower_components/respondJs/dest/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<!--Preloader-->
<div id="preloader">
    <div class="refresh-preloader">
        <div class="preloader"><i>.</i><i>.</i><i>.</i></div>
    </div>
</div>


<div class="wrapper">

    <jsp:include page="header.jsp"/>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb breadcrumb-arrow">
                    <li><a href="#">课程</a></li>
                    <li class="active">课程1</li>
                </ol>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="content-box o-hidden">
                        <div class="head warning-bg clearfix">
                            <h5 class="content-title pull-left">课程主题1课件</h5>
                            <div class="functions-btns pull-right">
                                <a class="fullscreen-btn" href="#"><i class="zmdi zmdi-fullscreen"></i></a>
                            </div>
                        </div>

                        <div class="content">
                            <h3>课程主题1课件</h3>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                        </div>
                    </div>


                    <div class="content-box o-hidden">
                        <div class="head success-bg clearfix">
                            <h5 class="content-title pull-left">本课程由本舅舅提供</h5>
                            <div class="functions-btns pull-right">
                                <a class="refresh-btn" href="#"></a>
                                <a class="fullscreen-btn" href="#"></a>
                                <a class="close-btn" href="#"></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="content-box o-hidden">
                        <div class="head success-bg clearfix">
                            <h5 class="content-title pull-left">课程主题1教参</h5>
                            <div class="functions-btns pull-right">
                                <a class="fullscreen-btn" href="#"><i class="zmdi zmdi-fullscreen"></i></a>
                            </div>
                        </div>

                        <div class="content">
                            <h3>课程主题1教参</h3>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                            <p><img src="${ctx}/img/logo.png"/></p>
                        </div>
                    </div>


                </div>
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


<script src="${ctx}/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="${ctx}/bower_components/datatables.net-responsive/js/dataTables.responsive.js"></script>
<script src="${ctx}/bower_components/moment/min/moment.min.js"></script>

<script src="${ctx}/bower_components/Chart.js/Chart.js"></script>
<script src="${ctx}/bower_components/flot/jquery.flot.js"></script>
<script src="${ctx}/bower_components/flot/jquery.flot.resize.js"></script>
<script src="${ctx}/bower_components/flot.tooltip/js/jquery.flot.tooltip.js"></script>
<script src="${ctx}/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.js"></script>


<script>
    $('#table2').DataTable({
        "dom": '<"toolbar tool2">rtip',
        info: false,
        paging: false,
        responsive: true,
    });

    $("div.tool2").css("padding", "7px 20px").html('<h5 class="content-title">Exchange rates</h5>');

    //Todo
    $(document).on('mouseover', '.list-group .checkbox', function () {
        $('.list-group input:checkbox').each(function () {
            $(this).on("change", function () {
                if ($(this).is(":checked")) {
                    $(this).closest(".list-group-item").addClass("checked-todo").removeClass("list-item");
                } else {
                    $(this).closest(".list-group-item").removeClass("checked-todo");
                }
            });
        });
    });

    $(document).on('click', '.trash', function (e) {
        var clearedCompItem = $(this).closest(".list-group-item").remove();
        e.preventDefault();
    });

    //Social widget
    $('.socials span').on('click', function () {
        $(this).toggleClass("half-opacity");
    });
</script>

<script src="${ctx}/js/common.js"></script>


</body>
</html>
