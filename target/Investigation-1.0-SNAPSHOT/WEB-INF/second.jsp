<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/second.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/second.js"></script>
</head>
<body>
<div id="header">
    <h2><img src="${pageContext.request.contextPath }/images/logo.jpg">在线问卷调查系统</h2>
</div>
<div id="container">
    <h3>问卷分类</h3>
    <ul id="nav">
        <li class="active">社会民意</li>
        <li>品牌营销</li>
        <li>产品测试</li>
        <li>消费者分析</li>
        <li>满意度调查</li>
        <li>人力资源</li>
        <li>学术教育</li>
        <li>其他</li>
    </ul>

    <div id="content">
        <ul class="show">
        <c:forEach begin="0" items="${paperlist}" var="paper">
            <c:if test="${paper.type == 'shmy'}">
                <li>
                    <a href="${pageContext.request.contextPath }/paper/details?pid=${paper.pid}">${paper.title}</a>
                    <span class="data">填写量：${paper.pnum}</span>
                    <span class="date">发表日期：${paper.date}</span>
                </li>
            </c:if>
        </c:forEach>
        </ul>
       <ul>
           <c:forEach begin="0" items="${paperlist}" var="paper">
            <c:if test="${paper.type == 'ppyx'}">
                <li>
                    <a href="${pageContext.request.contextPath }/paper/details?pid=${paper.pid}">${paper.title}</a>
                    <span class="data">填写量：${paper.pnum}</span>
                    <span class="date">发表日期：${paper.date}</span>
                </li>
            </c:if>
           </c:forEach>
        </ul>
        <ul>
            <c:forEach begin="0" items="${paperlist}" var="paper">
            <c:if test="${paper.type == 'cpcs'}">
                <li>
                    <a href="${pageContext.request.contextPath }/paper/details?pid=${paper.pid}">${paper.title}</a>
                    <span class="data">填写量：${paper.pnum}</span>
                    <span class="date">发表日期：${paper.date}</span>
                </li>
            </c:if>
            </c:forEach>
        </ul>
        <ul>
            <c:forEach begin="0" items="${paperlist}" var="paper">
            <c:if test="${paper.type == 'xfzfx'}">
                <li>
                    <a href="${pageContext.request.contextPath }/paper/details?pid=${paper.pid}">${paper.title}</a>
                    <span class="data">填写量：${paper.pnum}</span>
                    <span class="date">发表日期：${paper.date}</span>
                </li>
            </c:if>
            </c:forEach>
        </ul>
        <ul>
            <c:forEach begin="0" items="${paperlist}" var="paper">
            <c:if test="${paper.type == 'myddc'}">
                <li>
                    <a href="${pageContext.request.contextPath }/paper/details?pid=${paper.pid}">${paper.title}</a>
                    <span class="data">填写量：${paper.pnum}</span>
                    <span class="date">发表日期：${paper.date}</span>
                </li>
            </c:if>
            </c:forEach>
        </ul>
        <ul>
            <c:forEach begin="0" items="${paperlist}" var="paper">
            <c:if test="${paper.type == 'rlzy'}">
                <li>
                    <a href="${pageContext.request.contextPath }/paper/details?pid=${paper.pid}">${paper.title}</a>
                    <span class="data">填写量：${paper.pnum}</span>
                    <span class="date">发表日期：${paper.date}</span>
                </li>
            </c:if>
            </c:forEach>
        </ul>
        <ul>
            <c:forEach begin="0" items="${paperlist}" var="paper">
            <c:if test="${paper.type == 'xsjy'}">
                <li>
                    <a href="${pageContext.request.contextPath }/paper/details?pid=${paper.pid}">${paper.title}</a>
                    <span class="data">填写量：${paper.pnum}</span>
                    <span class="date">发表日期：${paper.date}</span>
                </li>
            </c:if>
            </c:forEach>
        </ul>
        <ul>
            <c:forEach begin="0" items="${paperlist}" var="paper">
            <c:if test="${paper.type == 'others'}">
                <li>
                    <a href="${pageContext.request.contextPath }/paper/details?pid=${paper.pid}">${paper.title}</a>
                    <span class="data">填写量：${paper.pnum}</span>
                    <span class="date">发表日期：${paper.date}</span>
                </li>
            </c:if>
            </c:forEach>
        </ul>

    </div>
</div>
</body>
</html>
