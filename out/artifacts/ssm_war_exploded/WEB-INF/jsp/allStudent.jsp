<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
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
                    <small>学生列表 —— 显示所有学生</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/student/toAddStudent">新增</a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>学生姓名</th>
                    <th>学生地址</th>
                    <th>学生成绩</th>
                    <th>备注</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="student" items="${requestScope.get('list')}">
                    <tr>
                        <td>${student.getName()}</td>
                        <td>${student.getAddress()}</td>
                        <td>${student.getScoreLevel()}</td>
                        <td>${student.getRemark()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/student/toUpdateStudent?id=${student.getId()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/student/deleteStudent?id=${student.getId()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
