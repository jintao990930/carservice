<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/4/2
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/2/17
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sys" tagdir="/WEB-INF/tags/sys"%>
<html>
<head>
    <title>Car | 内容管理</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper">
    <jsp:include page="../includes/nav.jsp"></jsp:include>

    <jsp:include page="../includes/menu.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                内容管理
                <small></small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="/main"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">控制面板</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">

                    <c:if test="${baseResult != null}">
                        <div class="alert alert-${baseResult.status == 200 ? "success" : "danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                ${baseResult.message}
                        </div>
                    </c:if>

                    <div class="box box-info box-info-search" style="display: none;">
                        <div class="box-header">
                            <div class="box-title">
                                <h4>高级搜素</h4>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px;margin-bottom: 10px;padding-left: 10px;padding-right: 5px">
                            <div class="box-body">
                                <div class="row form-horizontal">
                                    <div class="col-xs-4">
                                        <div class="form-group">
                                            <label for="title" class="col-sm-3 control-label">标题</label>

                                            <div class="col-sm-8">
                                                <input id="title" class="form-control" placeholder="标题"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <div class="form-group">
                                            <label for="subTitle" class="col-sm-3 control-label">子标题</label>

                                            <div class="col-sm-8">
                                                <input id="subTitle" class="form-control" placeholder="子标题"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4">
                                        <div class="form-group">
                                            <label for="titleDesc" class="col-sm-3 control-label">标题描述</label>

                                            <div class="col-sm-8">
                                                <input id="titleDesc" class="form-control" placeholder="标题描述"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-12" style="padding-right: 50px">
                                        <button type="submit" class="btn btn-info pull-right" onclick="search()">搜索</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">内容列表</h3>
                        </div>

                        <div class="box-body">
                            <a href="/content/form" type="button" class="btn btn-sm btn-default"><i class="fa fa-plus"></i>新增</a>&nbsp;
                            <button type="button" class="btn btn-sm btn-default" onclick="App.deleteMulti('/content/delete')"><i class="fa fa-trash"></i>删除</button>&nbsp;
                            <%--                            <a href="#" type="button" class="btn btn-sm btn-default"><i class="fa fa-upload"></i>导入</a>&nbsp;--%>
                            <%--                            <a href="#" type="button" class="btn btn-sm btn-default"><i class="fa fa-download"></i>导出</a>--%>
                            <button type="button" class="btn btn-sm btn-default" onclick="$('.box-info-search').css('display')=='none' ? $('.box-info-search').show('fast') : $('.box-info-search').hide('fast')"><i class="fa fa-search"></i>搜索</button>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table id="dataTable" class="table table-hover">
                                <thead>
                                <tr>
                                    <th><input type="checkbox" class="minimal icheck_master" /></th>
                                    <th>ID</th>
                                    <th>父节点</th>
                                    <th>标题</th>
                                    <th>子标题</th>
                                    <th>标题描述</th>
                                    <th>链接</th>
                                    <th>图片1</th>
                                    <th>图片2</th>
                                    <th>更新时间</th>
                                    <td>操作</td>
                                </tr>
                                </thead>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="../includes/copyright.jsp" ></jsp:include>

    <jsp:include page="../includes/footer.jsp"></jsp:include>
    <%--自定义模态框--%>
    <sys:modal/>
    <script>
        var _dataTable;
        $(function () {
            var columns = [
                {
                    "data": function (row, type, val, meta) {
                        return '<input id="' + row.id + '" type="checkbox" class="minimal" /></td>&nbsp;'
                    }
                },
                {"data": "id"},
                {"data": "carContentCategory.name"},
                {"data": "title"},
                {"data": "subTitle"},
                {"data": "titleDesc"},
                {
                    "data": function (row, type, val, meta) {
                        if (row.url == null) {
                            return '';
                        }

                        return '<a href="' + row.url + '" target="_blank">查看</a>';
                    }
                },
                {
                    "data": function (row, type, val, meta) {
                        if (row.pic == null) {
                            return '';
                        }

                        return '<a href="' + row.pic + '" target="_blank">查看</a>';
                    }
                },
                {
                    "data": function (row, type, val, meta) {
                        if (row.pic2 == null) {
                            return '';
                        }

                        return '<a href="' + row.pic2 + '" target="_blank">查看</a>';
                    }
                },
                {
                    "data": function (row,type,val,meta) {
                        return DateTime.format(row.updated, "yyyy-MM-dd HH:mm:ss");
                    }
                },
                {
                    "data": function (row, type, val, meta) {
                        var detailUrl = "/content/detail?id=" + row.id;
                        return '<button type="button" class="btn btn-sm btn-default" onclick="App.showDetail(\'' + detailUrl + '\')"><i class="fa fa-search">查看</i></button>&nbsp;'+
                            '<a href="/content/form?id=' + row.id + '" type="button" class="btn btn-sm btn-primary"><i class="fa fa-edit">编辑</i></a>&nbsp;'
                        // '<a href="#" type="button" class="btn btn-sm btn-danger"><i class="fa  fa-trash">删除</i></a>&nbsp;'
                    }
                }
            ];
            _dataTable = App.initDataTables("/content/page",columns);
        });

        function search() {
            var title = $('#title').val();
            var subTitle = $('#subTitle').val();
            var titleDesc = $('#titleDesc').val();
            var param = {
                "title": title,
                "subTitle": subTitle,
                "titleDesc": titleDesc
            };
            _dataTable.settings()[0].ajax.data = param;
            _dataTable.ajax.reload();
        }


    </script>
</body>
</html>

