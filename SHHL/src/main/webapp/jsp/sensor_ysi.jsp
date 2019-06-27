<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/My97DatePicker/WdatePicker.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/static/laydate/laydate.js"></script> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
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
				<a href="${pageContext.request.contextPath}/boxenv/list.do">Home</a>
			</li>

			<li>
				<a href="#">传感器</a>
			</li>
			<li class="active">YSI</li>
		</ul><!-- .breadcrumb -->					
</div>


<form action="${pageContext.request.contextPath}/system/add.do" method="post" class="form-horizontal">
	<!-- shishi_start -->
	<div>
		 <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">实时数据</div>
		 <div class="col-sm-5" style="padding-top:5px">
	   </div> 
	   <div class="col-sm-5" style="padding-top:5px;padding-bottom:2px;">
	   </div>
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<button type="button" class="btn btn-success" onClick="javascript:window.location='${pageContext.request.contextPath}/jsp/sensor_ysi_history.jsp'">查看历史数据</button>
		 </div>
	</div>
<div class="row" style="margin-top:15px;padding: 2px">
		<div class="col-sm-4">
		<div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>实时数据显示
          </div>
             
             		<table id="sample-table-1" class="table table-striped table-bordered table-hover" style="margin: 0px;padding: 0px">
    	<tr >
        	<th>时间</th>
        	<td id="date"><fmt:formatDate value="${newysi.TIME}" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        </tr>
        <tr >
            <th>Turbidity</th>
            <td id="Turbidity"><fmt:formatNumber type="number" value="${newysi.turbidity}" pattern="0.00" maxFractionDigits="2"/></td>
        </tr>
        <tr>
            <th>TSS</th>
            <td id="TSS"><fmt:formatNumber type="number" value="${newysi.TSS}" pattern="0.00" maxFractionDigits="2"/></td>      
        </tr>   
        <tr >
            <th>Chlorophyll</th>
            <td id="Chlorophyll"><fmt:formatNumber type="number" value="${newysi.chlorophyll}" pattern="0.00" maxFractionDigits="2"/></td>
        </tr>
        <tr>
            <th>BGA-PE</th>
            <td id="BGA_PE"><fmt:formatNumber type="number" value="${newysi.BGA_PE}" pattern="0.00" maxFractionDigits="2"/></td>      
        </tr>   
        <tr >
            <th>ODO</th> 
            <td id="ODO"><fmt:formatNumber type="number" value="${newysi.ODO}" pattern="0.00" maxFractionDigits="2"/></td>
        </tr>
        <tr>
            <th>Temperature</th>    
            <td id="Temperature"><fmt:formatNumber type="number" value="${newysi.temperature}" pattern="0.00" maxFractionDigits="2"/></td>    
        </tr>      
        <tr >
            <th>Specific Conductance</th>
            <td id="Conductance"><fmt:formatNumber type="number" value="${newysi.specific_Conductance}" pattern="0.00" maxFractionDigits="2"/></td> 
        </tr>
        <tr>
            <th>Salinity</th>
            <td id="Salinity"><fmt:formatNumber type="number" value="${newysi.salinity}" pattern="0.00" maxFractionDigits="2"/></td>
        </tr>    
        <tr >
            <th>pH</th>
            <td id="pH"><fmt:formatNumber type="number" value="${newysi.pH}" pattern="0.00" maxFractionDigits="2"/></td>
        </tr>
        <tr>
            <th>ORP</th>
            <td id="ORP"><fmt:formatNumber type="number" value="${newysi.ORP}" pattern="0.00" maxFractionDigits="2"/></td>      
        </tr>    
        <tr >
            <th>Pressure</th>
            <td id="Pressure"><fmt:formatNumber type="number" value="${newysi.pressure}" pattern="0.00" maxFractionDigits="2"/></td> 
        </tr>
        <tr>
            <th>Depth</th>
            <td id="Depth"><fmt:formatNumber type="number" value="${newysi.depth}" pattern="0.00" maxFractionDigits="2"/></td>      
        </tr>    
    </table>
        </div>
    </div>
    
    <div class="col-sm-8">
    	<div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;">
            <span class="glyphicon glyphicon-refresh">近期数据趋势</span>
             <select id="selectChart" onchange="chooseChart(this.options[this.options.selectedIndex].value)">
			    <option value ="Turbidity">Turbidity</option>
			    <option value ="TSS">TSS</option>
			    <option value ="Chlorophyll">Chlorophyll</option>
			    <option value ="BGA_PE">BGA_PE</option>
			    <option value ="ODO">ODO</option>
			    <option value ="Temperature">Temperature</option>
			    <option value ="Conductance">Specific Conductance</option>
			    <option value ="Salinity">Salinity</option>
			    <option value ="pH">pH</option>
			    <option value ="ORP">ORP</option>
			    <option value ="Pressure">Pressure</option>
			    <option value ="Depth">Depth</option>
  			</select> 
          </div>
              <div class="panel-body">
             
               
             		<div id="ysi_shishi" style="width: 100%;height:520px;"></div>
              </div>
        </div>
    </div>
    	<script type="text/javascript">
        //基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('ysi_shishi'));
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
      	//放入实际的数据
      	var bbesDataList=JSON.parse('<%=request.getAttribute("ysiDataList")%>');
        var turbidity = []; 
        var tts = [];
        var chlorophyll = [];
        var bga_pe = [];
        var odo = [];
        var temperature = [];
        var conductance = [];
        var salinity = [];
        var ph = [];
        var orp = [];
        var pressure = [];
        var depth = [];
        for(var i=(bbesDataList.length-1);i>=0;i--){
        	var tur = {
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].turbidity]
        	};
        	turbidity.push(tur);
        	var t = {
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].tSS]
        	}
        	tts.push(t);
        	var c={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].chlorophyll]
        	}
        	chlorophyll.push(c);
        	var bga ={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].bGA_PE]
        	}
        	bga_pe.push(bga);
        	var od={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].oDO]
        	}
        	odo.push(od);
        	var temp = {
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].temperature]
        	}
        	temperature.push(temp);
        	var con={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].specific_Conductance]
        	}
        	conductance.push(con);
        	var sal={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].salinity]
        	}
        	salinity.push(sal);
        	var p={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].pH]
        	}
        	ph.push(p);
        	var or={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].oRP]
        	}
        	orp.push(or);
        	var pre={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].pressure]
        	}
        	pressure.push(pre);
        	var de={
        			name: bbesDataList[i].tIME,
                	value: [bbesDataList[i].tIME,bbesDataList[i].depth]
        	}
        	depth.push(de);
        }
        var option={};
        option = {
        	    title: {
        	        text: '实时数据'
        	    },
        	    tooltip: {
        	        trigger: 'axis',
        	        formatter: function (params) {
        	            params = params[0];
        	            var date = new Date(params.name);
        	            return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
        	        },
        	        axisPointer: {
        	            animation: false
        	        }
        	    },
        	    xAxis: {
        	        type: 'time',
        	        splitLine: {
        	            show: false
        	        }
        	    },
        	    yAxis: {
        	        type: 'value',
        	        boundaryGap: [0, '100%'],
        	        splitLine: {
        	            show: false
        	        }
        	    },
        	    
        	    series: [{
        	        name: '模拟数据',
        	        type: 'line',
        	        showSymbol: false,
        	        hoverAnimation: false,
        	        data: turbidity
        	    }]
        	};
     	// 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option,true);
        function updataChart(chartDatas){
        	myChart = echarts.init(document.getElementById('ysi_shishi'));
        	option = {
            	    title: {
            	        text: '实时数据'
            	    },
            	    tooltip: {
            	        trigger: 'axis',
            	        formatter: function (params) {
            	            params = params[0];
            	            var date = new Date(params.name);
            	            return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
            	        },
            	        axisPointer: {
            	            animation: false
            	        }
            	    },
            	    xAxis: {
            	        type: 'time',
            	        splitLine: {
            	            show: false
            	        }
            	    },
            	    yAxis: {
            	        type: 'value',
            	        boundaryGap: [0, '100%'],
            	        splitLine: {
            	            show: false
            	        }
            	    },
            	    series: [{
            	        name: '模拟数据',
            	        type: 'line',
            	        showSymbol: false,
            	        hoverAnimation: false,
            	        data: chartDatas
            	    }]
            	};
        	myChart.clear();
        	myChart.setOption(option,true);
        }
        
        function chooseChart(s){
        	switch(s){
        	case "Turbidity":
        		updataChart(turbidity);
        		break;
        	case "TSS":
        		updataChart(tts);
        		break;
        	case "Chlorophyll":
        		updataChart(chlorophyll);
        		break;
        	case "BGA_PE":
        		updataChart(bga_pe);
        		break;
        	case "ODO":
        		updataChart(odo);
        		break;
        	case "Temperature":
        		updataChart(temperature);
        		break;
        	case "Conductance":
        		updataChart(conductance);
        		break;
        	case "Salinity":
        		updataChart(salinity);
        		break;
        	case "pH":
        		updataChart(ph);
        		break;
        	case "ORP":
        		updataChart(orp);
        		break;
        	case "Pressure":
        		updataChart(pressure);
        		break;
        	case "Depth":
        		updataChart(depth);
        		break;
        	default:
        		break;
        	}
        }
        
        //选择实时显示的图表
        function chooseRealtime(s){
        	switch(s){
        	case "Turbidity":
        		displayRealtimeChart(turbidity);
        		break;
        	case "TSS":
        		displayRealtimeChart(tts);
        		break;
        	case "Chlorophyll":
        		displayRealtimeChart(chlorophyll);
        		break;
        	case "BGA_PE":
        		displayRealtimeChart(bga_pe);
        		break;
        	case "ODO":
        		displayRealtimeChart(odo);
        		break;
        	case "Temperature":
        		displayRealtimeChart(temperature);
        		break;
        	case "Conductance":
        		displayRealtimeChart(conductance);
        		break;
        	case "Salinity":
        		displayRealtimeChart(salinity);
        		break;
        	case "pH":
        		displayRealtimeChart(ph);
        		break;
        	case "ORP":
        		displayRealtimeChart(orp);
        		break;
        	case "Pressure":
        		displayRealtimeChart(pressure);
        		break;
        	case "Depth":
        		displayRealtimeChart(depth);
        		break;
        	default:
        		break;
        	}
        }
        
        function displayRealtimeChart(realTimedata){
        	myChart.setOption({
    	        series: [{
    	            data: realTimedata
    	        }]
    	    });
        }
        //实时的刷新数据，10秒刷新一次
    	//保存上一次的时间，对比时间可得是否更新
    	var lasttime = "${newysi.TIME}";
    	var timeflag =0;
    	//定时刷新,在此处初始化data
      	//实时的刷新数据，10秒刷新一次
    	$(document).ready(function () {
            setInterval("startRequest()", 10000);//10s一次
        });
        function startRequest() {
            $.ajax({
                url:  "${pageContext.request.contextPath}/ysiData/realtime.do",
                type: 'POST',
                success: function (data) {
                	var realtime=JSON.parse(data);//最新的数据
                	//如果时间时间没变，那么数据未更新
	            	if((new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"))==(new Date(lasttime).format("yyyy-MM-dd hh:mm:ss"))){
	            		timeflag = timeflag + 10000;
                    	var tur = {
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	};
                    	turbidity.push(tur);
                    	turbidity.shift();
                    	var t = {
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	tts.push(t);
                    	tts.shift();
                    	var c={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	chlorophyll.push(c);
                    	chlorophyll.shift();
                    	var bga ={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	bga_pe.push(bga);
                    	bga_pe.shift();
                    	var od={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	odo.push(od);
                    	odo.shift();
                    	var temp = {
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	temperature.push(temp);
                    	temperature.shift();
                    	var con={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	conductance.push(con);
                    	conductance.shift();
                    	var sal={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	salinity.push(sal);
                    	salinity.shift();
                    	var p={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	ph.push(p);
                    	ph.shift();
                    	var or={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	orp.push(or);
                    	orp.shift();
                    	var pre={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	pressure.push(pre);
                    	pressure.shift();
                    	var de={
                    			name: realtime[0].tIME+timeflag,
                            	value: [realtime[0].tIME+timeflag,0]
                    	}
                    	depth.push(de);
                    	depth.shift();
	            		
	            	}else{
	            		var tur = {
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].turbidity]
                    	};
                    	turbidity.push(tur);
                    	turbidity.shift();
                    	var t = {
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].tSS]
                    	}
                    	tts.push(t);
                    	tts.shift();
                    	var c={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].chlorophyll]
                    	}
                    	chlorophyll.push(c);
                    	chlorophyll.shift();
                    	var bga ={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].bGA_PE]
                    	}
                    	bga_pe.push(bga);
                    	bga_pe.shift();
                    	var od={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].oDO]
                    	}
                    	odo.push(od);
                    	odo.shift();
                    	var temp = {
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].temperature]
                    	}
                    	temperature.push(temp);
                    	temperature.shift();
                    	var con={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].specific_Conductance]
                    	}
                    	conductance.push(con);
                    	conductance.shift();
                    	var sal={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].salinity]
                    	}
                    	salinity.push(sal);
                    	salinity.shift();
                    	var p={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].pH]
                    	}
                    	ph.push(p);
                    	ph.shift();
                    	var or={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].oRP]
                    	}
                    	orp.push(or);
                    	orp.shift();
                    	var pre={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].pressure]
                    	}
                    	pressure.push(pre);
                    	pressure.shift();
                    	var de={
                    			name: realtime[0].tIME,
                            	value: [realtime[0].tIME,realtime[0].depth]
                    	}
                    	depth.push(de);
                    	depth.shift();
                    	
                    	
	            		lasttime=realtime[0].tIME;
	                	timeflag = 0;
	            	}
                	
	            	chooseRealtime($('#selectChart option:selected').val());
                	
                	
                	$("#Turbidity").empty();
                 	$("#Turbidity").text(realtime[0].turbidity.toFixed(2));
                 	$("#TSS").empty();
                 	$("#TSS").text(realtime[0].tSS.toFixed(2));
                 	$("#Chlorophyll").empty();
                 	$("#Chlorophyll").text(realtime[0].chlorophyll.toFixed(2));
                 	$("#BGA_PE").empty();
                 	$("#BGA_PE").text(realtime[0].bGA_PE.toFixed(2));
                 	$("#ODO").empty();
                 	$("#ODO").text(realtime[0].oDO.toFixed(2));
                 	$("#Temperature").empty();
                 	$("#Temperature").text(realtime[0].temperature.toFixed(2));
                 	$("#Conductance").empty();
                 	$("#Conductance").text(realtime[0].specific_Conductance.toFixed(2));
                 	$("#Salinity").empty();
                 	$("#Salinity").text(realtime[0].salinity.toFixed(2));
                 	$("#pH").empty();
                 	$("#pH").text(realtime[0].pH.toFixed(2));
                 	$("#ORP").empty();
                 	$("#ORP").text(realtime[0].oRP.toFixed(2));
                 	$("#Pressure").empty();
                 	$("#Pressure").text(realtime[0].pressure.toFixed(2));
                 	$("#Depth").empty();
                 	$("#Depth").text(realtime[0].depth.toFixed(2));
                 	
                 	
                 	
                }, 
                error : function(jqXHR) {
                    alert("发生错误：" + jqXHR.status);
                },
            });
        }
    	</script>
    	</div>
	</div>
      <!--备注-->
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