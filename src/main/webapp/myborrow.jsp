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
	String error = (String)request.getSession().getAttribute("returnbk");
	if(null!=error){
		%><script>alert("<%=error%>")</script><%
		request.getSession().removeAttribute("returnbk");
	}
	%>
    
</head>

<body>


<div class="rightinfo">
    <ul class="seachform">
        <li>
            <label>综合查询</label>
            <input name="" type="text" class="scinput"/>
        </li>
        <li>
            <label>指派</label>
            <div class="vocation">
                <select class="select3">
                    <option>全部</option>
                    <option>其他</option>
                </select>
            </div>
        </li>
        <li>
            <label>重点客户</label>
            <div class="vocation">
                <select class="select3">
                    <option>全部</option>
                    <option>其他</option>
                </select>
            </div>
        </li>
        <li>
            <label>客户状态</label>
            <div class="vocation">
                <select class="select3">
                    <option>全部</option>
                    <option>其他</option>
                </select>
            </div>
        </li>
        <li>
            <label>&nbsp;</label>
            <input name="" type="button" class="scbtn" value="查询"/>
        </li>
    </ul>


    <table class="tablelist">
        <thead>
            <tr>
                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                <th>编号<i class="sort"><img src="images/px.png"/></i></th>
                <th>书名</th>
                <th>借书时间</th>
                <th>还书时间</th>
                <th>实际还书时间</th>
                <th>是否还书</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list }" var ="temp">
            <tr>
                <td><input name="" type="checkbox" value=""/></td>
                <td>${temp.borrowid }</td>
                <td>
                	<c:forEach items="${bkname }" var = "bk">
                		<c:if test="${bk.bookid == temp.bookid }">${bk.bookname }</c:if>
                	</c:forEach>
                </td>
                <td><fmt:formatDate value="${temp.borrowtime }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                <td><fmt:formatDate value="${temp.returntime }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                <td><fmt:formatDate value="${temp.realreturntime }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                <td>
               	<c:if test="${temp.isreturn ==0}"><span>否</span></c:if>
               	<c:if test="${temp.isreturn >0}"><span>是</span></c:if>
                </td>
                <td>
               	<c:if test="${temp.isreturn ==0}"><a href="returnbooks?borrowid=${temp.borrowid }&bookid=${temp.bookid }" class="tablelink">还书</a></c:if>
               	<c:if test="${temp.isreturn >0}"><span>还书</span></c:if>
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
        	<li class="paginItem"><a href="myborrow?cpage=${pageInfo.pageNum-1 }"><span class="pagepre"></span></a></li>
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
            	<li class="paginItem"><a href="myborrow?cpage=${pageInfo.pageNum+1 }"><span class="pagenxt"></span></a></li>
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
