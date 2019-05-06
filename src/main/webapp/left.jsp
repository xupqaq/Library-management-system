<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>图书</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/font/iconfont.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery/jquery.1.11.2.min.js"></script>

    <script type="text/javascript">
        $(function () {
            //导航切换
            $(".menuson li").click(function () {
                $(".menuson li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function () {
                var $ul = $(this).next('ul');
                $('dd').find('ul').slideUp();
                if ($ul.is(':visible')) {
                    $(this).next('ul').slideUp();
                } else {
                    $(this).next('ul').slideDown();
                }
            });
        })
    </script>
</head>

<body>
<div class="lefttop">
    <a href="main.jsp" target="_parent">菜单</a>
</div>
<dl class="leftmenu">
	<c:if test="${sysuser.status!=null }">
    <dd>
        <div class="title">
            <span class="iconfont icon-shouye"></span>首页
        </div>
        <ul class="menuson">
        
        	<li class="active">
                <a href="index.jsp" target="rightFrame">公告</a>
                <i></i>
            </li>
            <li>
                <a href="getHostBook" target="rightFrame">热门图书</a>
                <i></i>
            </li>
            <li>
                <a href="getAllBook" target="rightFrame">图书列表</a>
                <i></i>
            </li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span class="iconfont icon-liebiao"></span>个人信息
        </div>
        <ul class="menuson">
        	<li><a href="borrowlist" target="rightFrame">已借书籍</a></li>
            <li><a href="myborrow" target="rightFrame">借书记录</a></li>
            <li><a href="myform.jsp" target="rightFrame">我的信息</a></li>
            <li><a href="updatePwd.jsp" target="rightFrame">修改密码</a></li>
            <!-- <li><a href="imglist.jsp" target="rightFrame">图片网格</a></li>
            <li><a href="imglist1.jsp" target="rightFrame">图片自定义</a></li>
            <li><a href="tools.jsp" target="rightFrame">常用工具</a></li>
            <li><a href="filelist.jsp" target="rightFrame">文件管理</a></li>
            <li><a href="computer.jsp" target="rightFrame">我的电脑</a></li> -->
        </ul>
    </dd>
    
    <c:if test="${sysuser.status!=2 }">
    <dd>
        <div class="title">
            <span class="iconfont icon-wodebiaodan"></span>图书管理
        </div>
        <ul class="menuson">
            <li><a href="mngrAllBook" target="rightFrame">图书列表</a></li>
            <li><a href="getsort" target="rightFrame">图书类别</a></li>
        </ul>
    </dd></c:if>
    
    <c:if test="${sysuser.status==0 }">
    <dd>
        <div class="title">
            <span class="iconfont icon-wodebiaodan"></span>用户管理
        </div>
        <ul class="menuson">
            <li><a href="getuser" target="rightFrame">用户列表</a></li>
            <li><a href="error.jsp" target="rightFrame">待开发</a></li>
        </ul>
    </dd>
    </c:if>
    <!-- <dd>
        <div class="title">
            <span class="iconfont icon-qita1"></span>其他设置
        </div>
        <ul class="menuson">
            <li><a href="error.jsp" target="rightFrame">404页面</a></li>
            <li><a href="login.jsp" target="rightFrame">登陆页面</a></li>
        </ul>
    </dd> -->
    </c:if>
</dl>

</body>
</html>
