<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	.table tbody tr td{
            vertical-align: middle;
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
<form method="POST" action="${pageContext.request.contextPath}/bbesData/pageQuery.do">
	<div class="row alert alert-info" style="margin:0px; padding:3px">
			<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">历史数据</div>
			<div class="col-sm-2" style="padding-top:5px">
		    	<div class="input-group input-group-sm">
		    		<!-- <span class="input-group-addon">
						开始时间&nbsp;
					</span> -->
					<input type="text" id="startTime" name="startTime" autocomplete="off" placeholder="开始时间" class="layer-date form-control">
					<span class="input-group-addon">
						<i class="icon-calendar"></i>
					</span>
				</div>
		   </div> 
		   <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
		    	<div class="input-group input-group-sm">
		    		<!-- <span class="input-group-addon">
						结束时间&nbsp;
					</span> -->
					<input type="text" id="endTime" name="endTime" autocomplete="off" placeholder="结束时间" class="form-control">
					<span class="input-group-addon">
						<i class="icon-calendar"></i>
					</span>
				</div>
		   </div>
		    <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
			   	<input type="button" id="queryBtn" class="btn btn-danger" value="查询"/>
		   </div>
		      <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
		    </div>
		   <div class="col-sm-3" style="padding-top:5px;padding-bottom:2px;">
		    	
		   </div>
		     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
			   	<a href="${pageContext.request.contextPath}/ysiData/getlist.do" class="btn btn-warning">返回上一级</a>
			 </div>
	</div>
</form>
<div  style="padding:2px; margin:0px;"  >
<div class="row" style="padding:15px; padding-top:0px;" >
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
<div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh">数据变化趋势</span>
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
             		<div id="container" style="width: 100%;height:520px;"></div>
              </div>
        </div>
</div>
<script type="text/javascript">
//执行一个laydate实例
	laydate.render({
	  elem: '#startTime', //指定元素
	  type:'datetime',
	  format:'yyyy-MM-dd HH:mm:ss'
	});
	var endDate = laydate.render({
		elem: '#endTime',
		type:'datetime',
		format:'yyyy-MM-dd HH:mm:ss'
	});
	
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
    var myChart = echarts.init(document.getElementById("container"));
	var option = {
	    title: {
	        text: '历史数据趋势'
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
	        data: []
	    }]
	};
	if (option && typeof option === "object") {
		myChart.setOption(option, true);
	}
	
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
            	 if(pageno ==1){
               	  var datas2 = pageObj.datas2; //拿到data中的datas2（集合）
               	turbidity = [];
               	tts = [];
               	chlorophyll = [];
               	bga_pe = [];
               	odo = [];
               	temperature = [];
               	conductance = [];
               	salinity = [];
            	ph = [];
            	orp = [];
            	pressure = [];
            	depth = [];
                	  for(var i=0; i< datas2.length; i++){
                		  var tur = {
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].turbidity]
                      	};
                      	turbidity.push(tur);
                      	var t = {
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].tss]
                      	}
                      	tts.push(t);
                      	var c={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].chlorophyll]
                      	}
                      	chlorophyll.push(c);
                      	var bga ={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].bga_PE]
                      	}
                      	bga_pe.push(bga);
                      	var od={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].odo]
                      	}
                      	odo.push(od);
                      	var temp = {
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].temperature]
                      	}
                      	temperature.push(temp);
                      	var con={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].specific_Conductance]
                      	}
                      	conductance.push(con);
                      	var sal={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].salinity]
                      	}
                      	salinity.push(sal);
                      	var p={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].pH]
                      	}
                      	ph.push(p);
                      	var or={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].orp]
                      	}
                      	orp.push(or);
                      	var pre={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].pressure]
                      	}
                      	pressure.push(pre);
                      	var de={
                      			name: datas2[i].time,
                              	value: [datas2[i].time,datas2[i].depth]
                      	}
                      	depth.push(de);
                	  }
                	  chooseChart($('#selectChart option:selected').val());
                   }
            	var content = "";//拼接表格
            	for(var i=0;i<datas.length;i++){
            		content += '<tr>';
            		content += '<td>'+new Date(datas[i].time).format("yyyy-MM-dd hh:mm:ss")+'</td>';
            		content += '<td>'+datas[i].turbidity.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].tss.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].chlorophyll.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].bga_PE.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].odo.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].temperature.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].specific_Conductance.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].salinity.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].pH.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].orp.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].pressure.toFixed(2)+'</td>';
            		content += '<td>'+datas[i].depth.toFixed(2)+'</td>';
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
	function updataChart(chartDatas){
    	myChart = echarts.init(document.getElementById('container'));
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
</script>
</body>
</html>