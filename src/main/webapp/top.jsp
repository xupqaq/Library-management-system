<%@page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="js/3rd/select/select-ui.min.js"></script>

<script type="text/javascript">


setInterval(function() {
    var arr = ["日", "一", "二", "三", "四", "五", "六"];
    var day = new Date().getDay();
    var year = new Date().getFullYear();
    var month = new Date().getMonth() + 1;
    var date = new Date().getDate();
    var H = new Date().getHours() < 10 ? "0" + new Date().getHours() : new Date().getHours();
    var M = new Date().getMinutes() < 10 ? "0" + new Date().getMinutes() : new Date().getMinutes();
    var S = new Date().getSeconds() < 10 ? "0" + new Date().getSeconds() : new Date().getSeconds();
    var date1 = year + "年" + month + "月" + date + "日" + " 星期" + arr[day];
    $("#new_date").html(date1);
    var time1 = H + " : " + M + " : " + S;
    $("#new_time").html(time1);
    
  },
  1000);

	function exitSys(){
		if(confirm("是否退出登陆")){
			window.parent.location.href="exitSys";
		}
	}
</script>

</head>

<body>

<div class="top">
    <div class="place">
        <span>Welcome to my library management system</span>
         <ul class="placeul">
            <li><i id="new_date"></i>&nbsp;&nbsp;<i id="new_time"></i></li>
            
        </ul> 
    </div>

    <div class="topright">

		

        <div class="user">
        	
            <a style="" title="退出登陆" onclick = "exitSys()" href="javascript:;"><span id="sysname">${sysuser.uname}</span></a>
        </div>

    </div>
</div>
</body>
</html>
