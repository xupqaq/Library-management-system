<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="js/3rd/select/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="js/3rd/select/select-ui.min.js"></script>
    
    <script type="text/javascript">
    	
    	 function submitform(){
    		var p1 = $("#pwd1").val();
    		var old = $("#old1").val();
    		var p2 = $("#pwd2").val();
    		if(old.length<1){
    			$("#old").html("旧密码不能为空");
    			return ;
    		}
    		if(p1.length<6 || p1.length>16){
				$("#new1").html("新密码不符合要求（6-12位）");
				return ;
			}
    		if(p2.length<6 || p2.length>16){
				$("#new2").html("新密码不符合要求（6-12位）");
				return ;
			}
    		if(p1!=p2){
				$("#new2").html("两次输入的密码不同！");
				return ;
			}
    		$("form").submit();
    	} 
    	
    	$(document).ready(function(){
        	$("input").focus(function(){
        		$("form i").html("");
        	})
    	})
    </script>
    
    <%
	String error = (String)request.getAttribute("isupdate");
	if(null!=error){
		%><script>alert("<%=error%>")</script><%
	}
	%>
    
</head>

<body>

<div class="formbody">

    <div class="formtitle"><span>修改密码</span></div>
    
	<form name="form1" action="updatePwd" method="post">
    <ul class="forminfo short">
        <li>
            <label>旧密码<b>*</b></label>
            <input id="old1"  name="userid" type="text" value="" /><i id="old"></i>
        </li>
         
         <li>
            <label>新密码<b>*</b></label>
            <input id="pwd1"  name="upwd" type="text" value="" /><i id="new1"></i>
        </li>
         <li>
            <label>确认新密码<b>*</b></label>
            <input id="pwd2"  name="classno" type="text" value="" /><i id="new2"></i>
        </li>
        
       
       
       
        <li style="width: 100%">
            <label>&nbsp;</label>
            <input id="btn" onclick="submitform()" type="button" class="btn" value="确认修改"/>
        </li>
    </ul>
    
    </form>
</div>

<script type="text/javascript">
    $(function(){
        //下拉框的样式设置
        $(".select1").uedSelect({
            width: 100
        });
    });
</script>

</body>
</html>
