<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html> 
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />

<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/echarts.min.js"></script>


</head>
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
				<a href="#">接驳盒</a>
			</li>
			<li class="active">实时流</li>
		</ul><!-- .breadcrumb -->					
</div>


<div class="page-content">
	<div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px">实时流</div>  
	</div>

	<div class="row">
		<div class="col-sm-8" style="margin:5px">
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="100%" height="400">
			<param name="movie" value="flvplayer.swf" />
			<param name="quality" value="high" />
			<param name="allowFullScreen" value="true" />
			<param name="FlashVars" value="vcastr_file=12.flv&LogoText=description&BufferTime=3&IsAutoPlay=1">
			<embed src="flvplayer.swf" allowfullscreen="true" flashvars="vcastr_file=12.flv&IsAutoPlay=1&LogoUrl=images/logo.jpg" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="700" height="400"></embed>
		</object>
		</div> 
		
	</div>
	<div class="row">
		<div class="col-sm-8">
			<object type='application/x-vlc-plugin' pluginspage="http://www.videolan.org/" id='vlc' events='false' width="720" height="410">
		    <param name='mrl' value='rtsp://[账号]:[密码]@[设备IP地址]/MPEG-4/ch1/main/av_stream'/>
		    <param name='volume' value='50'/>
		    <param name='autoplay' value='true'/>
		    <param name='loop' value='false'/>
		    <param name='fullscreen' value='false'/>
		    <param name='controls' value='false'/>
		</object>
		<video src="http://localhost:18080/testVideo" width="600" height="450" autoplay="autoplay" loop="loop"></video>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-8">
			<object classid="clsid:9be31822-fdad-461b-ad51-be1d1c159921"
	                width="100%"
	                height=420px
	                id="vlc"
	                events="true">
			        <param name="mrl" value="" />
			        <param name="showdisplay" value="true" />
			        <param name="autoloop" value="true" />
			        <param name="autoplay" value="true" />
			        <param name="volume" value="50" />
			        <param name="starttime" value="0" />
			        <embed pluginspage="http://www.videolan.org"
			                     type="application/x-vlc-plugin"
			                     version="videolan.vlcplugin.2"
			                     width="100%"
			                     height="400"
			                     name="vlc">
			        </embed>
		        </object>
		</div>
	</div>
</div>
</body>
</html>