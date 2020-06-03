<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/2/21
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="https://supers1.oss-cn-hangzhou.aliyuncs.com/v2-2afb9f6c107dd0d378fc058c87e0961a.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>${user.email}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">功能菜单</li>
            <li class="active treeview">
                <a href="#">
                    <i class="fa fa-user"></i> <span>用户管理</span>
                    <span class="pull-right-container">
                          <i class="fa fa-angle-left pull-right"></i>
                        </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/user/list"><i class="fa fa-circle-o"></i> 用户列表</a></li>
                    <li><a href="/user/form"><i class="fa fa-circle-o"></i> 新增用户</a></li>
                </ul>
            </li>

            <li class="active treeview">
                <a href="#">
                    <i class="fa fa-book"></i> <span>内容管理</span>
                    <span class="pull-right-container">
                          <i class="fa fa-angle-left pull-right"></i>
                        </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/content/category/list"><i class="fa fa-circle-o"></i> 内容分类</a></li>
                    <li><a href="/content/list"><i class="fa fa-circle-o"></i> 内容列表</a></li>
                </ul>
            </li>

            <li class="active treeview">
                <a href="#">
                    <i class="fa fa-book"></i> <span>购物管理</span>
                    <span class="pull-right-container">
                          <i class="fa fa-angle-left pull-right"></i>
                        </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/goods/list"><i class="fa fa-circle-o"></i> 商品列表</a></li>
                    <li><a href="/cart/list"><i class="fa fa-circle-o"></i> 购物列表</a></li>
                </ul>
            </li>

        </ul>
    </section>
</aside>
