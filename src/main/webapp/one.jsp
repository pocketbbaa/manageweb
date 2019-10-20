<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no" />


    <!-- Chrome, Firefox OS and Opera -->
    <meta name="theme-color" content="#49CEFF">
    <!-- Windows Phone -->
    <meta name="msapplication-navbutton-color" content="#49CEFF" />
    <!-- iOS Safari -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

    <title>Home</title>
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="bower_components/animate.css/animate.min.css">
    <link rel="stylesheet" href="bower_components/metisMenu/dist/metisMenu.min.css">
    <link rel="stylesheet" href="bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="bower_components/Waves/dist/waves.min.css">
    <link rel="stylesheet" href="bower_components/toastr/toastr.css">



    <link rel="stylesheet" href="bower_components/datatables/media/css/jquery.dataTables.min.css">

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

<body>
<!--Preloader-->
<div id="preloader">
    <div class="refresh-preloader"><div class="preloader"><i>.</i><i>.</i><i>.</i></div></div>
</div>


<div class="wrapper">
    <nav class="navbar">
        <div class="navbar-header container">
            <a href="#" class="menu-toggle"><i class="zmdi zmdi-menu"></i></a>
            <a href="index.html" class="logo"><img style="width: 180px;height: 50px" src="img/logo.png" alt="Logo Pacificonis"></a>
            <a href="index.html" class="icon-logo"></a>
        </div>
        <div class="navbar-container clearfix">
            <div class="pull-left">
                <a href="#" class="page-title text-uppercase">UNCLE-steam</a>
            </div>

            <div class="pull-right">

                <ul class="nav pull-right right-menu">
                    <li class="more-options dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                            <i class="zmdi zmdi-account-circle"></i>
                        </a>

                        <div class="more-opt-container dropdown-menu">
                            <a href="#"><i class="zmdi zmdi-account-o"></i>我的账户<span class="badge badge-warning">3</span></a>
                            <a href="#"><i class="zmdi zmdi-chart-donut"></i>刷新页面 <span class="badge badge-success">7</span></a>
                            <a href="#"><i class="zmdi zmdi-run"></i>退出登录</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <aside class="sidebar">
        <ul class="nav metismenu">
            <li class="profile-sidebar-container">
                <div class="profile-sidebar text-center">
                    <div class="profile-userpic">
                        <img src="img/profile_user.jpg" class="img-responsive img-circle center-block" alt="user">
                        <span class="online"></span>
                    </div>
                    <div class="profile-usertitle">
                        <div class="name">
                            oo机器人学校
                        </div>
                        <div class="city">
                            <i class="zmdi zmdi-pin"></i>四川-成都-oo校区
                        </div>
                    </div>
                    <div class="profile-activity clearfix">
                        <div class="pull-left">
                            账户编号
                            <br>
                            <span>SC</span>
                        </div>
                        <div class="pull-right">
                            单位编号
                            <br>
                            <span>01</span>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <a href="#"><i class="zmdi zmdi-view-dashboard"></i>UNCLESTEA<span class="zmdi arrow"></span></a>
                <ul class="nav nav-inside collapse">
                    <li class="inside-title">Dashboard</li>
                    <li><a href="index.html">Dashboard v1</a></li>
                </ul>
            </li>
            <li>
                <a aria-expanded="false" href="#"><i class="zmdi zmdi-apps"></i>课程类别1<span class="zmdi arrow"></span></a>
                <ul aria-expanded="false" class="nav nav-inside collapse">
                    <li class="inside-title">Apps</li>
                    <li class="menu-child">
                        <a aria-expanded="false" href="#"><i class="zmdi zmdi-email"></i>课程阶段1<span class="zmdi arrow"></span></a>
                        <ul aria-expanded="false" class="nav nav-inside collapse">
                            <li class="inside-title">课程包1</li>
                            <li><a href="email-inbox.html">课程包1</a></li>
                            <li><a href="email-view.html">课程包2</a></li>
                            <li><a href="email-compose.html">课程包3</a></li>
                            <li><a href="email-templates.html">课程包4</a></li>
                        </ul>
                    </li>
                    <li class="menu-child">
                        <a aria-expanded="false" href="#"><i class="zmdi zmdi-format-list-numbered"></i>课程阶段2<span class="zmdi arrow"></span></a>
                        <ul aria-expanded="false" class="nav nav-inside collapse">
                            <li class="inside-title">Tasks</li>
                            <li><a href="task-list.html">课程包1</a></li>
                            <li><a href="task-detail.html">课程包2</a></li>
                            <li><a href="taskboard.html">课程包3</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <a aria-expanded="false" href="#"><i class="zmdi zmdi-apps"></i>课程类别2<span class="zmdi arrow"></span></a>
                <ul aria-expanded="false" class="nav nav-inside collapse">
                    <li class="inside-title">Apps</li>

                    <li class="menu-child">
                        <a aria-expanded="false" href="#"><i class="zmdi zmdi-email"></i>课程阶段1<span class="zmdi arrow"></span></a>
                        <ul aria-expanded="false" class="nav nav-inside collapse">
                            <li class="inside-title">课程包1</li>
                            <li><a href="email-inbox.html">课程包1</a></li>
                            <li><a href="email-view.html">课程包2</a></li>
                            <li><a href="email-compose.html">课程包3</a></li>
                            <li><a href="email-templates.html">课程包4</a></li>
                        </ul>
                    </li>
                    <li class="menu-child">
                        <a aria-expanded="false" href="#"><i class="zmdi zmdi-format-list-numbered"></i>课程阶段2<span class="zmdi arrow"></span></a>
                        <ul aria-expanded="false" class="nav nav-inside collapse">
                            <li class="inside-title">Tasks</li>
                            <li><a href="task-list.html">课程包1</a></li>
                            <li><a href="task-detail.html">课程包2</a></li>
                            <li><a href="taskboard.html">课程包3</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <a href="form-wizard.html"><i class="zmdi zmdi-view-dashboard"></i>课程管理</a>
            </li>
            <li>
                <a href="form-wizard.html"><i class="zmdi zmdi-copy"></i>机构管理</a>
            </li>
        </ul>
    </aside>

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
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
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
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                            <p><img src="img/logo.png"/></p>
                        </div>
                    </div>


                </div>
            </div>
        </div>

    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="content-box">
                    <div class="head warning-bg clearfix">
                        <h5 class="content-title pull-left">Faq</h5>
                        <div class="functions-btns pull-right">
                            <a class="refresh-btn" href="#"><i class="zmdi zmdi-refresh"></i></a>
                            <a class="fullscreen-btn" href="#"><i class="zmdi zmdi-fullscreen"></i></a>
                            <a class="close-btn" href="#"><i class="zmdi zmdi-close"></i></a>
                        </div>
                    </div>

                    <div class="content">
                        <div class="row">
                            <div class="col-md-12 text-center m-b-40">
                                <h3>Frequently asked questions</h3>
                                <p class="text-muted">Bringing so sociable felicity supplied mr. September suspicion far him two acuteness perfectly. Covered as an examine so regular of. <br> Ye astonished friendship remarkably no. Window admire matter praise you bed whence.</p>
                                <button type="button" class="btn btn-success">Email us</button>
                                <button type="button" class="btn btn-info">Tweet us</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    What is it?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    How much?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                Looking started he up perhaps against. How remainder all additions get elsewhere resources. One missed shy wishes supply design answer formed. Prevent on present hastily passage an subject in be. Be happiness arranging so newspaper defective affection ye. Families blessing he in to no daughter.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    Where from?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                Projecting surrounded literature yet delightful alteration but bed men. Open are from long why cold. If must snug by upon sang loud left. As me do preference entreaties compliment motionless ye literature. Day behaviour explained law remainder. Produce can cousins account you pasture. Peculiar delicate an pleasant provided do perceive.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingOne2">
                                            <h4 class="panel-title">
                                                <a role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2" aria-expanded="true" aria-controls="collapseOne">
                                                    Can I buy?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne2" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne2">
                                            <div class="panel-body">
                                                Picture removal detract earnest is by. Esteems met joy attempt way clothes yet demesne tedious. Replying an marianne do it an entrance advanced. Two dare say play when hold. Required bringing me material stanhill jointure is as he. Mutual indeed yet her living result matter him bed whence. House men taste bed not drawn joy. Through enquire however do equally herself at. Greatly way old may you present improve. Wishing the feeling village him musical.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingTwo2">
                                            <h4 class="panel-title">
                                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2">
                                                    Who else?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo2">
                                            <div class="panel-body">
                                                Now seven world think timed while her. Spoil large oh he rooms on since an. Am up unwilling eagerness perceived incommode. Are not windows set luckily musical hundred can. Collecting if sympathize middletons be of of reasonably. Horrible so kindness at thoughts exercise no weddings subjects. The mrs gay removed towards journey chapter females offered not. Led distrusts otherwise who may newspaper but. Last he dull am none he mile hold as.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingThree2">
                                            <h4 class="panel-title">
                                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree2" aria-expanded="false" aria-controls="collapseThree2">
                                                    Do I need something?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree2">
                                            <div class="panel-body">
                                                Feet evil to hold long he open knew an no. Apartments occasional boisterous as solicitude to introduced. Or fifteen covered we enjoyed demesne is in prepare. In stimulated my everything it literature. Greatly explain attempt perhaps in feeling he. House men taste bed not drawn joy. Through enquire however do equally herself at. Greatly way old may you present improve. Wishing the feeling village him musical.
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
