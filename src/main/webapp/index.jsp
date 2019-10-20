<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="bower_components/animate.css/animate.min.css">
    <link rel="stylesheet" href="bower_components/metisMenu/dist/metisMenu.min.css">
    <link rel="stylesheet" href="bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="bower_components/Waves/dist/waves.min.css">
    <link rel="stylesheet" href="bower_components/toastr/toastr.css">


    <link rel="stylesheet" href="bower_components/datatables/media/css/jquery.dataTables.min.css">

    <link rel="stylesheet" href="css/style.css">

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
            <div class="col-lg-12">
                <div class="content-box">
                    <div class="head warning-bg clearfix">
                        <h5 class="content-title pull-left"></h5>
                    </div>

                    <div class="content">
                        <div class="row">
                            <div class="col-md-12 text-center m-b-40">
                                <h3>${info.title}</h3>
                                <p class="text-muted">${info.des}</p>
                                <button type="button" class="btn btn-success">${info.phone}</button>
                                <button type="button" class="btn btn-info">${info.email}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <footer class="page-footer">xx &copy; 2019.</footer>
</div>


<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>
<script src="bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.js"></script>
<script src="bower_components/Waves/dist/waves.min.js"></script>
<script src="bower_components/toastr/toastr.js"></script>

<script src="js/common.js"></script>


</body>
</html>
