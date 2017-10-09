<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]--><html lang="en">
<html>
<head>
    <meta charset="utf-8"/>
    <title>运动成都-竞赛报名站点</title>
    <meta name="description" content="Crystal Theme"/>
    <meta name="author" content="Arlind Nushi and Arianit Selimaj"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" href="css/skeleton.css"/>
    <link rel="stylesheet" href="css/crystal.css"/>
    <link rel="stylesheet" href="css/layout.css"/>
    <link rel="stylesheet" href="css/isotope.css"/>
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="js/prettyphoto/css/prettyPhoto.css"/>
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png"/>
    <script src="js/jquery-1.7.2.min.js"></script>

    <style type="text/css">
        　ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        　.con {
            width: 1105px;
            height: 225px;
            overflow: hidden;
            border: 2px solid #666;
            margin: 10px auto 0 auto;
            padding: 5px 0 0 5px;
        }

        　.con ul li {
            float: left;
            margin: 0 5px 10px 0;
        }

        　.con ul li img {
            display: block;
            width: 209px;
            height: 209px;
            padding: 2px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body class="pat_01">
<div class="site_header">
    <div class="bar_top">
        <div class="container">
            <div class="ten columns">
                <ul class="top_menu" data-title=":: Secondary Top Menu ::">
                    <li><a href="#rss">成都市科技体育竞赛系列竞赛活动</a></li>
                </ul>
            </div>
            <div class="six columns">
            </div>
        </div>
    </div>
    <div class="site_header_separator"></div>
    <div class="site_logo_and_menu">
        <div class="container">
            <div class="six columns">
                <div class="site_logo">
                    <a href="index.jsp">
                        <img src="images/game_icon/123.jpg" style="width: 80px;height: 80px;" alt="竞赛报名网"
                             align="bottom"/>
                    </a>

                    <div style="float: left;margin-left: 83px;margin-top: -50px;">
                        <span class="site_slogan">成都市航空模型航海模型运动学校</span>
                    </div>
                    <div style="margin-left: 83px;margin-top: -30px;">
                        <span class="site_slogan">成都市航空模型运动协会办公室</span>
                    </div>
                    <div style="margin-left: 83px;">
                        <span class="site_slogan">成都市无线电定向运动协会</span>
                    </div>
                </div>
            </div>
            <div class="ten columns">
                <ul class="main_menu" data-title=":: Crystal Main Nav ::">
                    <li class="active">
                        <a href="index.jsp">首页</a>
                    </li>
                    <li>
                        <a href="#">赛事介绍</a>
                        <ul>
                            <li><a href="/game_info.jsp">纸飞机</a></li>
                            <li><a href="/game_info.jsp">飞叠杯</a></li>
                            <li><a href="/game_info.jsp">四驱车</a></li>
                        </ul>
                    </li>
                    <li><a href="/login.jsp">报名通道</a></li>
                    <li><a href="#">成绩展示</a></li>
                    <li><a href="#">关于我们</a></li>
                </ul>
            </div>
        </div>
        <div class="container" id="mobile_menu">
            <div class="sixteen columns">
            </div>
        </div>
    </div>
</div>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/">Website Template</a></div>
<div class="asyncslider" data-autoswitch="5000">
    <div class="content container">
        <div id="browsersupport_slide" class="slide_item clearfix" data-current="true">
            <div class="eight columns">
                <h1>全民科技体育比赛 <span>开始了！</span></h1>
                <h2>“运动成都”成都市第四届全民健身运动会益智科技体育报名</h2>
                <div class="text">“运动成都”定制赛事成都市益智体育运动会暨科技体育模型运动会，从2015年至今在成都市乒乓球学校体育馆内举行。
                </div>
                <a href="login.jsp" class="highlight_btn"><span>学校报名!</span></a>
                <a href="login.jsp" class="highlight_btn"><span>社区报名!</span></a>
            </div>
            <div class="eight columns align_right">
                <br/>
                <img src="images/game_icon/123.jpg" style="width: 100px;" id="br_1" alt="slider_item_op"/>
                <img src="images/game_icon/fei_1.jpeg" style="width: 100px;" id="br_2" alt="slider_item_firefox"/>
                <img src="images/game_icon/si_1.jpeg" style="width: 100px;" id="br_3" alt="slider_item_chrome"/>
                <img src="images/game_icon/timg.jpeg" style="width: 100px;" id="br_4" alt="slider_item_safari"/>
                <img src="images/game_icon/timg%20(1).jpeg" style="width: 100px;" id="br_5" alt="slider_item_ie"/>
            </div>
        </div>
    </div>
</div>

<div class="content white_block" style="width: 100%">
    <div class="container">
        <table class="features_tabs" border="0" cellpadding="0" cellspacing="0" style="width: 1000px;">
            <tbody style="width: 900px;">
            <tr>
                <td class="side_tab">
                    <div class="features_tab" data-id="servicesfeatures">
                        <div class="service_entry clearfix">
                            <div class="service_body" style="width: 300px;">
                                <h2><a href="law_list.jsp">
                                    <div class="service_icon">
                                        <i class="cloud"></i>
                                    </div>
                                    <strong>比赛规程</strong></a></h2>
                                <table>
                                    <tbody>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdadasdjassds...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdasasdasdd十大jsssas...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdadasdjassds...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdasasdasdd十大jsssas...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdadasdjassds...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdasasdasdd十大jsssas...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </td>
                <td class="tabs_nav">
                    <a href="#" class="tab_menu_item active" rel="servicesfeatures">
                        比赛规程
                        <span>查看比赛规程</span>
                    </a>
                    <div class="tab_menu_item">
                        相关文章
                        <span>文章介绍</span>
                    </div>
                </td>
                <td class="side_tab right_tab">
                    <div class="features_tab" data-id="servicesfeatures">
                        <div class="service_entry clearfix">
                            <div class="service_body" style="width: 300px;">
                                <h2><a href="articles_list.jsp">
                                    <div class="service_icon">
                                        <i class="dir"></i>
                                    </div>
                                    <strong>相关文章</strong></a></h2>
                                <table>
                                    <tbody>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdadasdjassds...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdasasdasdd十大jsssas...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdadasdjassds...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdasasdasdd十大jsssas...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdadasdjassds...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    <tr style="height: 30px;">
                                        <td><a href="#">规程1asdasasdasdd十大jsssas...</a></td>
                                        <td>
                                            <div style="width: 40px;"></div>
                                        </td>
                                        <td>2017-08-09</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="content container">
    <div class="sixteen columns">
        <h2 class="title">以往比赛</h2>
    </div>
    <div class="portfolio_type_1">
        <marquee id="affiche" align="left" behavior="scroll" direction="left"
                 hspace="50" vspace="20" loop="-1" scrollamount="10" scrolldelay="100" onMouseOut="this.start()"
                 onMouseOver="this.stop()">
            <div class="columns portfolio_item" data-filter="design web">
                <div class="item_block">
                    <div class="padding">
                        <img src="images/game_icon/123.jpg" style="width: 200px;height: 200px;" alt="Some description"/>
                        <h2 class="item_title">
                            <a href="#">比赛1图片</a>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="columns portfolio_item" data-filter="branding web">
                <div class="item_block">
                    <div class="padding">
                        <img src="images/game_icon/fei_1.jpeg" style="width: 200px;height: 200px;"
                             alt="Some description"/>
                        <h2 class="item_title">
                            <a href="#">比赛2图片</a>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="columns portfolio_item" data-filter="design branding">
                <div class="item_block">
                    <div class="padding">
                        <img src="images/game_icon/si_1.jpeg" style="width: 200px;height: 200px;"
                             alt="Some description"/>
                        <h2 class="item_title">
                            <a href="#">比赛3图片</a>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="columns portfolio_item" data-filter="design branding">
                <div class="item_block">
                    <div class="padding">
                        <img src="images/game_icon/timg.jpeg" style="width: 200px;height: 200px;"
                             alt="Some description"/>
                        <h2 class="item_title">
                            <a href="#">比赛4图片</a>
                        </h2>
                    </div>
                </div>
            </div>
        </marquee>
    </div>
</div>

<div class="content white_block blog_and_subscribe">
    <div class="container">
        <div class="eight columns">
            <h2 class="title">今年赛事预告</h2>

            <div class="blog_entry clearfix">
                <div class="post_date">
                    <span class="date">10</span>
                    <span>11月</span>
                </div>
                <div class="post_body">
                    <h3><a href="blog-post.html">开幕式</a></h3>
                    <div class="categories"><a href="#">Inspiration</a></div>
                    <div class="post_content">
                        进行比赛开幕式，代表团进场签到……
                    </div>
                </div>
            </div>
            <div class="blog_entry clearfix">
                <div class="post_date">
                    <span class="date">20</span>
                    <span>11月</span>
                </div>
                <div class="post_body">
                    <h3><a href="blog-post.html">闭幕式</a></h3>
                    <div class="categories"><a href="#">Inspiration</a></div>

                    <div class="post_content">
                        进行比赛闭幕式，竞赛奖项颁发……
                    </div>

                </div>
            </div>
            <div class="blog_entry clearfix">
                <div class="post_date">
                    <span class="date">20</span>
                    <span>11月</span>
                </div>
                <div class="post_body">
                    <h3><a href="blog-post.html">闭幕式</a></h3>
                    <div class="categories"><a href="#">Inspiration</a></div>
                    <div class="post_content">
                        进行比赛闭幕式，竞赛奖项颁发……
                    </div>
                </div>
            </div>
            <div class="blog_entry clearfix">
                <div class="post_date">
                    <span class="date">20</span>
                    <span>11月</span>
                </div>


                <div class="post_body">
                    <h3><a href="blog-post.html">闭幕式</a></h3>
                    <div class="categories"><a href="#">Inspiration</a></div>

                    <div class="post_content">
                        进行比赛闭幕式，竞赛奖项颁发……
                    </div>

                </div>
            </div>
            <div class="blog_entry clearfix">
                <div class="post_date">
                    <span class="date">20</span>
                    <span>11月</span>
                </div>


                <div class="post_body">
                    <h3><a href="blog-post.html">闭幕式</a></h3>
                    <div class="categories"><a href="#">Inspiration</a></div>

                    <div class="post_content">
                        进行比赛闭幕式，竞赛奖项颁发……
                    </div>

                </div>
            </div>
        </div>

        <div class="eight columns">
            <h2 class="title">参与比赛联系方式</h2>
            <p class="droidsans">电话 ： 137876554321</p>
            <p class="droidsans">联系人： hgfhgfhgfhg</p>
            <p class="droidsans">地址： 河北省多久恢复 赛</p>
        </div>
    </div>
    <div class="stripes"></div>
</div>

<div class="content container">
    <div class="sixteen columns">
        <h2 class="title">合作伙伴</h2>
        <ul class="partners_carousel clearfix">
            <li><a href="#"><img src="images/partner_01.png" alt="partner_01"/></a></li>
            <li><a href="#"><img src="images/partner_02.png" alt="partner_02"/></a></li>
            <li><a href="#"><img src="images/partner_03.png" alt="partner_03"/></a></li>
            <li><a href="#"><img src="images/partner_04.png" alt="partner_04"/></a></li>
            <li><a href="#"><img src="images/partner_01.png" alt="partner_01"/></a></li>
            <li><a href="#"><img src="images/partner_01.png" alt="partner_01"/></a></li>
            <li><a href="#"><img src="images/partner_03.png" alt="partner_03"/></a></li>
            <li><a href="#"><img src="images/partner_02.png" alt="partner_02"/></a></li>
            <li><a href="#"><img src="images/partner_01.png" alt="partner_01"/></a></li>
            <li><a href="#"><img src="images/partner_04.png" alt="partner_04"/></a></li>
        </ul>
    </div>
</div>

<div class="site_footer">
    <div class="footer_bottom">
        <div class="container">
            <div class="two columns" id="back_to_top">
                <a href="#" class="back_to_top">Back to Top</a>
            </div>
        </div>
    </div>
</div>


<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.transit.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/prettyphoto/jquery.prettyPhoto.js"></script>
<script src="js/jquery.infinitescroll.js"></script>
<script src="js/hover.zoom.js"></script>
<script src="js/jquery.selectbox-0.1.3.min.js"></script>
<script src="js/jquery.winres.js"></script>
<script src="js/jquery.ancarousel.js"></script>
<script src="js/jquery.featurestabs.js"></script>
<script src="js/jquery.asyncslider.js"></script>
<script src="js/custom.js"></script>
<script src="js/mobile-menu.js"></script>
<script src="js/media-helper.js"></script>
<script src="js/tabs.js"></script>


<script src="js/style-switcher.js">
    $(document).ready(function () {
        new ZouMa().Start();
    });
    function ZouMa() {
        this.maxLength = 3; //最低显示数
        this.Timer = 2000;//计时器间隔时间
        this.Ul = $(".box ul");
        var handId;//计时器id
        var self = this;
        this.Start = function () {
            if (self.Ul.children().length < this.maxLength) {
                self.Ul.append(self.Ul.children().clone());
            }
            handId = setInterval(self.Play, self.Timer);
        }
        this.Play = function () {
            var img = self.Ul.children().eq(0);
            var left = img.children().eq(0).width();
            img.animate({"marginLeft": (-1 * left) + "px"}, 600, function () {
                //appendTo函数是实现走马灯一直不间断播放的秘诀。
                //目前网上看到的很多走马灯，走到最后一张的时候，会立马闪回第一张，而不是继续从后往前推进，即是没有明白该函数的作用的原因
                $(this).css("margin-left", "auto").appendTo(self.Ul);
            });
        }
    }
</script>

</body>
</html>
