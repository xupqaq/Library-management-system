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
	
	<script type="text/javascript">
	
		function gonext(cpage){
			$("input[name='cpage']").val(cpage);
			$("form").submit();
		}
	
	</script>
    
</head>

<body>


<div class="rightinfo">
<form action="getHostBook" method="post">
	<input type="hidden" name="cpage" value="" />
    <ul class="seachform">
        <li>
            <label>书名</label>
            <input name="bookName" value="${sea.bookName }" type="text" class="scinput"/>
        </li>
        <li>
            <label>作者</label>
            <input name="author" value="${sea.author }" type="text" class="scinput"/>
        </li>
        
        <li>
            <label>书籍类型</label>
            <div class="vocation">
                <select name="bookSort" class="select3">
                	<c:forEach items="${bsort }" var="temp">
                    	<c:if test="${temp.sortid==sea.bookSort }">
                    		<option value="${temp.sortid }">${temp.sortname }</option>
                		</c:if>
                    </c:forEach>
                    <option value="">全部</option>
                    <c:forEach items="${bsort }" var="temp">
                    	<c:if test="${temp.sortid!=sea.bookSort }">
                    		<option value="${temp.sortid }">${temp.sortname }</option>
                		</c:if>
                    </c:forEach>
                </select>
            </div>
        </li>
        
        <li>
            <label>&nbsp;</label>
            <input name="" type="submit" class="scbtn" value="查询"/>
        </li>
    </ul>
</form>


    <table class="tablelist">
        <thead>
            <tr>
                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                <th>编号<i class="sort"><img src="images/px.png"/></i></th>
                <th>书名</th>
                <th>作者</th>
                <th>出版社</th>
                <th>类别</th>
                <th>库存</th>
                <th>借阅次数</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list }" var ="temp">
            <tr>
                <td><input name="" type="checkbox" value=""/></td>
                <td>${temp.bookid }</td>
                <td>${temp.bookname }</td>
                <td>${temp.bookauthor }</td>
                <td>${temp.bookpub }</td>
                <td><c:forEach items="${bsort }" var="bs">
                    	<c:if test="${temp.booksort==bs.sortid }">
                    		${bs.sortname }
                		</c:if>
                    </c:forEach>
                </td>
                <td>${temp.booknum }</td>
                <td>${temp.borrownum }</td>
                <td>
               	<c:if test="${temp.booknum >0}"><a href="borrowbooks?bookid=${temp.bookid }" class="tablelink">借阅</a></c:if>
               	<c:if test="${temp.booknum ==0}"><span>借阅</span></c:if>
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
        	<li class="paginItem"><a onclick="gonext(${pageInfo.pageNum-1 })" href="javascript:;"><span class="pagepre"></span></a></li>
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
            	<li class="paginItem"><a onclick="gonext(${pageInfo.pageNum+1 })" href="javascript:;"><span class="pagenxt"></span></a></li>
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
