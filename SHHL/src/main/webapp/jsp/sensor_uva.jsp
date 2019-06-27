<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/My97DatePicker/WdatePicker.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/static/laydate/laydate.js"></script>
<style type="text/css">
	.page-header1{
		padding-bottom:0px;
		padding-top:0px;
		margin-top:0px;
		margin-left:20px;
	}
</style>
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
				<a href="#">传感器</a>
			</li>
			<li class="active">UVA</li>
		</ul><!-- .breadcrumb -->					
</div>


<form action="${pageContext.request.contextPath}/system/add.do" method="post" class="form-horizontal">
	<!-- 实时数据 -->
	<div>
		 <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">实时数据</div>
		 <div class="col-sm-5" style="padding-top:5px">
	   </div> 
	   <div class="col-sm-5" style="padding-top:5px;padding-bottom:2px;">
	   </div>
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<button type="button" class="btn btn-success" onClick="javascript:window.location='${pageContext.request.contextPath}/jsp/sensor_uva_history.jsp'">查看历史数据</button>
		 </div>
	</div>
		<div class="col-sm-5">
			<label class="col-sm-2 control-label">系统时间:</label>
            <div class="col-sm-3 control-label" id="time">
            ${newuva.TIME}
        	</div>
        </div>
		<!-- 电压波形 -->
		<div id="dianya_shishi" style="width:100%;height:310px"></div>
		<script type="text/javascript">
			var uvaDataList=JSON.parse('<%=request.getAttribute("uvaDataList")%>');
        	// 基于准备好的dom，初始化echarts实例
        	var myChart1 = echarts.init(document.getElementById('dianya_shishi'));
        	//格式化时间的函数
            Date.prototype.format = function(fmt) { 
                 var o = { 
                    "M+" : this.getMonth()+1,                 //月份 
                    "d+" : this.getDate(),                    //日 
                    "h+" : this.getHours(),                   //小时 
                    "m+" : this.getMinutes(),                 //分 
                    "s+" : this.getSeconds(),                 //秒 
                    "q+" : Math.floor((this.getMonth()+3)/3), //季度 
                    "S"  : this.getMilliseconds()             //毫秒 
                }; 
                if(/(y+)/.test(fmt)) {
                        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
                }
                 for(var k in o) {
                    if(new RegExp("("+ k +")").test(fmt)){
                         fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
                     }
                 }
                return fmt; 
            }
        	var voltage = [];
        	var dataTime = [];
			for(var i=0;i<uvaDataList.length;i++){
				voltage.push(uvaDataList[i].voltage);
				dataTime.push(new Date(uvaDataList[i].tIME).format("yyyy-MM-dd hh:mm:ss"));
			}
			
        	// 指定图表的配置项和数据
        	var option1 = {
            	title: {
                	text: '电压数据（mV nA）',
                	left: 'center'
            	},
            	tooltip: {},
            	legend: {
                	data:['销量']
            	},
            	xAxis: {
            	    type: 'category',
            	    data: dataTime
            	   },
            	yAxis: {
            	    type: 'value'
            	    },
            	series: [{
                	name: 'voltage',
                	data: voltage,
                    type: 'line'
            	}]
        	};
        	// 使用刚指定的配置项和数据显示图表。
        	myChart1.setOption(option1);
    	</script>
    	<!-- 电压波形结束 -->
    	
    	<!-- 电流波形 -->
		<div id="dianliu_shishi" style="width:100%;height:310px"></div>
		<script type="text/javascript">
        	// 基于准备好的dom，初始化echarts实例
        	var myChart2 = echarts.init(document.getElementById('dianliu_shishi'));
			var current = [];
			var dataTime = [];
			for(var i=0;i<uvaDataList.length;i++){
				current.push(uvaDataList[i].current);
				dataTime.push(new Date(uvaDataList[i].tIME).format("yyyy-MM-dd hh:mm:ss"));
			}
        	// 指定图表的配置项和数据
        	var option2 = {
            	title: {
                	text: '电流数据（mV nA）',
                	left: 'center'
            	},
            	tooltip: {},
            	legend: {
                	data:[]
            	},
            	xAxis: {
            	    type: 'category',
            	    data: dataTime
            	   },
            	yAxis: {
            	    type: 'value'
            	    },
            	series: [{
                	data: current,
                    type: 'line'
            	}]
        	};
        	// 使用刚指定的配置项和数据显示图表。
        	myChart2.setOption(option2);
        	
        	//实时的刷新数据，3秒刷新一次
        	//保存上一次的时间，对比时间可得是否更新
        	var lasttime = "${newuva.TIME}";
        	var timeflag =0;
        	//定时刷新,在此处初始化data
        	$(document).ready(function () {
                setInterval("startRequest()", 3000);//3s一次
            });
        	function startRequest(){
        		 $.ajax({
        	            url:  "${pageContext.request.contextPath}/uvaData/realtime.do",
        	            type: 'POST',
        	            success: function (data) {
        	            	var realtime=JSON.parse(data);//最新的数据
        	            	//如果时间时间没变，那么数据未更新
        	            	if((new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"))==(new Date(lasttime).format("yyyy-MM-dd hh:mm:ss"))){
        	            		timeflag = timeflag + 3000;
        	            		voltage.push(0);
        	            		current.push(0);
        	            		dataTime.push(new Date(realtime[0].tIME+timeflag).format("yyyy-MM-dd hh:mm:ss"));
        	            		$("#time").empty();
                             	$("#time").text(new Date(realtime[0].tIME+timeflag).format("yyyy-MM-dd hh:mm:ss"));
        	            	}else{
        	            		voltage.push(realtime[0].voltage);
        	            		current.push(realtime[0].current);
        	            		dataTime.push(new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"));
        	            		lasttime=realtime[0].tIME;
        	                	timeflag = 0;
        	                	$("#time").empty();
                             	$("#time").text(new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"));
        	            	}
        	            	voltage.shift();
        	            	current.shift();
        	            	dataTime.shift();
        	            	
        	            	
        	            	myChart1.setOption({
        	            		xAxis: {
        	                	    type: 'category',
        	                	    data: dataTime
        	                	   },
        	        	        series: [{
        	        	            data: voltage
        	        	        }]
        	        	    });
        	            	
        	            	myChart2.setOption({
        	            		xAxis: {
        	                	    type: 'category',
        	                	    data: dataTime
        	                	   },
        	        	        series: [{
        	        	            data: current
        	        	        }]
        	        	    });
        	            },
        	            error : function(jqXHR) {
        	                alert("发生错误：" + jqXHR.status);
        	            },
        	        });
        	    }
    	</script>
    	<!-- 电流波形结束 -->
	</div>
	<!-- 实时数据结束 -->
</form>
 <script>
//执行一个laydate实例
laydate.render({
	elem: '#startTime',//指定元素
	type:'datetime',
	format:'yyyy-MM-dd HH:mm:ss'
});
laydate.render({
	elem: '#endTime', //指定元素
	type:'datetime',
	format:'yyyy-MM-dd HH:mm:ss'
	});
</script>
</body>
</html>