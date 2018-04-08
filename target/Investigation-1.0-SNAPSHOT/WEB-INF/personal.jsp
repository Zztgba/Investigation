<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/common/taglib.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
        <a href="${pageContext.request.contextPath }/paper/preinsert" target="_blank"><img src="${pageContext.request.contextPath }/images/bian.png"><span>发表问卷</span></a>
    </div>
    <div class="right">
        <a href="#"><img src="${pageContext.request.contextPath }/images/portrait.png"><span>${user.name}</span></a>
    </div>
</div>

<div id="content">
    <h4>已发表问卷</h4>
    <ul id="survey_title">
    <c:choose>
        <c:when test="${paperlist ==null}">
            暂未添加任何问卷
        </c:when >
        <c:otherwise>
            <c:forEach begin="0" items="${paperlist}" var="paper">

                <li class="title_1" name="title_1">
                    <h3><a href="/user/paper?pid=${paper.pid}">${paper.title}</a><span class="date">发表日期：${paper.date}</span></h3>
                    <ul class="survey_answer">

                        <c:forEach begin="0" items="${queslist}" var="quest">
                            <c:choose>
                                <c:when test="${quest.pid == paper.pid}">
                                    <li>${quest.question}</li>
                                </c:when>
                                <c:otherwise />
                            </c:choose>

                        </c:forEach>

                    </ul>
                </li>

            </c:forEach>

        </c:otherwise>
    </c:choose>

    </ul>
</div>
</body>
</html>
