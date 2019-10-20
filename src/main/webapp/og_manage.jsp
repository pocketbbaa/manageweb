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


    <link rel="stylesheet" href="${ctx}/css/style.css">


    <!--
      <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
      <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    -->
    <!--[if lt IE 9]>
    <script src="/bower_components/html5shiv/dist/html5shiv.min,js"></script>
    <script src="/bower_components/respondJs/dest/respond.min.js"></script>
    <![endif]-->
</head>

<body>


<div class="wrapper">

    <jsp:include page="header.jsp"/>

    <div>
        <a style="margin-top: 20px;margin-left: 100px;width: 100px;height: 30px;" href="${ctx}/add_og.jsp" type="button"
           class="btn btn-info"><strong style="color: white">添加机构</strong></a>
    </div>

    <div class="container-fluid">
        <div class="row">


            <c:forEach items="${schoolList}" var="school">

                <div class="col-md-3 col-sm-6">
                    <div class="content-box box-drop contact-block">
                        <div class="head clearfix">
                            <div class="functions-btns pull-right">
                                <div class="btn-group success">
                                <span class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                                      aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></span>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="/school/detail/${school.id}">编辑</a></li>
                                        <li><a href="/school/delete/${school.id}">删除</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="content text-muted text-center">
                            <p class="text-uppercase">${school.type}</p>
                            <p>${school.des}</p>
                            <div class="text-left">
                                <p><strong>学校名 :</strong> <span class="m-l-15">${school.name}</span></p>
                                <p><strong>账户编号 :</strong> <span class="m-l-15">${school.accountNum}</span></p>
                                <p><strong>单位编号 :</strong> <span class="m-l-15">${school.unitNum}</span></p>
                                <p><strong>地址 :</strong> <span class="m-l-15">${school.address}</span></p>
                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>

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

<script src="${ctx}/js/common.js"></script>


</body>
</html>
