<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <title>首页</title>


    <!-- 新Bootstrap核心CSS文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    </script>


</head>
<body>



<div align="center" style="color: blue;font-size: 50px">高校人力资源管理系统</div>

<div align="center">

  <%--如果用户未登录, 显示登录按钮--%>
    <c:if test="${empty sessionScope.user}">
        <p style="font-size: large">您还未登录,请点击下方登录按钮</p>
        <li><a href="${pageContext.request.contextPath}/loginServlet" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">登录</a></li>
    </c:if>
    <%--如果用户已登录, 显示欢迎界面--%>
    <c:if test="${not empty sessionScope.user}">
        <div align="center" style="color: red;font-size: 40px">${user.name},欢迎您！！！</div>

        <li><a href="${pageContext.request.contextPath}/findUserByPageServlet" style="text-decoration:none;font-size:33px">点击此处进入系统页面</a></li>

    </c:if>


</div>

</body>
</html>