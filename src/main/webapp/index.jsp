<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="Shortcut Icon" href="images/ygs/MainIcon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/ygs/login.css"/>
<script type="text/javascript" src="js/jquery/jquery-1.10.1.js"></script>
<script type="text/javascript" src="js/login/login.js"></script>
<style type="text/css">/* 
	font-weight: 700;
		outline: 0;
		
		border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	transition: .3s;
		display: block;
	font-size: 16px;

	cursor: pointer;
	color: #fff;
	border: 0;
	font-family: inherit;
	
	text-align: center;
	background: #3f89ec;*/
	.button1 {
	width: 120px;
	height: 50px;
	text-align: center;
	background: #439D2A;
	border: 0;
	font-family: inherit;
	cursor: pointer;
	color: #fff;
	
	font-weight: 700;
	outline: 0;
		
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	

	font-size: 16px;

	}
	.div1{
		margin: 5px;
		padding: 2.5px;
	}
</style>
<script type="text/javascript">

//获取页面的高度、宽度
function getPageSize() {
    var xScroll, yScroll;
    if (window.innerHeight && window.scrollMaxY) {
        xScroll = window.innerWidth + window.scrollMaxX;
        yScroll = window.innerHeight + window.scrollMaxY;
    } else {
        if (document.body.scrollHeight > document.body.offsetHeight) { // all but Explorer Mac    
            xScroll = document.body.scrollWidth;
            yScroll = document.body.scrollHeight;
        } else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari    
            xScroll = document.body.offsetWidth;
            yScroll = document.body.offsetHeight;
        }
    }
    var windowWidth, windowHeight;
    if (self.innerHeight) { // all except Explorer    
        if (document.documentElement.clientWidth) {
            windowWidth = document.documentElement.clientWidth;
        } else {
            windowWidth = self.innerWidth;
        }
        windowHeight = self.innerHeight;
    } else {
        if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode    
            windowWidth = document.documentElement.clientWidth;
            windowHeight = document.documentElement.clientHeight;
        } else {
            if (document.body) { // other Explorers    
                windowWidth = document.body.clientWidth;
                windowHeight = document.body.clientHeight;
            }
        }
    }       
    // for small pages with total height less then height of the viewport    
    if (yScroll < windowHeight) {
        pageHeight = windowHeight;
    } else {
        pageHeight = yScroll;
    }    
    // for small pages with total width less then width of the viewport    
    if (xScroll < windowWidth) {
        pageWidth = xScroll;
    } else {
        pageWidth = windowWidth;
    }
    arrayPageSize = new Array(pageWidth, pageHeight, windowWidth, windowHeight);
    return arrayPageSize;
}

function JudgeBroswer() {
	 var userAgent = navigator.userAgent.toLowerCase();
    // Figure out what browser is being used 
    $.browser = {
        version: (userAgent.match(/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/) || [])[1],
        safari: /webkit/.test(userAgent),
        opera: /opera/.test(userAgent),
        msie: /msie/.test(userAgent) && !/opera/.test(userAgent),
        mozilla: /mozilla/.test(userAgent) && !/(compatible|webkit)/.test(userAgent)
    };  
    if($.browser.msie) {
    	return 0;
        //alert("this is msie!"); //IE
    } 
    else if($.browser.safari) 
    { 
    	return 1;
        //alert("this is safari!"); //Safari 
    } 
    else if($.browser.mozilla) 
    { 
    	return 2;
        //alert("this is mozilla!");  //Firefox
    } 
    else if($.browser.opera) {
    	return 3;
        //alert("this is opera");     //Opera
    } 
    return 4;
}
function init(){

    
/* 	alert($(window).height()); //浏览器当前窗口可视区域高度 
	alert($(document).height()); //浏览器当前窗口文档的高度 
	alert($(document.body).height());//浏览器当前窗口文档body的高度 
	alert($(document.body).outerHeight(true));//浏览器当前窗口文档body的总高度 包括border padding margin 
	alert($(window).width()); //浏览器当前窗口可视区域宽度 
	alert($(document).width());//浏览器当前窗口文档对象宽度 
	alert($(document.body).width());//浏览器当前窗口文档body的高度 
	alert($(document.body).outerWidth(true));//浏览器当前窗口文档body的总宽度 包括border padding margin 
	alert(getPageSize()) */
	
	var yoffset = 130	
	var xoffset =6
	/* 
 	if(JudgeBroswer()>0){
		offset =5;
		alert('非ie'+JudgeBroswer());
	}
	else
		alert('ie');  */
	var yScroll =getPageSize()[1]-yoffset
		 //window.innerHeight-5;// (document.documentElement.scrollHeight >document.documentElement.clientHeight) ? document.documentElement.scrollHeight : document.documentElement.clientHeight;
	 //alert(yScroll)
	//得到页面宽度
	var xScroll=getPageSize()[0]-xoffset
		 //window.innerWidth-5; //(document.documentElement.scrollWidth>document.documentElement.clientWidth) ? document.documentElement.scrollWidth : document.documentElement.scrollWidth;
	 
	 //alert(xScroll);
	$('#ifjs').width(xScroll);
	$('#ifjs').height(yScroll);
/* 		document.getElementById('ifjs').width =xScroll;
	//window.screen.availWidth ;
	//window.innerWidth-5;
		document.getElementById('ifjs').height =yScroll;
		//window.innerHeight-5; */
	
}

function switchIframe(type){
	switch(type){
	case 1:
		$('#ifjs').attr('src',"core/appd/helloworld/index.html");
		break;
	case 3:
		$('#ifjs').attr('src',"core/jsg/doc/index.html");
		break;
	case 4:
		$('#ifjs').attr('src',"core/jsg/demos/firststeps/index.html");
		break;
	case 5:
		$('#ifjs').attr('src',"core/jsg/demos/gettingstarted/index.html");
		break;
	case 6:
		$('#ifjs').attr('src',"core/jsg/demos/simpledemo/index.html");
		break;
	case 7:
		$('#ifjs').attr('src',"core/appd/websocket/websocket.html");
		break;
	case 8:
		$('#ifjs').attr('src',"core/appd/jsdemo/client.html");
		break;
	case 9:
		$('#ifjs').attr('src',"core/appd/jconsole/demo.html");
		break;
	case 10:
		$('#ifjs').attr('src',"core/webui/index.html");
		break;
	case 11:
		$('#ifjs').attr('src',"core/webui-aria2/index.html");
		break;
	case 12:
		$('#ifjs').attr('src',"core/appd/console/index.html");
		break;
	default:
		$('#ifjs').attr('src',"core/jsg/demos/jsgdemoext/index.html");
		break;
	
	}
	
}
</script>
</head>
<body onload="init()">
	<div class="div1"><input type="button" class="button1" onclick="switchIframe(1)" value="helloworld">
	<input type="button" class="button1" onclick="switchIframe(2)" value="JSGExtDemo"> 
	<input type="button" class="button1" onclick="switchIframe(3)" value="JSGDoc"> 
	<input type="button" class="button1" onclick="switchIframe(4)" value="JSGFirst"> 
	<input type="button" class="button1" onclick="switchIframe(5)" value="JSGGetStart"> 
	<input type="button" class="button1" onclick="switchIframe(6)" value="JSGSimpleDemo">
	<input type="button" class="button1" onclick="switchIframe(7)" value="WebSocket">
	<input type="button" class="button1" onclick="switchIframe(8)" value="jsDEMO">
	</div>
	
	<div class="div1">
		<input type="button" class="button1" onclick="switchIframe(9)" value="jconsole">
		<input type="button" class="button1" onclick="switchIframe(10)" value="webui">
		<input type="button" class="button1" onclick="switchIframe(11)" value="webui2">
		<input type="button" class="button1" onclick="switchIframe(12)" value="console">
	</div>
	<div  >
<%-- 		<iframe id="ifjs"  src="yunguanshi/core/jsg/demos/jsgdemoext/index.html"></iframe> --%>
	<%-- 	<iframe id="ifjs"  src="yunguanshi/js/ext/4.2.1/index.html"></iframe> --%>
		<iframe id="ifjs"  src="core/appd/helloworld/index.html"></iframe>
	</div>
</body>
</html>