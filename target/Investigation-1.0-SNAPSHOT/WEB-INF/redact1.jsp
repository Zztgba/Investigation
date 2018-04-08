<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/redact.css">
</head>
<body>
<form action="/paper/insert" method="post">
<div id="header">
    <div class="header_main" style="width: 850px;margin:0 auto;">
        <label class="title">标题:</label>
        <input type="text" name="title" value="">
        <select name="type" style="width:100px;height: 30px;">
            <option value="shmy" selected="">社会民意</option>
            <option value="ppyx">品牌营销</option>
            <option value="cpcs">产品测试</option>
            <option value="xfzfx">消费者分析</option>
            <option value="myddc">满意度调查</option>
            <option value="rlzy">人力资源</option>
            <option value="xsjy">学术教育</option>
            <option value="others">其他</option>
        </select>
    </div>
</div>
<div id="content" style="padding:40px 100px 100px 100px">

    <ul>
        <li>
                <label>1、</label>
                <input type="text" name="question" value="" class="f_title" style="margin-bottom: 35px;"><br/><hr/>
                <label>A、</label><input type="text" name="allselect0" value="" class="f_answer" style="margin:15px 0;"><br/>
                <label>B、</label><input type="text" name="allselect1" value="" class="f_answer" style="margin:15px 0;"><br/>
                <label>C、</label><input type="text" name="allselect2" value="" class="f_answer" style="margin:15px 0;"><br/>
                <label>D、</label><input type="text" name="allselect3" value="" class="f_answer" style="margin:15px 0;"><br/>
        </li>
    </ul>

                <input type="submit" value="编辑下一题" style="float: left;width: 100px;text-align: center;height: 30px;line-height: 30px;margin:20px 0;">



</div>
</form>
</body>
</html>