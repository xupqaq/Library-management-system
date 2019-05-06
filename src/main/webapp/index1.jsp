<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<script language="javascript" src="js/jquery.js"></script>
<html>
<head>
    <title>管理员登录</title>
<style type="text/css">
body{
background:url(images/welcome.jpg) no-repeat ;
background-size:100% 100%;
-moz-background-size:100% 100%;
}
</style>
    
    
    
<script type="text/javascript">
$(function(){
    $('.loginform').css({'position':'absolute','left':($(window).width()-471)/2,'top':($(window).height()-340)/2});
	$(window).resize(function(){  
    $('.loginform').css({'position':'absolute','left':($(window).width()-471)/2,'top':($(window).height()-340)/2});
    })  
});
</script>

</head>

<body>



<div class="loginform">
    <div class="col-md-4 column">
        <span id="labellogin">管理员系统登录</span><br>
        <div class="form-group">
            <input type="text" class="form-control" id="usernameinput" name="username" placeholder="用户名"/>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="passwordinput" name="password" placeholder="密码"/>
        </div>
        <button id="loginbutton" class="btn btn-primary" onclick="logincheck()">登录</button>
        <span class="errorsubmit" id="checkinfo"></span>
    </div>
</div>
</body>
</html>
