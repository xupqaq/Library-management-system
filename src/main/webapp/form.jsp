<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="js/3rd/select/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="js/3rd/select/select-ui.min.js"></script>
</head>

<body>

<div class="formbody">

    <div class="formtitle"><span>基本信息</span></div>

    <ul class="forminfo short">
        <li>
            <label>文章标题<b>*</b></label>
            <input name="" type="text"/><i>标题不能超过30个字符</i>
        </li>
        <li>
            <label>关键字<b>*</b></label>
            <input name="" type="text"/><i>多个关键字用,隔开</i>
        </li>
        <li>
            <label>是否审核</label>
            <cite>
                <input name="" type="radio" value="" checked="checked"/>&nbsp;是&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="" type="radio" value=""/>&nbsp;否
            </cite>
            </li>
        <li>
            <label>副作用(院外)</label>
            <input name="sideEffect" type="text" class="short-input" value=""/>
        </li>
        <li>
            <label>医保限量</label>
            <input name="medicareLimit" type="text" class="short-input validate[required,custom[number]]"
                   value=""/>
        </li>
        <li>
            <label>副作用(院外)</label>
            <input name="sideEffect" type="text" class="short-input" value=""/>
        </li>
        <li style="width:100%">
            <label>备注</label>
            <input name="remark" type="text" class="long-input" value=""/>
        </li>
        <li>
            <label>副作用(院外)</label>
            <input name="sideEffect" type="text" class="short-input" value="" readonly="readonly" />
        </li>
        <li>
            <label>重点客户</label>
            <div class="vocation">
                <select class="select1">
                    <option>全部</option>
                    <option>其他</option>
                </select>
            </div>
        </li>
        <li>
            <label>库存</label>
            <input name="inventory" type="text" class="short-input validate[required,custom[number]]"
                   value="" disabled/>
        </li>
        <li style="width: 100%">
            <label>文章内容</label>
            <textarea name="" cols="" rows="" class="textinput"></textarea>
        </li>
        <li style="width: 100%">
            <label>&nbsp;</label>
            <input name="" type="button" class="btn" value="确认保存"/>
        </li>
    </ul>
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
