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
    		var old1 = $("#old1").val();
    		if(old1.length<1){
    			$("#old").html("图书类别名称不能为空");
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
    
    
    
</head>

<body>

<div class="formbody">

    <div class="formtitle"><span>添加图书类别</span></div>
    
	<form name="form1" action="addsort" method="post">
    <ul class="forminfo short">
        <li>
            <label>图书类别名称<b>*</b></label>
            <input id="old1"  name="sortname" type="text" value="" /><i id="old"></i>
        </li>
         
        
        
       
       
       
        <li style="width: 100%">
            <label>&nbsp;</label>
            <input id="btn" onclick="submitform()" type="button" class="btn" value="确认添加"/>
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
