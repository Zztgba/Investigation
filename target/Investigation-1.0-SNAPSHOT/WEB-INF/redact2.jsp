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
    <script language="JavaScript">
        function   appliy(){
            document.form1.method= "post";
            document.form1.action= "/paper/insertnext";
            document.form1.submit();
            return   true;
        }

        function   ali(){
            document.form1.method= "post ";
            document.form1.action= "/paper/completed";
            document.form1.submit();
            return   true;
        }

    </script>
</head>
<body>
<form name="form1">
<div id="content" style="padding:40px 100px 100px 100px">

    <ul>
        <li>
                <label>${Qno}、</label>
                <input type="text" name="question" value="" class="f_title" style="margin-bottom: 35px;"><br/><hr/>
                <label>A、</label><input type="text" name="allselect0" value="" class="f_answer" style="margin:15px 0;"><br/>
                <label>B、</label><input type="text" name="allselect1" value="" class="f_answer" style="margin:15px 0;"><br/>
                <label>C、</label><input type="text" name="allselect2" value="" class="f_answer" style="margin:15px 0;"><br/>
                <label>D、</label><input type="text" name="allselect3" value="" class="f_answer" style="margin:15px 0;"><br/>
        </li>
    </ul>

                <input type="submit" value="编辑下一题" style="float: left;width: 100px;text-align: center;height: 30px;line-height: 30px;margin:20px 0;" onclick="appliy()">
                <input type="submit" value="编辑完成" style="float: right;width: 100px;text-align: center;height: 30px;line-height: 30px;margin:20px 0;" onclick="ali()">

</div>
</form>
</body>
</html>