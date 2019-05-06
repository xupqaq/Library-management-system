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
    	/* function removedis(){
    		$("form input").attr("disabled",false);
    		$("#btn1").attr("type","hidden");
    		$("#btn2").attr("type","button");
    	} */
    	
    	$(document).ready(function(){
        	$("input").focus(function(){
        		$("form i").html("");
        	})
    	})
    	
    	function submitform(){
    		if($("#name1").val().length<1){
    			$("#name2").html("姓名不能为空");
    			return;
    		}
    		
    		if($("#age1").val().length<1){
    			$("#age2").html("年龄不能为空");
    			return;
    		}
    		if($("#classno1").val().length<1){
    			$("#classno2").html("班级不能为空");
    			return;
    		}
    		if($("#phone1").val().length<1){
    			$("#phone2").html("电话不能为空");
    			return;
    		}
    		$("form").submit();
    	}
    </script>
    
</head>

<body>

<div class="formbody">

    <div class="formtitle"><span>修改用户信息</span></div>
    
	<form name="form1" action="updateuser1" method="post">
    	<input name="userid" type="hidden" value=${uuser.userid } />
    <ul class="forminfo short">
        <li>
            <label>姓名<b>*</b></label>
            <input name="uname" id="name1" type="text" value=${uuser.uname } /><i id="name2"></i>
        </li>
         <li>
            <label>性别<b>*</b></label>
            <cite>
            
                <input name="usex" type="radio" value="1" <c:if test="${uuser.usex==1}">checked="checked"</c:if> />&nbsp;男
                <input name="usex" type="radio" value="0" <c:if test="${uuser.usex==0}">checked="checked"</c:if> />&nbsp;女
              
            </cite>
         </li>
         <li>
            <label>年龄<b>*</b></label>
            <input name="uage" id="age1" type="text" value=${uuser.uage } /><i id="age2"></i>
        </li>
         <li>
            <label>班级<b>*</b></label>
            <input name="classno" id="classno1" type="text" value=${uuser.classno } /><i id="classno2"></i>
        </li>
         <li>
            <label>电话<b>*</b></label>
            <input name="phone" type="text" id="phone1" value=${uuser.phone } /><i id="phone2"></i>
        </li>
       
       
       
        <li style="width: 100%">
            <label>&nbsp;</label>
            
            <input id="btn2" onclick="submitform()" type="button" class="btn" value="确认修改"/>
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
