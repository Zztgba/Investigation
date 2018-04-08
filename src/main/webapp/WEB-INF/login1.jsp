<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://blog.csdn.net/electroniXtar/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>在线问卷调查系统</title>
    <link rel="shortcut icon" type="/image/x-icon" href="${pageContext.request.contextPath }/images/logo.jpg">
    <link href="${pageContext.request.contextPath }/css/login.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/login.js"></script>
</head>

<body>
<div class="left">
    <img src="${pageContext.request.contextPath }/images/logo.jpg">
</div>
<div class="right">
    <ul class="relog">
        <li id="log">注册</li>
        <li id="re">登录</li>
    </ul>
    <div id="main">
        <form name="formInsert" action="${pageContext.request.contextPath }/user/insert" method="post">
            <input type="text" id="uname" placeholder="用户名已存在" class="name" name="name">
            <input type="text" placeholder="手机号" class="name" name="phonenumber">
            <input type="text" placeholder="输入常用邮件" class="mail" name="email">
            <input type="password" placeholder="请输入密码" class="password" name="password">
            <input type="password" placeholder="确认密码" class="password" name="password1">
            <input type="submit" value="登录" class="login">
        </form>
    </div>
    <div id="main1">
        <form action="${pageContext.request.contextPath }/user/login" method="post">
            <input type="text" placeholder="用户名/手机号" class="name" name="name">
            <input type="text" placeholder="请输入密码" class="password" name="password">
            <input type="checkbox" placeholder="记住密码" class="remember"><span class="ck1"><a href="#">记住密码</a></span><span class="ck2"><a href="#">忘记密码？</a></span>
            <input type="submit" value="登录" class="login">
        </form>
        <div class="other">
            <img src="${pageContext.request.contextPath }/images/line.png"><span class="title">用其他方式登录</span><img src="${pageContext.request.contextPath }/images/line.png">
            <div class="software">
                <a href="#"><img src="${pageContext.request.contextPath }/images/qq.png"></a>
                <a href="#"><img src="${pageContext.request.contextPath }/images/wechat.png"></a>
                <a href="#"><img src="${pageContext.request.contextPath }/images/microblog.png"></a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
<script type="text/javascript">

    var re;
    var ss=document.getElementsByName('phonenumber')[0];
    re= /^(13[0-9]{9})|(15[89][0-9]{8})$/
    ss.onblur = function () {
        if(re.test(ss.value)){}
        else
        {
            alert("请输入正确的手机号码！");
        }
    }

    var oPass=document.getElementsByName('password')[0];

    oPass.onblur=function () {
        if(oPass.value=="" || oPass.value==null){
            alert("请输入密码");
        }
    }

    var oPass1=document.getElementsByName('password1')[0];
    oPass1.onblur=function (){
        if(oPass.value!=oPass1.value){
            alert('输入的密码不一样！');
        }
    }



</script>