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
</head>

<body>


<div class="wrapper">

    <jsp:include page="header.jsp"/>
    <div>
        <button style="margin-top: 20px;margin-left: 1%;width: 200px;height: 30px;"
                class="btn btn-success" data-toggle="modal" data-target="#addClassTypeModel"><strong
                style="color: white">添加一级类别</strong></button>

        <!-- 添加一级类别 模态框（Modal） -->
        <div class="modal fade" id="addClassTypeModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">请输入一级类别名称</h4>
                    </div>
                    <form action="${ctx}/class/addClassType" method="post">
                        <div class="modal-body">
                            <input type="text" class="form-control" name="name"/>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="submit" class="btn btn-primary">提交</button>
                        </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
    </div>

    <div class="container-fluid">

        <ul class="nav metismenu">

            <c:forEach items="${classTypeList}" var="classType">
                <li>
                    <a aria-expanded="false" href="#"><h3 style="color: black"><i
                            class="zmdi zmdi-apps"></i>&nbsp;&nbsp;${classType.name}
                    </h3>
                    </a>
                    <ul aria-expanded="false" class="nav nav-inside collapse">
                        <li class="menu-child">
                            <button style="margin-top: 10px;width: 160px;height: 30px;"
                                    class="btn btn-warning" data-toggle="modal"
                                    data-target="#addClassTypeSonModel_${classType.id}">
                                <strong style="color: white">-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;+添加类别</strong>
                            </button>

                            <!-- 添加二级类别 模态框（Modal） -->
                            <div class="modal fade" id="addClassTypeSonModel_${classType.id}" tabindex="-1"
                                 role="dialog"
                                 aria-labelledby="myModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                &times;
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel_1">请输入二级类别名称</h4>
                                        </div>
                                        <form action="${ctx}/class/addClassTypeSon" method="post">
                                            <div class="modal-body">
                                                <input style="display: none" type="text" class="form-control" name="pId"
                                                       value="${classType.id}"/>
                                                <input type="text" class="form-control" name="name"/>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                                </button>
                                                <button type="submit" class="btn btn-primary">提交</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </li>
                        <c:forEach items="${classType.classTypeSonList}" var="classTypeSon">

                            <li class="menu-child">

                                <a aria-expanded="false" href="#"><h4 style="color: black"><i
                                        class="zmdi"></i>-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;
                                        ${classTypeSon.name}</h4>
                                </a>

                                <ul aria-expanded="true" class="nav nav-inside collapse">
                                    <li class="menu-child">
                                        <button style="margin-top: 10px;width: 200px;height: 30px;"
                                                class="btn btn-warning" data-toggle="modal"
                                                data-target="#addClassPhaseModel_${classTypeSon.id}"><strong
                                                style="color: white">-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;>+添加课程阶段</strong>
                                        </button>
                                        <div class="modal fade" id="addClassPhaseModel_${classTypeSon.id}"
                                             tabindex="-1" role="dialog"
                                             aria-labelledby="myModalLabel"
                                             aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-hidden="true">
                                                            &times;
                                                        </button>
                                                        <h4 class="modal-title" id="myModalLabel_2">请输入课程阶段名称</h4>
                                                    </div>
                                                    <form action="${ctx}/class/addClassPhase" method="post">
                                                        <div class="modal-body">
                                                            <input style="display: none" type="text"
                                                                   class="form-control" name="pId"
                                                                   value="${classTypeSon.id}"/>
                                                            <input type="text" class="form-control" name="name"/>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal">关闭
                                                            </button>
                                                            <button type="submit" class="btn btn-primary">提交</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <c:forEach items="${classTypeSon.classPhaseList}" var="classPhase">
                                        <li class="menu-child">
                                            <a href="#"><h5 style="color: black;width: 50%"><i
                                                    class="zmdi"></i>-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;>
                                                    ${classPhase.name}
                                            </h5>
                                            </a>
                                            <ul aria-expanded="true" class="nav nav-inside collapse">
                                                <li class="menu-child">
                                                    <button style="margin-top: 10px;width: 250px;height: 30px;"
                                                            class="btn btn-warning" data-toggle="modal"
                                                            data-target="#addClassPackageModel_${classPhase.id}"><strong
                                                            style="color: white">-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;>>+添加课程包</strong>
                                                    </button>
                                                    <div class="modal fade" id="addClassPackageModel_${classPhase.id}"
                                                         tabindex="-1" role="dialog"
                                                         aria-labelledby="myModalLabel"
                                                         aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close"
                                                                            data-dismiss="modal" aria-hidden="true">
                                                                        &times;
                                                                    </button>
                                                                    <h4 class="modal-title" id="myModalLabel_3">
                                                                        请输入课程包名称</h4>
                                                                </div>
                                                                <form action="${ctx}/class/addClassPackage"
                                                                      method="post">
                                                                    <div class="modal-body">
                                                                        <input style="display: none" type="text"
                                                                               class="form-control" name="pId"
                                                                               value="${classPhase.id}"/>
                                                                        <input type="text" class="form-control"
                                                                               name="name"/>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-default"
                                                                                data-dismiss="modal">关闭
                                                                        </button>
                                                                        <button type="submit" class="btn btn-primary">
                                                                            提交
                                                                        </button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <c:forEach items="${classPhase.classPackageList}" var="classPackage">
                                                    <li>
                                                        <a href="${ctx}/classInfo/1" style="float: left">-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;>>
                                                                ${classPackage.name}<a
                                                                    href="${ctx}/classPackage/delete/${classPackage.id}"
                                                                    style="width: 100px;margin-left: 30%;color: red">--删除--</a></a>
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
                <hr/>
            </c:forEach>
        </ul>
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
