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

    <div class="container-fluid">
        <div class="row">
            <div class="content-box">
                <div class="head success-bg clearfix">
                    <h5 class="content-title pull-left">编辑机构</h5>
                </div>

                <div class="content">
                    <form action="${ctx}/school/update" method="post">
                        <div class="form-group" style="display:none;">
                            <label class="control-label">id</label>
                            <input type="text" class="form-control" placeholder="6-10个字符" name="id"
                                   value="${school.id}">
                        </div>
                        <div class="form-group">
                            <label class="control-label">登录账户</label>
                            <input type="text" class="form-control" placeholder="6-10个字符" name="userName"
                                   value="${school.userName}">
                        </div>
                        <div class="form-group">
                            <label class="control-label">登录密码</label>
                            <input type="text" class="form-control" placeholder="12个字符内" name="password"
                                   value="${school.password}">
                        </div>
                        <div class="form-group">
                            <label class="control-label">学校名</label>
                            <input type="text" class="form-control" placeholder="" name="name" value="${school.name}">
                        </div>

                        <div class="form-group">
                            <label class="control-label">机构简介</label>
                            <input type="text" class="form-control" placeholder="" name="des" value="${school.des}">
                        </div>

                        <div class="form-group">
                            <label class="control-label">账户编号</label>
                            <input type="text" class="form-control" placeholder="SC" name="accountNum"
                                   value="${school.accountNum}">
                        </div>

                        <div class="form-group">
                            <label class="control-label">单位编号</label>
                            <input type="text" class="form-control" placeholder="01" name="unitNum"
                                   value="${school.unitNum}">
                        </div>
                        <div class="form-group">
                            <label class="control-label">机构类型</label>
                            <input type="text" class="form-control" placeholder="加盟店/直营店" name="type"
                                   value="${school.type}">
                        </div>
                        <div class="form-group">
                            <label class="control-label">地址</label>
                            <input type="text" class="form-control" placeholder="" name="address"
                                   value="${school.address}">
                        </div>
                        <div class="form-group" style="margin-left: 40%">
                            <button type="submit" class="btn btn-info">确认提交</button>
                        </div>
                    </form>
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

<script src="${ctx}/js/common.js"></script>


</body>
</html>
