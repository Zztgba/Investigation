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
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>在线问卷调查系统</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/images/logo.jpg">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/survey.css">
</head>
<body>

<div id="header">
    <h2>${paper.title}</h2>
</div>
<div id="content">
    <form method="post" action="/paper/add">
        <input style="display: none" name="pid" value="${paper.pid}" readonly>
    <ul>
        <% int i = 1;%>
        <c:forEach begin="0" items="${questions}" var="ques">
            <li>
                <h4>${ques.question}</h4>

                <c:forEach begin="0" items="${answers}" var="answer">
                    <c:choose>
                        <c:when test="${answer.qid == ques.qid}">
                            <input type="radio" name="<%=i%>" value="${answer.aid}"/>${answer.ans}<br/>
                        </c:when>
                        <c:otherwise />
                    </c:choose>
                </c:forEach>

                <% i ++;%>
            </li>
        </c:forEach>
        <ul id="subm">
            <input type="submit" value="提交问卷">
        </ul>
    </ul>
    </form>
</div>
</body>
</html>
