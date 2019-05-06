<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="js/3rd/select/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="js/3rd/select/select-ui.min.js"></script>
    
    <%
	String error = (String)request.getSession().getAttribute("borrowerr");
	if(null!=error){
		%><script>alert("<%=error%>")</script><%
		request.getSession().removeAttribute("borrowerr");
	}
	%>
    
</head>

<body>


<div class="rightinfo">
    <div class="tools">
        <ul class="toolbar">
            <a href="addbook.jsp"><li><span><img src="images/t01.png"/></span>添加</li></a>
            
        </ul>
        <ul class="toolbar1">
            <li><span><img src="images/t05.png"/></span>设置</li>
        </ul>
    </div>


    <table class="tablelist">
        <thead>
            <tr>
                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                <th>编号<i class="sort"><img src="images/px.png"/></i></th>
                <th>用户名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>班级</th>
                <th>电话</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list }" var ="temp">
            <tr>
                <td><input name="" type="checkbox" value=""/></td>
                <td>${temp.userid }</td>
                <td>${temp.uname }</td>
                <td>
                	<c:if test="${temp.usex==1}">男</c:if>
                	<c:if test="${temp.usex==0}">女</c:if>
                </td>
                <td>${temp.uage }</td>
                <td>${temp.classno }</td>
                <td>${temp.phone }</td>
                <td>
               	<a href="updateuser?userid=${temp.userid }" class="tablelink">修改</a>
                </td>
            </tr>
	</c:forEach>
        </tbody>
    </table>

    <div class="pagin">
        <div class="message">共<i class="blue">${pageInfo.total }</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum }/${pageInfo.pages }&nbsp;</i>页</div>
        <ul class="paginList">
        
        <c:if test="${pageInfo.pageNum<=1 }">
        	<li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        </c:if>
         <c:if test="${pageInfo.pageNum>1 }">
        	<li class="paginItem"><a href="getuser?cpage=${pageInfo.pageNum-1 }"><span class="pagepre"></span></a></li>
        </c:if>
            
            <li class="paginItem current"><a href="javascript:;">${pageInfo.pageNum }</a></li>
            <!-- <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li> -->
            
            <c:if test="${pageInfo.pages==pageInfo.pageNum }">
            	<li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
            </c:if>
             <c:if test="${pageInfo.pages>pageInfo.pageNum }">
            	<li class="paginItem"><a href="getuser?cpage=${pageInfo.pageNum+1 }"><span class="pagenxt"></span></a></li>
            </c:if>
            
        </ul>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        $('.tablelist tbody tr:odd').addClass('odd');
        //下拉框的样式设置
        $(".select1").uedSelect({
            width: 345
        });
        $(".select2").uedSelect({
            width: 167
        });
        $(".select3").uedSelect({
            width: 100
        });
    });
</script>

</body>
</html>
