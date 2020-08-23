<%--
  Created by IntelliJ IDEA.
  User: huxiaopeng
  Date: 2020/8/19
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增学生</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增学生</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/student/addStudent" method="post">
        学生姓名：<input type="text" name="name"><br><br><br>
        学生地址：<input type="text" name="address"><br><br><br>
        学生成绩：<input type="text" name="scoreLevel"><br><br><br>
        备注：<input type="text" name="remark"><br><br><br>
        <input type="submit" value="添加">
    </form>

</div>
