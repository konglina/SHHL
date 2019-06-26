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
				<a href="#">Home</a>
			</li>

			<li>
				<a href="#">传感器</a>
			</li>
			<li class="active">BBES</li>
		</ul><!-- .breadcrumb -->					
</div>
<form method="POST" action="${pageContext.request.contextPath}/bbesData/pageQuery.do">
	<!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">查询历史数据</h5> -->
	<div class="row alert alert-info" style="margin:0px; padding:3px">
			<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">历史数据</div>
			<div class="col-sm-2" style="padding-top:5px">
		    	<div class="input-group input-group-sm">
		    		<!-- <span class="input-group-addon">
						开始时间&nbsp;
					</span> -->
					<input type="text" id="startTime" name="startTime" placeholder="开始时间" class="layer-date form-control">
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
					<input type="text" id="endTime" name="endTime" placeholder="结束时间" class="form-control">
					<span class="input-group-addon">
						<i class="icon-calendar"></i>
					</span>
				</div>
		   </div>
		      <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
		    	<div class="input-group input-group-sm">
		    		<span class="input-group-addon">
						指标&nbsp;
					</span>
		    	<select id="state" class="form-control">
		        	<option value="1">培养袋状态</option>
		            <option value="2">泵状态</option>
		            <option value="3">阀状态</option> 
		        </select>
		    	</div>
		    </div>
		   <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
			   	<input type="button" id="queryBtn" class="btn btn-danger" value="查询"/>
		   </div>
		   <div class="col-sm-3" style="padding-top:5px;padding-bottom:2px;">
		    	
		   </div>
		     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
			   	<a href="${pageContext.request.contextPath}/bbesData/getlist.do" class="btn btn-warning">返回上一级</a>
			 </div>
	</div>
</form>
<div  style="padding:2px; margin:0px;"  >
<div class="row" style="padding:15px; padding-top:0px;" >
			<table class="table table-condensed table-striped table-bordered table-hover">
		<thead id="dataHead">

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
<div class="row" style="margin-top:15px;">
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电压
          </div>
              <div class="panel-body">
             		<div id="container1" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电流
          </div>
              <div class="panel-body">
             		<div id="container2" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>温度
          </div>
              <div class="panel-body">
             		<div id="container3" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
</div>
<div class="row" style="">
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电导率
          </div>
              <div class="panel-body">
             		<div id="container4"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>压力
          </div>
              <div class="panel-body">
             		<div id="container5"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>盐度
          </div>
              <div class="panel-body">
             		<div id="container6"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
</div>
</div>
<script type="text/javascript">
	//container1
	var dom = document.getElementById("container1");
	var myChart = echarts.init(dom);
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
	option = {
	    title: {
	        text: '电压变化趋势'
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
	//container2
	var dom2 = document.getElementById("container2");
	var myChart2 = echarts.init(dom2);
	option2 = null; 
	option2 = {
	    title: {
	        text: '电流变化趋势'
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
	if (option2 && typeof option2 === "object") {
	    myChart2.setOption(option2, true);
	}
	//container3
	var dom3 = document.getElementById("container3");
	var myChart3 = echarts.init(dom3);
	option3 = null; 
	option3 = {
	    title: {
	        text: '温度变化趋势'
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
	if (option3 && typeof option3 === "object") {
	    myChart3.setOption(option3, true);
	}
	//container4
	var dom4 = document.getElementById("container4");
	var myChart4 = echarts.init(dom4);
	option4 = null; 
	option4 = {
	    title: {
	        text: '电导率变化趋势'
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
	if (option4 && typeof option4 === "object") {
	    myChart4.setOption(option4, true);
	}
	//container5
	var dom5 = document.getElementById("container5");
	var myChart5 = echarts.init(dom5);
	option5 = null; 
	option5 = {
	    title: {
	        text: '压力变化趋势'
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
	if (option5 && typeof option5 === "object") {
	    myChart5.setOption(option5, true);
	}
	//container6
	var dom6 = document.getElementById("container6");
	var myChart6 = echarts.init(dom6);
	option6 = null; 
	option6 = {
	    title: {
	        text: '盐度变化趋势'
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
	if (option6 && typeof option6 === "object") {
	    myChart6.setOption(option6, true);
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
	function pageQuery(pageno) {
        var jsonData = {"pageno":pageno, "pagesize":15};
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
		if(state==1){
			$.ajax({
                type:"POST",
                url :"${pageContext.request.contextPath}/bbesData/pageQuery.do",
                data: jsonData,
                success:function(result){ 
                     if(result.success){ //把后台返回的是一个result对象,query智能解析为json对象
                          var pageObj = result.data; //拿到json对象中的data
                       
                          var datas = pageObj.datas; //拿到data中的datas（集合）
                          if(pageno ==1){
                        	  var datas2 = pageObj.datas2; //拿到data中的datas2（集合）
                        	  var data = [];//电压数据
                        	  var data2 = [];//电流数据
                        	  var data3 = [];//温度数据
                        	  var data4 = [];//电导率数据
                        	  var data5 = [];//压力数据
                        	  var data6 = [];//盐度数据
                        	  for(var i=0; i< datas2.length; i++){
                        		  var bbes = {
                        				  name: datas2[i].time,
                        				  value:[datas2[i].time, datas2[i].volt48]
                        		  }
                        		  var bbes2 = {
                        				  name: datas2[i].time,
                        				  value:[datas2[i].time, datas2[i].abel48]
                        		  }
                        		  var bbes3 = {
                        				  name: datas2[i].time,
                        				  value:[datas2[i].time, datas2[i].temperature]
                        		  }
                        		  var bbes4 = {
                        				  name: datas2[i].time,
                        				  value:[datas2[i].time, datas2[i].conductivity]
                        		  }
                        		  var bbes5 = {
                        				  name: datas2[i].time,
                        				  value:[datas2[i].time, datas2[i].pressure]
                        		  }
                        		  var bbes6 = {
                        				  name: datas2[i].time,
                        				  value:[datas2[i].time, datas2[i].salinity]
                        		  }
                        		  data.push(bbes);
                        		  data2.push(bbes2);
                        		  data3.push(bbes3);
                        		  data4.push(bbes4);
                        		  data5.push(bbes5);
                        		  data6.push(bbes6);
                        	  } 
                        	  myChart.setOption({
	                      	        series: [{
	                      	            data: data
	                      	        }]
	                      	    });
                        	  myChart2.setOption({
	                      	        series: [{
	                      	            data: data2
	                      	        }]
	                      	    });
                        	  myChart3.setOption({
	                      	        series: [{
	                      	            data: data3
	                      	        }]
	                      	    });
                        	  myChart4.setOption({
	                      	        series: [{
	                      	            data: data4
	                      	        }]
	                      	    });
                        	  myChart5.setOption({
	                      	        series: [{
	                      	            data: data5
	                      	        }]
	                      	    });
                        	  myChart6.setOption({
	                      	        series: [{
	                      	            data: data6
	                      	        }]
	                      	    });
                          }
                          var headContent = "";
                          	headContent += '<tr >'
	        				headContent += '<th>编号</th>     ';
	        	        	headContent += '<th>时间</th>     ';
	        	            headContent += '<th>培养袋1</th>  ';
	        	            headContent += '<th>培养袋2</th>  ';
	        	            headContent += '<th>培养袋3</th>  ';
	        	            headContent += '<th>培养袋4</th>  ';
	        	          	headContent += '<th>培养袋5</th>  ';
	        	            headContent += '<th>培养袋6</th>  ';
	        	            headContent += '<th>培养袋7</th>  ';
	        	            headContent += '<th>培养袋8</th>  ';
	        	            headContent += '<th>培养袋9</th>  ';
	        	            headContent += '<th>培养袋10</th> ';
	        	            headContent += '<th>培养袋11</th> ';
	        	            headContent += '<th>培养袋12</th> ';
             			 	headContent += '</tr>';
             			 	$("#dataHead").html(headContent);
                          var content = "";//拼接表格
                  		
                          for(var i = 0;i < datas.length; i++){
                              var bbesData = datas[i];//取到每一条数据
                             
                              var date = new Date(bbesData.time);
                              var Y = date.getFullYear() + '-'
                              var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-'
                              var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' '
                              var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
                              var m = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':'
                              var s = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
                              time = Y + M + D + h + m + s;
                              //alert(time); 
                              
                            content += '<tr>';
                            content += '<td>'+(i+1)+'</td>';
                            content += '<td>'+ time +'</td>';  
                            content += '<td>';
                            if(bbesData.cultivating_bag_1==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_1==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_1==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_2==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_2==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_2==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_3==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_3==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_3==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_4==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_4==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_4==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_5==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_5==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_5==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_6==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_6==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_6==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_7==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_7==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_7==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_8==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_8==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_8==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_9==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_9==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_9==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_10==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_10==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_10==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_11==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_11==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_11==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.cultivating_bag_12==0){
                            	content += '<span class="label label-sm label-warning">培养中</span>';
                            }else if(bbesData.cultivating_bag_12==1){
                            	content += '<span class="label label-sm label-success">培养完成</span>';
                            }else if(bbesData.cultivating_bag_12==2){
                            	content += '<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
                            }else {
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';  
                            content += '</tr>';
                          
                          }
                          $("#dataBody").html(content);
                          
                          var totalno = pageObj.totalno;
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
                          pageContent += '<li><a>共' + pageObj.totalno + '页</a></li>';
                          $(".pagination").html(pageContent);
                     }else{
                    	alert("分页查询失败!!!");
                     }
                     
                }
           });
		}else if(state ==2){
			$.ajax({
                type:"POST",
                url :"${pageContext.request.contextPath}/bbesData/pageQuery.do",
                data: jsonData,
                success:function(result){ 
                     if(result.success){ //把后台返回的是一个result对象,query智能解析为json对象
                          var pageObj = result.data; //拿到json对象中的data
                       
                          var datas = pageObj.datas; //拿到data中的datas（集合）
                        
                          var headContent = "";
                          	headContent += '<tr >'
	        				headContent += '<th>编号</th>     ';
	        	        	headContent += '<th>时间</th>     ';
	        	            headContent += '<th>泵1</th>  ';
	        	            headContent += '<th>泵2</th>  ';
	        	            headContent += '<th>泵3</th>  ';
	        	            headContent += '<th>泵4</th>  ';
	        	          	headContent += '<th>泵5</th>  ';
             			 	headContent += '</tr>';
             			 	$("#dataHead").html(headContent);
                          var content = "";//拼接表格
                  		
                          for(var i = 0;i < datas.length; i++){
                              var bbesData = datas[i];//取到每一条数据
                             
                              var date = new Date(bbesData.time);
                              var Y = date.getFullYear() + '-'
                              var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-'
                              var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' '
                              var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
                              var m = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':'
                              var s = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
                              time = Y + M + D + h + m + s;
                              //alert(time); 
                              
                              content += '<tr>';
                            content += '<td>'+(i+1)+'</td>';
                            content += '<td>'+ time +'</td>';
                            content += '<td>';
                            if(bbesData.pump_1 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.pump_1 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.pump_2 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.pump_1 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.pump_3 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.pump_1 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.pump_4 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.pump_1 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.pump_5 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.pump_1 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '</tr>';
                          
                          }
                          $("#dataBody").html(content);
                          
                          var totalno = pageObj.totalno;
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
                          pageContent += '<li><a>共' + pageObj.totalno + '页</a></li>';
                          $(".pagination").html(pageContent);
                     }else{
                    	alert("分页查询失败!!!");
                     }
                     
                }
           });
		}else if(state ==3){
			$.ajax({
                type:"POST",
                url :"${pageContext.request.contextPath}/bbesData/pageQuery.do",
                data: jsonData,
                success:function(result){ 
                     if(result.success){ //把后台返回的是一个result对象,query智能解析为json对象
                          var pageObj = result.data; //拿到json对象中的data
                       
                          var datas = pageObj.datas; //拿到data中的datas（集合）
                        
                          var headContent = "";
                          	headContent += '<tr >'
	        				headContent += '<th>编号</th>     ';
	        	        	headContent += '<th>时间</th>     ';
	        	            headContent += '<th>阀1</th>  ';
	        	            headContent += '<th>阀2</th>  ';
	        	            headContent += '<th>阀3</th>  ';
	        	            headContent += '<th>阀4</th>  ';
	        	          	headContent += '<th>阀5</th>  ';
	        	            headContent += '<th>阀6</th>  ';
	        	            headContent += '<th>阀7</th>  ';
	        	            headContent += '<th>阀8</th>  ';
	        	            headContent += '<th>阀9</th>  ';
	        	            headContent += '<th>阀10</th> ';
	        	            headContent += '<th>阀11</th> ';
	        	            headContent += '<th>阀12</th> ';
	        	            headContent += '<th>阀13</th>  ';
	        	            headContent += '<th>阀14</th>  ';
	        	            headContent += '<th>阀15</th>  ';
	        	            headContent += '<th>阀16</th>  ';
	        	          	headContent += '<th>阀17</th>  ';
	        	            headContent += '<th>阀18</th>  ';
	        	            headContent += '<th>阀19</th>  ';
	        	            headContent += '<th>阀20</th>  ';
	        	            headContent += '<th>阀21</th>  ';
	        	            headContent += '<th>阀22</th> ';
	        	            headContent += '<th>阀23</th> ';
	        	            headContent += '<th>阀24</th> ';
             			 	headContent += '</tr>';
             			 	$("#dataHead").html(headContent);
                          var content = "";//拼接表格
                  		
                          for(var i = 0;i < datas.length; i++){
                              var bbesData = datas[i];//取到每一条数据
                             
                              var date = new Date(bbesData.time);
                              var Y = date.getFullYear() + '-'
                              var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-'
                              var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' '
                              var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
                              var m = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':'
                              var s = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
                              time = Y + M + D + h + m + s;
                              //alert(time); 
                              
                              content += '<tr>';
                            content += '<td>'+(i+1)+'</td>';
                            content += '<td>'+ time +'</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_1 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_1 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_1 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_1 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_2 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_2 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_3 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_3 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_4 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_4 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_5 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_5 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_6 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_6 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_7 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_7 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_8 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_8 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_9 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_9 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_10 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_10 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_11 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_11 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_12 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_12 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_13 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_13 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_14 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_14 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_15 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_15 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_16 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_16 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_17 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_17 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_18 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_18 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_19 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_19 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_20 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_20 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_21 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_21 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_22 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_22 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_23 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_23 ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '<td>';
                            if(bbesData.solenoid_valve_24 ==0){
                            	content += '<span class="label label-sm label-warning">关</span>';
                            }else if(bbesData.solenoid_valve_24s ==1){
                            	content += '<span class="label label-sm label-success">开</span>';
                            }else{
                            	content += '<span class="label label-sm label-warning">未知</span>';
                            }
                            content += '</td>';
                            content += '</tr>';
                          
                          }
                          $("#dataBody").html(content);
                          
                          var totalno = pageObj.totalno;
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
                          pageContent += '<li><a>共' + pageObj.totalno + '页</a></li>';
                          $(".pagination").html(pageContent);
                     }else{
                    	alert("分页查询失败!!!");
                     }
                     
                }
           });
		}else {
			alert("警告:下拉框状态异常!");
		}
           
      }
</script>
 <script>
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
</script>
</body>
</html>