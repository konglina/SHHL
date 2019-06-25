<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<a href="#">Home</a>
			</li>

			<li>
				<a href="#">传感器</a>
			</li>
			<li class="active">YSI</li>
		</ul><!-- .breadcrumb -->					
</div>


<form action="${pageContext.request.contextPath}/system/add.do" method="post" class="form-horizontal">
	<!-- shishi_start -->
	<div >
		<h5 class="page-header alert alert-info" style="padding:10px; margin:0px; margin-bottom:0px;">实时数据</h5>
<div class="row" style="margin-top:15px;padding: 2px">
		<div class="col-sm-4">
		<div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>实时数据显示
          </div>
             
             		<table id="sample-table-1" class="table table-striped table-bordered table-hover" style="margin: 0px;padding: 0px">
    	<tr >
        	<th>时间</th>
        	<td id="date">${newysi.TIME}</td>
        </tr>
        <tr >
            <th>Turbidity</th>
            <td id="Turbidity">${newysi.turbidity}</td>
        </tr>
        <tr>
            <th>TSS</th>
            <td id="TSS">${newysi.TSS}</td>      
        </tr>   
        <tr >
            <th>Chlorophyll</th>
            <td id="Chlorophyll">${newysi.chlorophyll}</td>
        </tr>
        <tr>
            <th>BGA-PE</th>
            <td id="BGA_PE">${newysi.BGA_PE}</td>      
        </tr>   
        <tr >
            <th>ODO</th> 
            <td id="ODO">${newysi.ODO}</td>
        </tr>
        <tr>
            <th>Temperature</th>    
            <td id="Temperature">${newysi.temperature}</td>    
        </tr>      
        <tr >
            <th>Specific Conductance</th>
            <td id="Conductance">${newysi.specific_Conductance}</td> 
        </tr>
        <tr>
            <th>Salinity</th>
            <td id="Salinity">${newysi.salinity}</td>
        </tr>    
        <tr >
            <th>pH</th>
            <td id="pH">${newysi.pH}</td>
        </tr>
        <tr>
            <th>ORP</th>
            <td id="ORP">${newysi.ORP}</td>      
        </tr>    
        <tr >
            <th>Pressure</th>
            <td id="Pressure">${newysi.pressure}</td> 
        </tr>
        <tr>
            <th>Depth</th>
            <td id="Depth">${newysi.depth}</td>      
        </tr>    
    </table>
        </div>
    </div>
    
    <div class="col-sm-8">
    	<div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
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
        for(var i=0;i<bbesDataList.length;i++){
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
                	value: [bbesDataList[i].tIME,bbesDataList[i].oDO]
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
        	console.log(chartDatas);
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
        	console.log(s);
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
                	$("#Turbidity").empty();
                 	$("#Turbidity").text(realtime[0].turbidity);
                 	$("#TSS").empty();
                 	$("#TSS").text(realtime[0].tSS);
                 	$("#Chlorophyll").empty();
                 	$("#Chlorophyll").text(realtime[0].chlorophyll);
                 	$("#BGA_PE").empty();
                 	$("#BGA_PE").text(realtime[0].bGA_PE);
                 	$("#ODO").empty();
                 	$("#ODO").text(realtime[0].oDO);
                 	$("#Temperature").empty();
                 	$("#Temperature").text(realtime[0].temperature);
                 	$("#Conductance").empty();
                 	$("#Conductance").text(realtime[0].specific_Conductance);
                 	$("#Salinity").empty();
                 	$("#Salinity").text(realtime[0].salinity);
                 	$("#pH").empty();
                 	$("#pH").text(realtime[0].pH);
                 	$("#ORP").empty();
                 	$("#ORP").text(realtime[0].oRP);
                 	$("#Pressure").empty();
                 	$("#Pressure").text(realtime[0].pressure);
                 	$("#Depth").empty();
                 	$("#Depth").text(realtime[0].depth);
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
    <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">历史数据查询</div>
		 <div class="col-sm-2" style="padding-top:5px">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					开始&nbsp;
				</span>
				<input type="text" id="startTime" class="form-control">
				<span class="input-group-addon">
					<i class="icon-calendar"></i>
				</span>
			</div>
	   </div> 
	   
	   <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					结束&nbsp;
				</span>
				<input type="text" id="endTime" class="form-control">
				<span class="input-group-addon">
					<i class="icon-calendar"></i>
				</span>
			</div>
	   </div>
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<input id="queryBtn" type="button" class="btn btn-danger" value="查询"/>
		 </div>
	</div>
</form>
<div class="row"  style="padding:15px; padding-top:0px;margin-top:2px;" >
		<table class="table table-condensed table-striped table-bordered table-hover">
		<thead>
			<tr>
		       	<th>Time</th>
		           <th>Turbidity</th>
		           <th>TSS</th>
		           <th>Chlorophyll</th>
		           <th>BGA-PE</th>
		           <th>ODO</th>
		           <th>Temperature</th>
		           <th>Specific Conductance</th>
		           <th>Salinity</th>
		           <th>pH</th>
		           <th>ORP</th>
		           <th>Pressure</th>
		           <th>Deth</th> 
		       </tr>
		</thead>
		<tbody id="dataBody">
		
		</tbody>
        <tfoot>
        	<tr>
        		<td colspan="100%" align="center">
        		 <ul class="pagination">
        		 
				 </ul>
        	</td>
        	</tr>
        </tfoot>
    </table>
</div>
<div class="row">
	<!-- <div id="container" style="width: 100%;height:600px;"></div> -->
	<div class="col-sm-2" style="height: 400px;"></div>
	<div id="container" class="col-sm-8" style="height: 400px;"></div>
	<div class="col-sm-2" style="height: 400px;"></div>
</div>
<script type="text/javascript">
	var dom = document.getElementById("container");
	var myChart1 = echarts.init(dom);
	var app = {};
	option = null;
	function randomData() {
	    now = new Date(+now + oneDay);
	    value = value + Math.random() * 21 - 10;
	    return {
	        name: now.toString(),
	        value: [
	            [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
	            Math.round(value)
	        ]
	    }
	}
	
	var data = [];
	var now = +new Date(1997, 9, 3);
	var oneDay = 24 * 3600 * 1000;
	var value = Math.random() * 1000;
	for (var i = 0; i < 1000; i++) {
	    data.push(randomData());
	}
	
	option = {
	    title: {
	        text: '动态数据 + 时间坐标轴'
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
	        data: data
	    }]
	};
	
	setInterval(function () {
	
	    for (var i = 0; i < 5; i++) {
	        data.shift();
	        data.push(randomData());
	    }
	
	    myChart1.setOption({
	        series: [{
	            data: data
	        }]
	    });
	}, 1000);;
	if (option && typeof option === "object") {
		myChart1.setOption(option, true);
	}
	
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
	
	var likeflag = false;
	$(function () {
	    pageQuery(1);//当页面加载完成查询第一页
	    $("#queryBtn").click(function(){
	    	var startTime = $("#startTime").val();
	    	var endTime = $("#endTime").val();
	    	if(startTime != "" && endTime != " "){
	    		likeflag = true;
	    	}
	    	pageQuery(1);
	    });
	});
	function pageQuery(pageno){
		var jsonData = {"pageno":pageno, "pagesize":10};
       	var update = false;
       	if(pageno==1){
       		update = true;
       		jsonData.update = update;
       	}else{
       		jsonData.update = update;
       	}
        if(likeflag == true){
        	jsonData.startTime = $("#startTime").val();
        	jsonData.endTime = $("#endTime").val(); 	
        }
        var state = $("#state").val();
        $.ajax({
            type:"POST",
            url :"${pageContext.request.contextPath}/ysiData/pageQuery.do",
            data: jsonData,
            success:function(result){
            	var pageObj = result.data; //拿到json对象中的data
            	 var datas = pageObj.datas; //拿到data中的datas（集合）
            	var content = "";//拼接表格
            	for(var i=0;i<datas.length;i++){
            		content += '<tr>';
            		content += '<th>'+new Date(datas[i].time).format("yyyy-MM-dd hh:mm:ss")+'</th>';
            		content += '<th>'+datas[i].turbidity+'</th>';
            		content += '<th>'+datas[i].tss+'</th>';
            		content += '<th>'+datas[i].chlorophyll+'</th>';
            		content += '<th>'+datas[i].bga_PE+'</th>';
            		content += '<th>'+datas[i].odo+'</th>';
            		content += '<th>'+datas[i].temperature+'</th>';
            		content += '<th>'+datas[i].specific_Conductance+'</th>';
            		content += '<th>'+datas[i].salinity+'</th>';
            		content += '<th>'+datas[i].pH+'</th>';
            		content += '<th>'+datas[i].orp+'</th>';
            		content += '<th>'+datas[i].pressure+'</th>';
            		content += '<th>'+datas[i].depth+'</th>';
            		content +='</tr>';
            	}
            	 $("#dataBody").html(content);
            	 
            	 var totalno = pageObj.totalPage;
                 var pageContent = "";
                 //首页
                 pageContent += '<li onclick="pageQuery('+1+')"><a href="#">首页</a></li>';
                 //上一页
                 if( pageno == 1){
                     pageContent += '<li class="disabled"><a href="#">上一页</a></li>';
                 }else{
                     pageContent += '<li onclick="pageQuery('+(pageno -1)+')"><a href="#">上一页</a></li>';
                 }
                 //中间部分
                 for( var i = pageno - 2; i< pageno + 2; i++){
                     if(i<1||i>totalno){
                          continue;
                     }
                     if( pageno == i){
                          pageContent += '<li class="active"><a href="#">'+i+'</a></li>';
                     }else{
                          pageContent += '<li onclick="pageQuery('+i+')"><a href="#">'+i+'</a></li>';
                     }
                 }
                 //下一页
                 if(pageno == totalno){
                     pageContent += '<li class="disabled"><a href="#">下一页</a></li>';
                 }else{
                     pageContent += '<li onclick="pageQuery('+(pageno + 1 )+')"><a href="#">下一页</a></li>';
                 }
                 //尾页
                 pageContent += '<li onclick="pageQuery('+totalno+')"><a href="#">尾页</a></li>';
                 pageContent += '<li><a>共' + pageObj.totalPage + '页</a></li>';
                 $(".pagination").html(pageContent);
            },
            error : function(jqXHR) {
                alert("发生错误：" + jqXHR.status);
            },
        });
	}
 </script>
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