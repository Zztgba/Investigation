<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0022)http://blog.csdn.net/electroniXtar/ -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>在线问卷调查系统</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/images/logo.jpg">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/personal.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/personal.js"></script>
</head>
<body>
<div id="top">
    <h3>我的主页</h3>
    <div class="middle">
        <a href="${pageContext.request.contextPath }/paper/preinsert" target="_blank">
            <img src="${pageContext.request.contextPath }/images/bian.png"><span>发表问卷</span></a>
    </div>
    <div class="right">
        <a href="#"><img src="${pageContext.request.contextPath }/images/portrait.png"><span>${user.name}</span></a>
    </div>
</div>

<div id="content">
    <h4>已发表问卷</h4>
    <ul id="survey_title">
        暂无
    </ul>
</div>
</body>
</html>
