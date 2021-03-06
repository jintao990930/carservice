<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Car</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
    <style type="text/css">
        body{font-family:'Rubik', sans-serif;}
    </style>
</head class="res layout-1 layout-subpage">
<body class="res layout-1 layout-subpage">
<div id="wrapper" class="wrapper-fluid banners-effect-5">
    <!-- Header Container  -->
    <header id="header" class=" typeheader-1">

        <!-- Header Top -->
        <div class="header-top hidden-compact">
            <div class="container">
                <div class="row">
                    <div class="header-top-left col-lg-3 col-md-4 col-sm-5 hidden-xs">

                    </div>
                    <div class="header-top-right col-lg-9 col-md-8 col-sm-7 col-xs-12">
                        <ul class="top-link list-inline lang-curr">

                        </ul>
                        <ul class="top-log list-inline">
                            <li><i class="fa fa-lock"></i><a href="login.html">登录</a> / </li><li><a href="register.html">注册</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="header-middle hidden-compact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                        <div class="logo">
                            <a href="index.html"><img src="/static/image/catalog/logo.png" title="Your Store" alt="Your Store" /></a>
                        </div>

                    </div>

                    <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12 middle-right">

                        <div class="shopping_cart">
                            <div id="cart" class="btn-shopping-cart">

                                <a href="javascript:void(0)" data-loading-text="Loading... " class="btn-group top_cart dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <div class="shopcart">
                                        <span class="icon-c">
                                            <i class="fa fa-shopping-basket"></i>
                                        </span>
                                        <div class="shopcart-inner">
                                            <p class="text-shopping-cart">
                                                购物车
                                            </p>

                                            <span class="total-shopping-cart cart-total-full">
                                                <%--                                            <span class="items_cart">02</span><span class="items_cart2"> item(s)</span><span class="items_carts">$162.00</span>--%>
                                            </span>
                                        </div>
                                    </div>
                                </a>

                                <ul class="dropdown-menu pull-right shoppingcart-box" role="menu">
                                    <li>
                                        <table class="table table-striped">
                                            <tbody>
                                            <tr>
                                                <td class="text-center" style="width:70px">
                                                    <a href="product.html">
                                                        <img src="/static/image/catalog/demo/product/80/2.jpg" style="width:70px" alt="Xancetta bresao" title="Xancetta bresao" class="preview">
                                                    </a>
                                                </td>
                                                <td class="text-left"> <a class="cart_product_name" href="product.html">Xancetta bresao</a></td>
                                                <td class="text-center">x1</td>
                                                <td class="text-center">$60.00</td>
                                                <td class="text-right">
                                                    <a href="product.html" class="fa fa-edit"></a>
                                                </td>
                                                <td class="text-right">
                                                    <a onclick="cart.remove('1');" class="fa fa-times fa-delete"></a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </li>
                                    <li>
                                        <div>
                                            <table class="table table-bordered">
                                                <tbody>
                                                <tr>
                                                    <td class="text-left"><strong>商品</strong>
                                                    </td>
                                                    <td class="text-right">￥140.00</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-left"><strong>包装</strong>
                                                    </td>
                                                    <td class="text-right">￥5.00</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-left"><strong>运费</strong>
                                                    </td>
                                                    <td class="text-right">￥20.00</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-left"><strong>Total</strong>
                                                    </td>
                                                    <td class="text-right">$162.00</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <p class="text-right"> <a class="btn view-cart" href="/cart"><i class="fa fa-shopping-cart"></i>购物车</a>&nbsp;&nbsp;&nbsp; <a class="btn btn-mega checkout-cart" href="/checkout"><i class="fa fa-share"></i>付款</a>
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="wishlist hidden-md hidden-sm hidden-xs"><a href="#" id="wishlist-total" class="top-link-wishlist" title="Wish List (0) "><i class="fa fa-heart"></i></a></div>

                    </div>
                </div>
            </div>
        </div>


        <div class="header-bottom hidden-compact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                        <div class="menu-vertical-w">
                            <div class="responsive so-megamenu megamenu-style-dev ">
                                <div class="so-vertical-menu ">
                                    <nav class="navbar-default">

                                        <div class="container-megamenu vertical">
                                            <div id="menuHeading">
                                                <div class="megamenuToogle-wrapper">
                                                    <div class="megamenuToogle-pattern">
                                                        <div class="container">
                                                            <div>
                                                                <span></span>
                                                                <span></span>
                                                                <span></span>
                                                            </div>
                                                            所有分类
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="navbar-header">
                                                <button type="button" id="show-verticalmenu" data-toggle="collapse" class="navbar-toggle">
                                                    <i class="fa fa-bars"></i>
                                                    <span>  All Categories     </span>
                                                </button>
                                            </div>
                                            <div class="vertical-wrapper" >
                                                <span id="remove-verticalmenu" class="fa fa-times"></span>
                                                <div class="megamenu-pattern">
                                                    <div class="container-mega">
                                                        <ul class="megamenu">
                                                            <li class="item-vertical  style1 with-sub-menu hover">
                                                                <p class="close-menu"></p>
                                                                <a href="#" class="clearfix">
                                                                    <span class="label"></span>
                                                                    <span>Smart Devices</span>
                                                                    <b class="fa-angle-right"></b>
                                                                </a>
                                                                <div class="sub-menu" data-subwidth="40" >
                                                                    <div class="content">
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="row">
                                                                                    <div class="col-md-12 static-menu">
                                                                                        <div class="menu">
                                                                                            <ul>
                                                                                                <li><a href="#" class="main-menu">Smartphone</a>
                                                                                                    <ul>
                                                                                                        <li><a href="#">Esdipiscing</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Scanners</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Apple</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Dell</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Scanners</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </li>
                                                                                                <li><a href="#" class="main-menu">Electronics</a>
                                                                                                    <ul>
                                                                                                        <li><a href="#">Asdipiscing</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Diam sit</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Labore et</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Monitors</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="row banner">
                                                                                    <a href="#">
                                                                                        <img src="/static/image/catalog/menu/megabanner/vbanner1.png" alt="banner1">
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </header>
    <!-- //Header Container  -->


    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="breadcrumb">
            <li><a href="/index"><i class="fa fa-home"></i></a></li>
            <li><a href="#">账户</a></li>
            <li><a href="#">注册</a></li>
        </ul>

        <div class="row">
            <div id="content" class="col-sm-12">
                <h2 class="title">注册账户</h2>
                <p>如果你已经有一个账户，请直接登陆<a href="/login" style="color: red">login</a>.</p>
                <form action="/register" method="post" enctype="multipart/form-data" class="form-horizontal account-register clearfix">
                    <fieldset id="account">
                        <legend>用户信息</legend>
                        <div class="form-group required" style="display: none;">
                            <label class="col-sm-2 control-label">Customer Group</label>
                            <div class="col-sm-10">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="1" checked="checked"> Default
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="username">用户名:</label>
                            <div class="col-sm-10">
                                <input type="text" name="username" value="" placeholder="请输出用户名" id="username" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="email">邮箱:</label>
                            <div class="col-sm-10">
                                <input type="email" name="email" value="" placeholder="请输入邮箱地址" id="email" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="phone">手机号码:</label>
                            <div class="col-sm-10">
                                <input type="tel" name="phone" value="" placeholder="请输入手机号码" id="phone" class="form-control">
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>您的密码</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="password">密码:</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" value="" placeholder="请输入你的密码" id="password" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="confirmPassword">确认密码:</label>
                            <div class="col-sm-10">
                                <input type="password" name="confirmPassword" value="" placeholder="请确认您的密码" id="confirmPassword" class="form-control">
                            </div>
                        </div>
                    </fieldset>

                    <div class="buttons">
                        <div class="pull-right">
                            <input type="submit" value="注册" class="btn btn-primary">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- //Main Container -->

</div>

<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>
</html>
