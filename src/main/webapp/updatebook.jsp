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
    	function removedis(){
    		$("form input").attr("disabled",false);
    		$("#btn1").attr("type","hidden");
    		$("#btn2").attr("type","button");
    	}
    	function submitform(){
    		if($("#notnull1").val().length<1){
    			$("#notnul1").html("不能为空");
    			return;
    		}
    		if($("#notnull2").val().length<1){
    			$("#notnul2").html("不能为空");
    			return;
    		}
    		if($("#notnull3").val().length<1){
    			$("#notnul3").html("不能为空");
    			return;
    		}
    		if($("#notnull4").val().length<1){
    			
    			$("#notnul4").html("不能为空");
    			return;
    		}
    		if($("#notnull5").val().length<1){
    			$("#notnul5").html("不能为空");
    			return;
    		}
    		if($("#notnull6").val().length<1){
    			$("#notnul6").html("不能为空");
    			return;
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

    <div class="formtitle"><span>修改书籍信息</span></div>
    
	<form name="form1" action="updatebook2" method="post">
	
    	<input name="bookid" type="hidden" value="${bkinfo.bookid }" />
    	
    <ul class="forminfo short">
    
        <li>
            <label>书名<b>*</b></label>
            <input  name="bookname" type="text" id="notnull1" value="${bkinfo.bookname }" /><i id="notnul1"></i>
        </li>
        <li>
            <label>作者<b>*</b></label>
            <input  name="bookauthor" type="text" id="notnull2" value="${bkinfo.bookauthor }" /><i id="notnul2"></i>
        </li>
        <li>
            <label>出版社<b>*</b></label>
            <input  name="bookpub" type="text" id="notnull3" value="${bkinfo.bookpub }" /><i id="notnul3"></i>
        </li>
        <li>
            <label>书籍类型<b>*</b></label>
            <div class="vocation">
                <select name="booksort" id="notnull4" class="select1">
                	
                    <c:forEach items="${bsort }" var="temp">
                    	<c:if test="${temp.sortid==bkinfo.booksort }">
                    		<option value="${temp.sortid }">${temp.sortname }</option>
                		</c:if>
                    </c:forEach>
                    
                    <c:forEach items="${bsort }" var="temp">
                    	<c:if test="${temp.sortid!=bkinfo.booksort }">
                    		<option value="${temp.sortid }">${temp.sortname }</option>
                		</c:if>
                    </c:forEach>
                    
                </select>
            </div><i id="notnul4"></i>
        </li>
       
        <li>
            <label>入库数量<b>*</b></label>
            <input  name="booknum" type="text" id="notnull5" value="${bkinfo.booknum }" /><i id="notnul5"></i>
        </li>
        <li>
            <label>书籍简介<b>*</b></label>
            <input  name="dec" type="text" id="notnull6" value="${bkinfo.dec }" /><i id="notnul6"></i>
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
