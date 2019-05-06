<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery/jquery.1.11.2.min.js"></script>
</head>

<body>

<div class="rightinfo">
    <div class="tools">
        <ul class="toolbar">
            <a href="addsort.jsp"><li><span><img src="images/t01.png"/></span>添加</li></a>
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
                <th>类别名称</th>
                <th>添加时间</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${pageInfo.list }" var ="temp">
            <tr>
                <td><input name="" type="checkbox" value=""/></td>
                <td>${temp.sortid }</td>
                 <td>${temp.sortname }</td>
                <td><fmt:formatDate value="${temp.addtime }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                <td>
               	<a href="updatesort?sortid=${temp.sortid }&sortname=${temp.sortname }" class="tablelink">修改</a>
               	<a href="delsort?sortid=${temp.sortid }" onclick="if(confirm('确认删除?')==false){return false;}" class="tablelink">删除</a>
                </td>
            </tr>
	</c:forEach>

        </tbody>
    </table>

    <!-- 分页块 -->
    <div class="pagin">
        <div class="message">共<i class="blue">${pageInfo.total }</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum }/${pageInfo.pages }&nbsp;</i>页</div>
        <ul class="paginList">
            
        <c:if test="${pageInfo.pageNum<=1 }">
        	<li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        </c:if>
         <c:if test="${pageInfo.pageNum>1 }">
        	<li class="paginItem"><a href="getsort?cpage=${pageInfo.pageNum-1 }"><span class="pagepre"></span></a></li>
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
            	<li class="paginItem"><a href="getsort?cpage=${pageInfo.pageNum+1 }"><span class="pagenxt"></span></a></li>
            </c:if>
            
        </ul>
    </div>

    <!-- 提示对话框 -->
    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>
        <div class="tipinfo">
            <span><img src="images/ticon.png"/></span>
            <div class="tipright">
                <p>是否确认对信息的修改 ？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>
        <div class="tipbtn">
            <input name="" type="button" class="sure" value="确定"/>&nbsp;
            <input name="" type="button" class="cancel" value="取消"/>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        //给偶数行加上颜色
        $('.tablelist tbody tr:odd').addClass('odd');
        //提示框弹出事件
        $('.toolbar').find('li').on('click', function(){
            $(".tip").fadeIn(200);
        });
        //提示框影藏
        $(".tiptop a").click(function () {
            $(".tip").fadeOut(200);
        });

        $(".sure").click(function () {
            $(".tip").fadeOut(100);
        });

        $(".cancel").click(function () {
            $(".tip").fadeOut(100);
        });
    });
</script>

</body>
</html>
