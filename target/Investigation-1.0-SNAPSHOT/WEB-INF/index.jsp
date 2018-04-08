<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0022)http://blog.csdn.net/electroniXtar/ -->
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>在线问卷调查系统</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/images/logo.jpg">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
</head>
<body>
<div id="header">
    <h2><img src="${pageContext.request.contextPath }/images/logo.jpg">在线问卷调查系统</h2>
</div>
<div id="content">
    <ul>
        <li class="write"><a href="${pageContext.request.contextPath }/user/preinsert" target="_blank"><img src="${pageContext.request.contextPath }/images/write.png"></a></li>
        <li class="full"><a href="${pageContext.request.contextPath}/paper/list" target="_blank"><img src="${pageContext.request.contextPath }/images/fill.png"></a></li>
    </ul>
</div>
</body>
</html>