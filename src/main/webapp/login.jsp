<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <title>Login</title>
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="bower_components/animate.css/animate.min.css">
    <link rel="stylesheet" href="bower_components/metisMenu/dist/metisMenu.min.css">
    <link rel="stylesheet" href="bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="bower_components/Waves/dist/waves.min.css">
    <link rel="stylesheet" href="bower_components/toastr/toastr.css">


    <link rel="stylesheet" href="css/style.css">


    <!--
      <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
      <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    -->
    <!--[if lt IE 9]>
    <script src="bower_components/html5shiv/dist/html5shiv.min,js"></script>
    <script src="bower_components/respondJs/dest/respond.min.js"></script>
    <![endif]-->
</head>

<body class="user-page">
<!--Preloader-->
<div id="preloader">
    <div class="refresh-preloader">
        <div class="preloader"><i>.</i><i>.</i><i>.</i></div>
    </div>
</div>


<div class="wrapper warning-bg">
    <div class="table-wrapper text-center">
        <div class="table-row">
            <div class="table-cell">
                <div class="login">

                    <div>
                        <img src="img/logo.png" style="width: 300px;height: 120px">
                    </div>
                    <h4 class="text-center">小小舅STEAM</h4>
                    <h4 class="text-center">课程管理系统</h4>
                    <form action="login">
                        <div class="form-group">
                            <input type="text" class="form-control" id="login" placeholder="用户名">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="password" placeholder="密码">
                        </div>

                        <div class="form-group text-left">

                        </div>

                        <button type="submit" class="btn btn-block btn-lg btn-primary">进入系统</button>

                    </form>

                </div>
            </div>
        </div>
    </div>

</div>

<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script>
    $('#preloader').height($(window).height() + "px");
    $(window).on('load', function () {
        setTimeout(function () {
            $('body').css("overflow-y", "visible");
            $('#preloader').fadeOut(50);
        }, 100);
    });
</script>

</body>
</html>
