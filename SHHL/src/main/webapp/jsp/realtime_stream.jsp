<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>视频预览</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/ivr/jquery-1.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/ivr/webVideoCtrl.js"></script>
<script src="${pageContext.request.contextPath}/static/ivrdemo.js"></script>
</head>
<style type="text/css">
	.page-header1{
		padding-bottom:0px;
		padding-top:0px;
		margin-top:0px;
		margin-left:20px;
	}
	.table tbody tr td{
            vertical-align: middle;
        }
        
</style>
<body>
<div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">
			try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
		</script>

		<ul class="breadcrumb" style="margin-bottom:0px;">
			<li>
				<i class="icon-home home-icon"></i>
				<a href="#">Home</a>
			</li>

			<li>
				<a href="#">实时监控</a>
			</li>
			<li class="active">视频预览</li>
		</ul><!-- .breadcrumb -->					
</div>

<!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">实时数据</h5> -->
<div class="row alert alert-info" style="margin:0px; padding:3px">
	<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">视频预览</div>
 	<div class="col-sm-5" style="padding-top:5px">
   	
 	</div> 
    <div class="col-sm-5" style="padding-top:5px;padding-bottom:2px;">
   	
    </div>
 
    <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
   	<button type="button" class="btn btn-success" onClick="javascript:window.location=''">查看历史数据</button>
	</div>
</div>
<div class="row" style="margin:5px;">
	<div class="col-sm-8" >
		<div id="divPlugin" class="plugin my_div" style="width:100%;border:1px solid #F00"></div>
	</div>
	<div class="col-sm-4">
		<div class="row">
			<div class="col-sm-3">
				<input type="button" class="btn btn-primary" value="开始预览" onclick="clickStartRealPlay();" />
			</div>
			<div class="col-sm-3">
				<input type="button" class="btn btn-success" value="停止预览" onclick="clickStopRealPlay();" />
			</div>
			<div class="col-sm-3">
				<input type="button" class="btn btn-warning" value="全屏" onclick="clickFullScreen();" />
			</div>
		
			<div class="col-sm-3"></div>
		</div>
		
		
		
		
			
		 <div class="panel panel-default" style="margin-top:10px;">
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>设备信息
          </div>
          <div class="panel-body">
         	<div id="current_container" class="col-sm-12" style="height: 480px;">
         		<table class="table table-bordered">
         			<tr>
         				<td>IP地址</td>
         				<td>192.168.1.1</td>
         			</tr>
         			<tr>
         				<td>端口号</td>
         				<td>192.168.1.1</td>
         			</tr>
         			<tr>
         				<td>用户名</td>
         				<td>192.168.1.1</td>
         			</tr>
         			<tr>
         				<td>密码</td>
         				<td>192.168.1.1</td>
         			</tr>
         			<tr>
         				<td>设备端口</td>
         				<td>192.168.1.1</td>
         			</tr>
         			<tr>
         				<td>窗口分割数</td>
         				<td>192.168.1.1</td>
         			</tr>
         		</table>
        	   
			   
         	</div>
          </div>   
         
        
        </div>
	</div>
</div>
</body>
<script>
	$(function(){
		change_height();
		clickLogin();
		setTimeout(function(){
			
			clickStartRealPlay()
		},1000)
		
	})
	function change_height(){
		var div_width = $(".my_div").width();
		var height = div_width * 0.62;
		$(".my_div").css("height", height);
	}
	
</script>
</html>
