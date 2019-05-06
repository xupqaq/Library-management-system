<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery/jquery.1.11.2.min.js"></script>

    <!--fancybox-->
    <link href="js/3rd/fancybox/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/3rd/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
    <script type="text/javascript" src="js/3rd/fancybox/jquery.easing-1.3.pack.js"></script><!--可选 - 如果需要用到fancy transition-->
    <script type="text/javascript" src="js/3rd/fancybox/jquery.mousewheel-3.0.4.pack.js"></script><!--可选 - 如果需要支持鼠标滚轮滚动效果-->
</head>


<body>


<div class="rightinfo">
    <div class="tools">
        <ul class="toolbar">
            <li class="click"><span><img src="images/t01.png"/></span>添加</li>
            <li class="click"><span><img src="images/t02.png"/></span>修改</li>
            <li><span><img src="images/t03.png"/></span>删除</li>
            <li><span><img src="images/t04.png"/></span>统计</li>
        </ul>
        <ul class="toolbar1">
            <li><span><img src="images/t05.png"/></span>设置</li>
        </ul>
    </div>

    <table class="imgtable">
        <thead>
            <tr>
                <th width="100px;">缩略图</th>
                <th>标题</th>
                <th>栏目</th>
                <th>权限</th>
                <th>发布人</th>
                <th>是否审核</th>
                <th>点击</th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <td class="imgtd"><a rel="group1" href="images/img11.png" class="fancybox"><img src="images/img11.png" /></a></td>
                <td><a href="#">非常不错的国外后台模板，支持HTML5</a>

                    <p>发布时间：2013-10-12 09:25:18</p></td>
                <td>后台界面<p>ID: 82122</p></td>
                <td>开放浏览</td>
                <td>admin</td>
                <td>已审核</td>
                <td>128</td>
            </tr>

            <tr>
                <td class="imgtd"><a rel="group1" href="images/img12.png" class="fancybox"><img src="images/img12.png"/></a></td>
                <td><a href="#">一套简约形状图标UI下载</a>

                    <p>发布时间：2013-10-12 09:25:18</p></td>
                <td>图标设计<p>ID: 82122</p></td>
                <td>开放浏览</td>
                <td>uimaker</td>
                <td><i>未审核</i></td>
                <td>235</td>
            </tr>

            <tr>
                <td class="imgtd"><img src="images/img13.png"/></td>
                <td><a href="#">配色软件界面设计PSD下载</a>

                    <p>发布时间：2013-10-12 09:25:18</p></td>
                <td>软件界面<p>ID: 82122</p></td>
                <td>开放浏览</td>
                <td>admin</td>
                <td>已审核</td>
                <td>100</td>
            </tr>

            <tr>
                <td class="imgtd"><img src="images/img14.png"/></td>
                <td><a href="#">uimaker.com分享-123张switch界面UI设计</a>

                    <p>发布时间：2013-10-12 09:25:18</p></td>
                <td>图标设计<p>ID: 82122</p></td>
                <td>开放浏览</td>
                <td>user</td>
                <td>已审核</td>
                <td>96</td>
            </tr>

            <tr>
                <td class="imgtd"><img src="images/img15.png"/></td>
                <td><a href="#">章鱼图标PSD源文件下载</a>

                    <p>发布时间：2013-10-12 09:25:18</p></td>
                <td>界面设计<p>ID: 82122</p></td>
                <td>开放浏览</td>
                <td>admin</td>
                <td>已审核</td>
                <td>45</td>
            </tr>
        </tbody>
    </table>


    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="javascript:;">1</a></li>
            <li class="paginItem current"><a href="javascript:;">2</a></li>
            <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li>
            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        $('.imgtable tbody tr:odd').addClass('odd');
        //fancybox初始化
        $( ".fancybox").fancybox();
    });
</script>

</body>
</html>