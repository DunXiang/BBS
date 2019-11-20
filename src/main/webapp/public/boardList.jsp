<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/11/5
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>科信论坛</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <style>
        .navbar-bg{
            background-color: white;
        }
        body{
            background-color: #e7e7e7;
        }
    </style>
</head>
<body>


<!--推荐阅读-->
<style>
    .tuijian li{
        list-style: none;
        float-size: 14px;
        padding: 10px;
    }
    li em{
        margin-right:8px;
        color: silver;
    }
    ul,li{
        padding: 0px;
        margin: 0px;
    }
    .bank-list{
        padding: 20px;
    }
    .bank-list div{
        margin-bottom: 10px
    }
    .itofeedback{
        background-color: white;
        padding: 20px;
    }
    .itofeedback a{
        display: block;
        color: white;
        line-height: 45px;
    }
</style>
<div class="container-fluid itofeedback">
    <div class="row itofeedback"><h5><strong>推荐阅读</strong></h5></div>
    <div class="row">
        <ul class="tuijian">
            <li class="col-lg-6 col-md-12 col-sm-6 col-xs-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-12 col-sm-6 col-xs-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-12 col-sm-6 col-xs-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-12 col-sm-6 col-xs-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-12 col-sm-6 col-xs-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-12 col-sm-6 col-xs-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-12 col-sm-6 col-xs-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-12 col-sm-6 col-xs-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>

        </ul>
    </div>
    <div class="row bank-list">
        <h4 class="col-lg-12"><strong>学习交流</strong></h4>
        <div  class="col-lg-12" style="border-bottom: 1px solid #e7e7e7;"></div>
        <div class="col-lg-6 col-md-6">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="image/common_447_icon.png" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">免费资源</h4>
                    <p><small>主题: 5585, 帖数: 38万</small></p>
                    <p><small>黎活明老师——java网上在线支付 ...</small></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="image/common_447_icon.png" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">免费资源</h4>
                    <p><small>主题: 5585, 帖数: 38万</small></p>
                    <p><small>黎活明老师——java网上在线支付 ...</small></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="image/common_447_icon.png" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">免费资源</h4>
                    <p><small>主题: 5585, 帖数: 38万</small></p>
                    <p><small>黎活明老师——java网上在线支付 ...</small></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="image/common_447_icon.png" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">免费资源</h4>
                    <p><small>主题: 5585, 帖数: 38万</small></p>
                    <p><small>黎活明老师——java网上在线支付 ...</small></p>
                </div>
            </div>
        </div>
        <h4 class="col-lg-12"><strong>学习交流</strong></h4>
        <div  class="col-lg-12" style="border-bottom: 1px solid #e7e7e7;"></div>
        <div class="col-lg-6 col-md-6">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="image/common_447_icon.png" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">免费资源</h4>
                    <p><small>主题: 5585, 帖数: 38万</small></p>
                    <p><small>黎活明老师——java网上在线支付 ...</small></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="image/common_447_icon.png" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">免费资源</h4>
                    <p><small>主题: 5585, 帖数: 38万</small></p>
                    <p><small>黎活明老师——java网上在线支付 ...</small></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="image/common_447_icon.png" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">免费资源</h4>
                    <p><small>主题: 5585, 帖数: 38万</small></p>
                    <p><small>黎活明老师——java网上在线支付 ...</small></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="image/common_447_icon.png" alt="...">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">免费资源</h4>
                    <p><small>主题: 5585, 帖数: 38万</small></p>
                    <p><small>黎活明老师——java网上在线支付 ...</small></p>
                </div>
            </div>
        </div>
    </div>
</div>


<%--<style>
    .itofeedback{
        background-color: white;
        padding: 20px;
    }
    .itofeedback a{
        display: block;
        color: white;
        line-height: 45px;
    }
    .bluebigbutton{
        background-color: #1499f8;
    }
    .greenbigbutton{
        background-color: #4fc277;
    }
    .box-bottom{
        margin-bottom: 10px;
    }
</style>


<!--推荐阅读-->
<style>
    .tuijian li{
        list-style: none;
        float-size: 14px;
        padding: 10px;
    }
    li em{
        margin-right:8px;
        color: silver;
    }
    ul,li{
        padding: 0px;
        margin: 0px;
    }
    .bank-list{
        padding: 20px;
    }
    .bank-list div{
        margin-bottom: 10px
    }
</style>
<div class="container-fluid itofeedback">
    <div class="row itofeedback"><h5><strong>推荐阅读</strong></h5></div>
    <div class="row text-center">
        <ul class="tuijian">
            <li class="col-lg-6 col-md-6 col-sm-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-6 col-sm-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-6 col-sm-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-6 col-sm-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-6 col-sm-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-6 col-sm-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-6 col-sm-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
            <li class="col-lg-6 col-md-6 col-sm-6"><em>●</em>【新版】2019版Python+人工智能学习路线图</li>
        </ul>
    </div>
    <div class="row bank-list">
        <div class="container row">
            <h4 class="col-lg-12 col-sm-12 col-md-12">学习交流</h4>
            <div class="col-lg-12 col-sm-12 col-md-12" style="border-bottom: 1px solid #e7e7e7;"></div>
            <div class="col-lg-6 col-sm-6 col-md-6">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="<c:url value="/static/image/common_447_icon.png"/>" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">免费资源</h4>
                        <p><small>主题: 5585, 帖数: 38万</small></p>
                        <p><small>黎活明老师——java网上在线支付 ...</small></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6 col-md-6">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object"
                                 src="<c:url value="/static/image/common_447_icon.png"/>" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">免费资源</h4>
                        <p><small>主题: 5585, 帖数: 38万</small></p>
                        <p><small>黎活明老师——java网上在线支付 ...</small></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6 col-md-6">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="<c:url value="/static/image/common_447_icon.png"/>" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">免费资源</h4>
                        <p><small>主题: 5585, 帖数: 38万</small></p>
                        <p><small>黎活明老师——java网上在线支付 ...</small></p>
                    </div>
                </div>
            </div>
            <h4 class="col-lg-12 col-md-12 col-sm-12">学习交流</h4>
            <div class="col-lg-12 col-sm-12 col-md-12" style="border-bottom: 1px solid #e7e7e7;"></div>
            <div class="col-lg-6 col-sm-6 col-md-6">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="<c:url value="/static/image/common_447_icon.png"/>" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">免费资源</h4>
                        <p><small>主题: 5585, 帖数: 38万</small></p>
                        <p><small>黎活明老师——java网上在线支付 ...</small></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6 col-md-6">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="<c:url value="/static/image/common_447_icon.png"/>" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">免费资源</h4>
                        <p><small>主题: 5585, 帖数: 38万</small></p>
                        <p><small>黎活明老师——java网上在线支付 ...</small></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6 col-md-6">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="<c:url value="/static/image/common_447_icon.png"/>" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">免费资源</h4>
                        <p><small>主题: 5585, 帖数: 38万</small></p>
                        <p><small>黎活明老师——java网上在线支付 ...</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>--%>


















<!--底部内容-->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
