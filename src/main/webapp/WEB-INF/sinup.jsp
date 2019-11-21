<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/11/5
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html  lang="en">

<head>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">

    <!-- title of site -->
    <title>Sign up</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="<c:url value="/static/logo/favicon.png"/>"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="<c:url value="/static/css/font-awesome.min.css"/>"/>

    <!--animate.css-->
    <link rel="stylesheet" href="<c:url value="/static/css/animate.css"/>"/>

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.min.css"/>"/>

    <!-- bootsnav -->
    <link rel="stylesheet" href="<c:url value="/static/css/bootsnav.css"/>"/>

    <!--style.css-->
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>"/>

    <!--responsive.css-->
    <link rel="stylesheet" href="<c:url value="/static/css/responsive.css"/>"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- signin end -->
<section class="signin signup">
    <div class="container">

        <div class="sign-content">
            <h2>sign up</h2>

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-form">
                        <form action="signin.html">
                            <div class="form-col">
                                <div class="form-group">
                                    <label for="signin_form">first name</label>
                                    <input type="text" class="form-control" id="signin_form" placeholder="first name">
                                </div><!--/.form-group -->
                            </div><!--/.form-col -->
                            <div class="form-col1">
                                <div class="form-group">
                                    <label for="signin_form">last name</label>
                                    <input type="text" class="form-control" id="signin_form" placeholder="last name">
                                </div><!--/.form-group -->
                            </div><!--/.form-col1 -->
                            <div class="form-group">
                                <label for="signin_form">Email</label>
                                <input type="email" class="form-control" id="signin_form" placeholder="enter your email here">
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="signin_form">password</label>
                                <input type="password" class="form-control" id="signin_form" placeholder="Password">
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="signin_form">retype password</label>
                                <input type="password" class="form-control" id="signin_form" placeholder="Retype Password">
                            </div><!--/.form-group -->
                        </form><!--/form -->
                    </div><!--/.signin-form -->
                </div><!--/.col -->
            </div><!--/.row -->

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-password">
                        <div class="awesome-checkbox-list">
                            <ul class="unstyled centered">

                                <li>
                                    <input class="styled-checkbox" id="styled-checkbox-2" type="checkbox" value="value2">
                                    <label for="styled-checkbox-2">accept our terms & condition</label>
                                </li>

                                <li></li>

                            </ul>
                        </div><!--/.awesome-checkbox-list -->
                    </div><!--/.signin-password -->
                </div><!--/.col -->
            </div><!--/.row -->


            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-footer">
                        <button type="button" class="btn signin_btn" data-toggle="modal" data-target=".signin_modal">
                            sign up
                        </button>
                        <p>
                            already member ?
                            <a href="signin.html">sign in</a>
                        </p>
                    </div><!--/.signin-footer -->
                </div><!--/.col-->
            </div><!--/.row -->

        </div><!--/.sign-content -->

        <!-- modal part start -->
        <div class="modal fade signin_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="sign-content">

                        <div class="modal-header">
                            <h2>sign up</h2>
                        </div><!--/.modal-header -->

                        <div class="modal-body">
                            <div class="signin-form">
                                <div class=" ">
                                    <div class=" ">
                                        <form action="signin.html">
                                            <div class="form-col">
                                                <div class="form-group">
                                                    <label for="signin_form">first name</label>
                                                    <input type="text" class="form-control" id="signin_form" placeholder="first name">
                                                </div><!--/.form-group -->
                                            </div><!--/.form-col -->
                                            <div class="form-col1">
                                                <div class="form-group">
                                                    <label for="signin_form">last name</label>
                                                    <input type="text" class="form-control" id="signin_form" placeholder="last name">
                                                </div><!--/.form-group -->
                                            </div><!--/.form-col1 -->
                                            <div class="form-group">
                                                <label for="signin_form">Email</label>
                                                <input type="email" class="form-control" id="signin_form" placeholder="enter your email here">
                                            </div><!--/.form-group -->
                                            <div class="form-group">
                                                <label for="signin_form">password</label>
                                                <input type="password" class="form-control" id="signin_form" placeholder="Password">
                                            </div><!--/.form-group -->
                                            <div class="form-group">
                                                <label for="signin_form">retype password</label>
                                                <input type="password" class="form-control" id="signin_form" placeholder="Retype Password">
                                            </div><!--/.form-group -->
                                        </form><!--/form -->
                                    </div><!--/.col -->
                                </div><!--/.row -->

                            </div><!--/.signin-form -->

                            <div class="signin-password">
                                <div class="awesome-checkbox-list">
                                    <ul class="unstyled centered">

                                        <li>
                                            <input class="styled-checkbox" id="styled-checkbox-3" type="checkbox" value="value3">
                                            <label for="styled-checkbox-3">accept our terms & condition</label>
                                        </li>

                                        <li></li>

                                    </ul>
                                </div><!--/.awesome-checkbox-list -->
                            </div><!--/.signin-password -->

                            <div class="signin-footer">
                                <button type="button" class="btn signin_btn" data-toggle="modal" data-target=".signin_modal">
                                    sign up
                                </button>
                                <p>
                                    already member ?
                                    <a href="signin.html">sign in</a>
                                </p>
                            </div><!--/.signin-footer -->
                        </div><!--/.modal-body -->

                    </div><!--/.sign-content -->
                </div><!--/.modal-content -->
            </div><!--/.modal-dialog -->
        </div><!--/.modal -->
        <!-- modal part end -->
    </div><!--/.container -->

</section><!--/.signin -->

<!-- signin end -->

<!--footer copyright start -->
<footer class="footer-copyright">
    <div id="scroll-Top">
        <i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
    </div><!--/.scroll-Top-->

</footer><!--/.hm-footer-copyright-->
<!--footer copyright  end -->


<!-- Include all js compiled plugins (below), or include individual files as needed -->

<script src="../log-form/1/assets/js/jquery.js"></script>

<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

<!--bootstrap.min.js-->
<script src="../log-form/1/assets/js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="../log-form/1/assets/js/bootsnav.js"></script>

<!-- jquery.sticky.js -->
<script src="../log-form/1/assets/js/jquery.sticky.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>


<!--Custom JS-->
<script src="../log-form/1/assets/js/custom.js"></script>

</body>

</html>