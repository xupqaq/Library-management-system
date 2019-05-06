<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎登录图书管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link href="js/3rd/validate/validationEngine.jquery.css" rel="stylesheet" type="text/css"/>
    
<%
	String error = (String)request.getAttribute("logerror");
	if(null!=error){
		%><script language="javascript">alert("<%=error%>")</script><%
	}
%>
    
   <script type="text/javascript">
   		function subform(){
   			var name = $("input[name='userid']").val();
   			var pwd = $("input[name='upwd']").val();
   			if(name.length<1){
   				$("#errinfo1").html("账户不能为空");
				$("#errinfo1").css("color","red");
   				return ;
   			}
   			if(pwd.length<1){
   				$("#errinfo2").html("密码不能为空");
				$("#errinfo2").css("color","red");
   				return ;
   			}
   			var url = "checkuser?uname="+name+"&upwd="+pwd;
   			$.get(url,function(date){
   				if(date.length==6){
   					$("#loginForm").submit();
   				}else{
   					$("#errinfo2").html("用户名或密码错误");
   					$("#errinfo2").css("color","red");
   				}
   			})
   		}
   		
   		
   
   </script>
    
</head>
<body id="loginBody">
<div id="mainBody">
    <div id="cloud1" class="cloud"></div>
    <div id="cloud2" class="cloud"></div>
</div>
<div class="loginbody">
    <span class="systemlogo">图书管理系统</span>
    <form name="loginForm" id="loginForm" action="loginSys" method="post">
        <div class="loginbox">
            <ul>
                <li>
                    <input id="removeerr" name="userid" type="text" class="loginuser" placeholder="学号"/><i id="errinfo1"></i>
                </li>
                <li>
                    <input id="removeerr" name="upwd" type="password" class="loginpwd" placeholder="密码"/><i id="errinfo2"></i>
                </li>
                <li>
                    <input type="button" onclick="subform()" class="loginbtn" value="登录"/>
                </li>
            </ul>
        </div>
    </form>
</div>
<div class="loginbm">Xupeng @2019 学习交流</div>
</body>
</html>
<script type="text/javascript" src="js/jquery/jquery.1.11.2.min.js"></script>
<script type="text/javascript" src="js/cloud.js"></script>
<!--表单验证插件-->
<script type="text/javascript" src="js/3rd/validate/jquery.validationEngine.js"></script>
<script type="text/javascript" src="js/3rd/validate/jquery.validationEngine-zh_CN.js"></script>
<script language="javascript">
    $(function () {
        //position
        $(window).resize(function () {
            $('.loginbox').css({'position': 'absolute', 'left': ($(window).width() - 420) / 2});
        })
        
        
        //
        $('input[type="text"],input[type="password"]').on('click', function () {
            $(this).val('');
            $("form i").html("");
        });
        //
        $("#loginForm").validationEngine({
            promptPosition: 'topLeft',
            autoHidePrompt: true,
            autoHideDelay: 3000,
            showOneMessage: true
        });
    });
    
   
</script>