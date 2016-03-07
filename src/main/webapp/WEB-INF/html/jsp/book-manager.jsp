<%--
  Created by IntelliJ IDEA.
  User: chejingchi
  Date: 16/3/6
  Time: 下午6:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>图书管理系统</title>
    <link rel="stylesheet" type="text/css" href="${base}/dest/bootstrap/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${base}/dest/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${base}/dest/bootstrap/css/book-manager.css"/>
    <script src="${base}/dest/bootstrap/js/jquery-1.12.0.min.js"></script>
    <script src="${base}/dest/bootstrap/js/bootstrap.min.js"></script>
    <script src="${base}/dest/js/common/page.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myNav").affix({
                offset: {
                    top: 125
                }
            });
        });
        var user = ${obj.user};
    </script>
    <script src="${base}/dest/js/book-manager.js"></script>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
<div class="container">
    <div class="jumbotron">
        <h1>图书管理系统</h1>
        <blockquote class="pull-right margin-top-minus-fifth">
            <strong>Books are the ladder of human progress</strong>
            <small>Books are the ladder of human progress<cite>Gorky</cite></small>
        </blockquote>
    </div>
    <div class="row">
        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" id="myNav">
                <li class="active"><a href="#section-1">个人信息</a></li>
                <li><a href="#section-2">图书信息</a></li>
                <li><a href="#section-3">录入图书信息</a></li>
                <li><a href="#section-4">查看读者借阅图书情况</a></li>
                <li><a href="#section-5">借书处理</a></li>
                <li><a href="#section-6">还书处理</a></li>

            </ul>
        </div>
        <div class="col-xs-9">
            <h3 id="section-1">个人信息</h3>
            <div id="userInfo">

            </div>
            <hr>
            <h2 id="section-2">图书信息</h2>
            <div id="book-info-pager"></div>
            <hr>
            <h2 id="section-3">录入图书信息</h2>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">书籍编码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="请输入书籍编码">
                        </div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-4 control-label">书籍名称</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="请输入书籍名称">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">图书类别</label>
                        <div class="col-sm-8">
                            <select name="" id="" class="form-control">
                                <option value="1">小说</option>
                                <option value="2">散文</option>
                                <option value="3">漫画</option>
                                <option value="4">学习类</option>
                                <option value="5">人文类</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-4 control-label">书籍价格</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="请输入书籍价格">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入操作员">
                        </div>
                    </div>
                    <div class="margin-left-minus-fifty form-group col-sm-6">
                        <label class="col-sm-4 control-label">录入时间</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入时间">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">录入数量</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入数量">
                        </div>
                    </div>
                    <div class="margin-left-minus-fifty form-group col-sm-6">
                        <label class="col-sm-4 control-label">录入时间</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入时间">
                        </div>
                    </div>
                </form>
            </div>
            <div align="center">
                <button type="button" class="btn btn-default">图书入库</button>
            </div>

            <hr>
            <h2 id="section-4">查看读者借阅图书情况</h2>
            <div id="book-read-info-pager"></div>
            <hr>
            <h2 id="section-5">借书处理</h2>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">书籍编码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入书籍编码">
                        </div>
                    </div>
                    <div class="margin-left-minus-fifty form-group col-sm-6">
                        <label class="col-sm-4 control-label">借书证号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="借书证号">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入操作员">
                        </div>
                    </div>
                    <div class="margin-left-minus-fifty form-group col-sm-6">
                        <label class="col-sm-4 control-label">录入时间</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入时间">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入操作员">
                        </div>
                    </div>
                    <div class="margin-left-minus-fifty form-group col-sm-6">
                        <label class="col-sm-4 control-label">录入时间</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入时间">
                        </div>
                    </div>
                </form>
            </div>
            <div align="center">
                <button type="button" class="btn btn-default">图书借出</button>
            </div>
            <hr>
            <h2 id="section-6">还书处理</h2>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">书籍编码</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入书籍编码">
                        </div>
                    </div>
                    <div class="margin-left-minus-fifty form-group col-sm-6">
                        <label class="col-sm-4 control-label">借书证号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="借书证号">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入操作员">
                        </div>
                    </div>
                    <div class="margin-left-minus-fifty form-group col-sm-6">
                        <label class="col-sm-4 control-label">录入时间</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入时间">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <form class="form-horizontal" role="form">
                    <div class="form-group col-sm-6">
                        <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入操作员">
                        </div>
                    </div>
                    <div class="margin-left-minus-fifty form-group col-sm-6">
                        <label class="col-sm-4 control-label">录入时间</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" placeholder="录入时间">
                        </div>
                    </div>
                </form>
            </div>
            <div align="center">
                <button type="button" class="btn btn-default">图书借出</button>
            </div>
        </div>
    </div>
</div>
<!--模态框-->
<div class="modal fade" id="lendModal" tabindex="-1" role="dialog"
     aria-labelledby="lendModalLabel" aria-hidden="true">
    <div class="modal-dialog my-modal-width">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="lendModalLabel">
                    借书处理
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form class="form-horizontal" role="form">
                        <div class="form-group col-sm-6">
                            <label class="margin-left-minus-fifty col-sm-4 control-label">书籍编码</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入书籍编码">
                            </div>
                        </div>
                        <div class="margin-left-minus-fifty form-group col-sm-6">
                            <label class="col-sm-4 control-label">借书证号</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="借书证号">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row">
                    <form class="form-horizontal" role="form">
                        <div class="form-group col-sm-6">
                            <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入操作员">
                            </div>
                        </div>
                        <div class="margin-left-minus-fifty form-group col-sm-6">
                            <label class="col-sm-4 control-label">录入时间</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入时间">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row">
                    <form class="form-horizontal" role="form">
                        <div class="form-group col-sm-6">
                            <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入操作员">
                            </div>
                        </div>
                        <div class="margin-left-minus-fifty form-group col-sm-6">
                            <label class="col-sm-4 control-label">录入时间</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入时间">
                            </div>
                        </div>
                    </form>
                </div>
                <div align="center">
                    <button type="button" class="btn btn-default">图书借出</button>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="returnModal" tabindex="-1" role="dialog"
     aria-labelledby="returnModalLabel" aria-hidden="true">
    <div class="modal-dialog my-modal-width">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="returnModalLabel">
                    还书处理
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form class="form-horizontal" role="form">
                        <div class="form-group col-sm-6">
                            <label class="margin-left-minus-fifty col-sm-4 control-label">书籍编码</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入书籍编码">
                            </div>
                        </div>
                        <div class="margin-left-minus-fifty form-group col-sm-6">
                            <label class="col-sm-4 control-label">借书证号</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="借书证号">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row">
                    <form class="form-horizontal" role="form">
                        <div class="form-group col-sm-6">
                            <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入操作员">
                            </div>
                        </div>
                        <div class="margin-left-minus-fifty form-group col-sm-6">
                            <label class="col-sm-4 control-label">录入时间</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入时间">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row">
                    <form class="form-horizontal" role="form">
                        <div class="form-group col-sm-6">
                            <label class="margin-left-minus-fifty col-sm-4 control-label">录入操作员</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入操作员">
                            </div>
                        </div>
                        <div class="margin-left-minus-fifty form-group col-sm-6">
                            <label class="col-sm-4 control-label">录入时间</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="录入时间">
                            </div>
                        </div>
                    </form>
                </div>
                <div align="center">
                    <button type="button" class="btn btn-default">图书借出</button>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="book-detail-info" tabindex="-1" role="dialog"
     aria-labelledby="bookDetailInfoLabel" aria-hidden="true">
    <div class="modal-dialog my-modal-width">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="bookDetailInfoLabel">
                    还书处理
                </h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>

</body>
</html>

