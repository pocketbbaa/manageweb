<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<body>

<nav class="navbar">
    <div class="navbar-header container">
        <a href="#" class="menu-toggle"><i class="zmdi zmdi-menu"></i></a>
        <a href="${ctx}/index.html" class="logo"><img style="width: 180px;height: 50px" src="${ctx}/img/logo.png"
                                                      alt="Logo Pacificonis"></a>
        <a href="${ctx}/index.html" class="icon-logo"></a>
    </div>
    <div class="navbar-container clearfix">
        <div class="pull-left">
            <a href="#" class="page-title text-uppercase">UNCLE-steam 课程管理系统</a>
        </div>

        <div class="pull-right">

            <ul class="nav pull-right right-menu">
                <li class="more-options dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <i class="zmdi zmdi-account-circle"></i>
                    </a>

                    <div class="more-opt-container dropdown-menu">
                        <a href="#"><i class="zmdi zmdi-account-o"></i>我的账户<span
                                class="badge badge-warning">3</span></a>
                        <a href="#"><i class="zmdi zmdi-chart-donut"></i>刷新页面 <span
                                class="badge badge-success">7</span></a>
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
                    <img src="${ctx}/img/profile_user.jpg" class="img-responsive img-circle center-block" alt="user">
                    <span class="online"></span>
                </div>
                <div class="profile-usertitle">
                    <div class="name">
                        ${school.name}
                    </div>
                    <div class="city">
                        <i class="zmdi zmdi-pin"></i>${school.address}
                    </div>
                </div>
                <div class="profile-activity clearfix">
                    <div class="pull-left">
                        账户编号
                        <br>
                        <span>${school.accountNum}</span>
                    </div>
                    <div class="pull-right">
                        单位编号
                        <br>
                        <span>${school.unitNum}</span>
                    </div>
                </div>
            </div>
        </li>

        <c:forEach items="${classTypeList}" var="classType">
            <li>
                <a aria-expanded="false" href="#"><i class="zmdi zmdi-apps"></i>${classType.name}<span
                        class="zmdi arrow"></span></a>
                <ul aria-expanded="false" class="nav nav-inside collapse">
                    <li class="inside-title">Apps</li>

                    <c:forEach items="${classType.classTypeSonList}" var="classTypeSon">
                        <li class="menu-child">
                            <a aria-expanded="false" href="#"><i class="zmdi zmdi-email"></i>${classTypeSon.name}<span
                                    class="zmdi arrow"></span></a>
                            <ul aria-expanded="false" class="nav nav-inside collapse">
                                <li class="inside-title">课程包</li>

                                <c:forEach items="${classTypeSon.classPhaseList}" var="classPhase">
                                    <li class="menu-child">
                                        <a aria-expanded="false" href="#"><i
                                                class="zmdi zmdi-email"></i>${classPhase.name}<span
                                                class="zmdi arrow"></span></a>
                                        <ul aria-expanded="false" class="nav nav-inside collapse">
                                            <li class="inside-title">课程包</li>

                                            <c:forEach items="${classPhase.classPackageList}" var="classPackage">
                                                <li><a href="${ctx}/classInfo/${classPackage.id}"><h5
                                                        style="color: orange">${classPackage.name}</h5></a>
                                                </li>
                                            </c:forEach>

                                        </ul>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                    </c:forEach>

                </ul>
            </li>
        </c:forEach>

        <li>
            <a href="${ctx}/class/manage"><i class="zmdi zmdi-view-dashboard"></i>课程管理</a>
        </li>
        <li>
            <a href="${ctx}/school/ogManage"><i class="zmdi zmdi-copy"></i>机构管理</a>
        </li>
    </ul>
</aside>


</body>
</html>
