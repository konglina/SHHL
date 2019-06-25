<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>视频预览</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Cache-Control" content="no-cache, must-revalidate" />
	<meta http-equiv="Expires" content="0" />
<script>
	document.write("<link type='text/css' href='demo.css?version=" + new Date().getTime() + "' rel='stylesheet' />");
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/ivr/jquery-1.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/ivr/webVideoCtrl.js"></script>
<script src="${pageContext.request.contextPath}/static/ivr/demo.js"></script>
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
		
			<div class="col-sm-3">
				<input type="button" class="btn btn-primary" value="登录" onclick="clickLogin();" />
			</div>
		</div>
		 <div class="panel panel-default" style="margin-top:10px;">
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>设备信息
          </div>
          <div class="panel-body" style="padding:0px;">
         	<div id="current_container" class="col-sm-12" style="height: 320px;padding:0px;">
         		<table class="table table-bordered">
         			<tr>
         				<td>IP地址</td>
         				<td ><input id="loginip" type="text" readonly="readonly" class="txt" value="${ip}" /></td>
         			</tr>
         			<tr>
         				<td>端口号</td>
         				<td><input id="port" type="text" readonly="readonly" class="txt" value="80" /></td>
         			</tr>
         			<tr>
         				<td>用户名</td>
         				<td ><input id="username" type="text" readonly="readonly" class="txt" value="${username}" /></td>
         			</tr>
         			<tr hidden="true">
         				<td>密码</td>
         				<td ><input id="password"  type="text" class="txt" value="${password}" /></td>
         			</tr>
         			<tr>
         				<td>窗口数</td>
         				<td>
		         			<select class="sel2" onchange="changeWndNum(this.value);">
								<option value="1" selected>1x1</option>
								<option value="2">2x2</option>
								<option value="3">3x3</option>
								<option value="4">4x4</option>
							</select>
         				</td>
         			</tr>
         			<tr hidden="true">
         				<td class="tt">已登录设备</td>
						<td>
							<select id="ip" class="sel" onchange="getChannelInfo();"></select>
						</td>
         			</tr>
         			<tr>
         				<td>通道列表</td>
         				<td><select id="channels" class="sel"></select></td>
         			</tr>
         			<tr>
         				<td>码流类型</td>
         				<td>
	         				<select id="streamtype" class="sel">
								<option value="1">主码流</option>
								<option value="2">子码流</option>
								<option value="3">第三码流</option>
								<option value="4">转码码流</option>
							</select>
         				</td>
         			</tr>
         		</table>
        	   
			   
         	</div>
          </div>   
         	<div class="panel-heading" style=" padding:3px;height:30px;"  >
           	 <span class="glyphicon glyphicon-refresh"></span>操作日志
          	</div>
          	<div class="panel-body" style="height:180px;">
          		<fieldset class="operate">
					<div id="opinfo" class="opinfo"></div>
				</fieldset>
          	</div>
        
        </div>
	</div>
</div>
</body>

<script>
	function change_height(){
		
		var div_width = $(".my_div").width();
		var height = div_width * 0.62;
		$(".my_div").css("height", height);
	}
	$(function(){
		change_height();
		clickLogin();
		setTimeout(function(){
			clickStartRealPlay()
		},100)
		
	})
	
	
</script>
</html>
