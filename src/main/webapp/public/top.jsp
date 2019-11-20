<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/11/5
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>科信论坛</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="<c:url value="/static/js/jquery-3.4.1.min.js"/> "></script>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
<!--导航条-->
<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">科信论坛</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">表白墙</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <s:user>
                    <li style="padding-right: 10px">
                        <a href="#" style="padding: 10px"><img class="img-circle" src="<c:url
                        value="/static/image/77_avatar_middle.jpg"/> "
                                                               width="25px"/></a>
                    </li>
                </s:user>
                <s:guest>
                    <li style="padding-right: 10px">
                        <button class="btn  navbar-btn btn-success" data-toggle="modal" data-target="#loginModal">登录</button>
                    </li>
                    <li>
                        <button id="register" class="btn navbar-btn btn-primary">注册</button>
                    </li>
                </s:guest>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- 登录模态框 -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">登录</h4>
            </div>
            <form class="form-horizontal" method="post" action="<c:url value="/login"/>" >
            <div class="modal-body">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input type="email" name="username" class="form-control" id="inputEmail3"
                                   placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="password" name="password" class="form-control" id="inputPassword3"
                                   placeholder="Password">
                        </div>
                    </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary">登录</button>
            </div>
            </form>
        </div>
    </div>
</div>
<!-- 注册模态框 -->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <form class="form-horizontal" action="<c:url value="/user"/>" method="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel2">注册</h4>
                </div>
                <div class="modal-body">
                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label">用户名</label>
                            <div class="col-sm-10">
                                <input type="text" name="username" class="form-control" id="username" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">邮箱</label>
                            <div class="col-sm-10">
                                <input type="email" name="email" class="form-control" id="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-2 control-label">密码</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" class="form-control" id="password"
                                       placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="towPassword" class="col-sm-2 control-label">重新输入</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="towPassword" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="towPassword" class="col-sm-2 control-label">技术方向</label>
                            <div class="col-sm-10">
                                <select class="form-control orientation" name="department">
                                    <option>软件开发（JAVAEE）</option>
                                    <option>软件开发（Python）</option>
                                    <option>大数据</option>
                                    <option>数字媒体</option>
                                    <option>地铁航天</option>
                                </select>
                            </div>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary">注册</button>
                </div>
            </div>
        </div>
    </form>
</div>
<script>
    $(document).ready(function () {
        $("#towPassword").change(function () {
            var val = $("#password").val();
            var val1 = $(this).val();
            if (val != val1) {
                $("#towPassword").parent().addClass("has-error")
            }else {
                $("#towPassword").parent().removeClass("has-error")
            }
        })
        $("#register").click(function(){
           $.get("<c:url value="/department"/>",function (data) {
               $(".orientation").empty()
               for (var i = 0; i <data.length ; i++) {
                    $a1 = $("<option></option>").text(data[i].name).val(data[i].id)
                   $(".form-control").append($a1)
               }
               $('#registerModal').modal()
           })
        });
        $("#username").change(function () {
            var val = $(this).val();
            $.post("<c:url value="/verify"/>",{
                "username":val
            },function (data) {
                if(data.state == "2"){
                    $("#username").parent().addClass("has-error")
                    var $parent = $("#username").parent()
                    var errorIoc1 = $("<span class=\"glyphicon glyphicon-remove form-control-feedback\" aria-hidden=\"true\"></span>")
                    var errowIoc2 = $("<span id=\"inputError2Status\" class=\"sr-only\">(error)</span>")
                    $parent.append(errorIoc1).append(errowIoc2)

                }else {
                    $("#username").parent().removeClass("has-error")
                    var $parent = $("#username").parent()
                    $parent.find("span").remove()
                    $parent.find("span").remove()
                }
            })
        })
        $("#email").change(function () {
            var val = $(this).val();
            $.post("<c:url value="/verify"/>",{
                "email":val
            },function (data) {
                if(data.state == "2"){
                    $("#email").parent().addClass("has-error")
                    var $parent = $("#email").parent()
                    var errorIoc1 = $("<span class=\"glyphicon glyphicon-remove form-control-feedback\" aria-hidden=\"true\"></span>")
                    var errowIoc2 = $("<span id=\"inputError2Status\" class=\"sr-only\">(error)</span>")
                    $parent.append(errorIoc1).append(errowIoc2)

                }else {
                    $("#email").parent().removeClass("has-error")
                    var $parent = $("#email").parent()
                    $parent.find("span").remove()
                    $parent.find("span").remove()
                }
            })
        })
    })
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
