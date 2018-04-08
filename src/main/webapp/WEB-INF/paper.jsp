<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/common/taglib.jsp"%>
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
    <ul>
        <c:forEach begin="0" items="${questionlist}" var="ques">
            <li>
                <h4>${ques.question}</h4>

                <c:forEach begin="0" items="${answerlist}" var="answer">
                    <c:choose>
                        <c:when test="${answer.qid == ques.qid}">
                            <input type="radio" name="" value="${answer.aid}" readonly/>${answer.ans}<br/>
                            该选项占总比例:${answer.answernum}/${paper.pnum}<br>
                        </c:when>
                        <c:otherwise />
                    </c:choose>
                </c:forEach>

            </li>
        </c:forEach>
        <ul id="subm">
            <input type="button" value="返回">
            <script type="text/javascript">
                var oSub_2=document.getElementById("subm");
                oSub_2.onclick=function () {
                    window.history.back();
                }
            </script>
        </ul>
    </ul>
    </form>
</div>
</body>
</html>
