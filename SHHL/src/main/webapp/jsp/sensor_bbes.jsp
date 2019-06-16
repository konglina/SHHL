<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">实时数据</h5>
	<!-- BBES_shishi_start -->
<div  style="padding:2px; margin:0px;"  >
<div class="row" style="" >
		 		<div class="col-sm-8">
					          <div class="panel panel-default">
						          <div class="panel-heading"  style=" padding:3px;height:30px;"  >
						            <span class="glyphicon glyphicon-refresh"></span>培养袋状态
						          </div> 
						          <table class="table table-condensed table-striped table-bordered table-hover">
							<tr>
								<th>时间</th>
								<th>培养袋1</th>
								<th>培养袋2</th>
								<th>培养袋3</th>
								<th>培养袋4</th>
								<th>培养袋5</th>
								<th>培养袋6</th>
								<th>培养袋7</th>
								<th>培养袋8</th>
								<th>培养袋9</th>
								<th>培养袋10</th>
								<th>培养袋11</th>
								<th>培养袋12</th>
							</tr>
							<tr>
								<td><a
									href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12
										14:57:48</a></td>
								<td><span class="label label-sm label-success">培养完成</span></td>
								<td><span class="label label-sm label-success">培养完成</span></td>
								<td><span class="label label-sm label-success">培养完成</span></td>
								<td><span class="label label-sm label-success">培养完成</span></td>
								<td><span class="label label-sm label-success">培养完成</span></td>
								<td><span class="label label-sm label-warning">培养中</span></td>
								<td><span class="label label-sm label-warning">培养中</span></td>
								<td><span class="label label-sm label-warning">培养中</span></td>
								<td><span class="label label-sm label-warning">培养中</span></td>
								<td><span
									class="label label-sm label-info arrowed arrowed-righ">等待</span></td>
								<td><span
									class="label label-sm label-info arrowed arrowed-righ">等待</span></td>
								<td><span
									class="label label-sm label-info arrowed arrowed-righ">等待</span></td>
							</tr>
						</table>
					         </div>
				         </div> 
				<div class="col-sm-4">
					          <div class="panel panel-default">
						          <div class="panel-heading"  style=" padding:3px;height:30px;"  >
						            <span class="glyphicon glyphicon-refresh"></span>泵状态
						          </div> 
						          <table class="table table-condensed table-striped table-bordered table-hover">
									<tr>
										<th>时间</th>
										<th>泵1</th>
										<th>泵2</th>
										<th>泵3</th>
										<th>泵4</th>
										<th>泵5</th>
									</tr>
									<tr>
										<td><a
											href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12
												14:57:48</a></td>
										<td><span class="label label-sm label-success">开</span></td>
										<td><span class="label label-sm label-success">开</span></td>
										<td><span class="label label-sm label-success">开</span></td>
										<td><span class="label label-sm label-warning">关</span></td>
										<td><span class="label label-sm label-success">开</span></td>
									</tr>
								</table>
					         </div>
				         </div> 
</div>
<div class="row">
 	
		 	<div class="col-sm-12">
		 			<div class="panel panel-default">
						          <div class="panel-heading"  style=" padding:3px;height:30px;"  >
						            <span class="glyphicon glyphicon-refresh"></span>阀状态
						          </div> 
						          <table class="table table-condensed table-striped table-bordered table-hover">
									<tr>
							<th>时间</th>
							<th>阀1</th>
							<th>阀2</th>
							<th>阀3</th>
							<th>阀4</th>
							<th>阀5</th>
							<th>阀6</th>
							<th>阀7</th>
							<th>阀8</th>
							<th>阀9</th>
							<th>阀10</th>
							<th>阀11</th>
							<th>阀12</th>
							<th>阀13</th>
							<th>阀14</th>
							<th>阀15</th>
							<th>阀16</th>
							<th>阀17</th>
							<th>阀18</th>
							<th>阀19</th>
							<th>阀20</th>
							<th>阀21</th>
							<th>阀22</th>
							<th>阀23</th>
							<th>阀24</th>
						</tr>
						<tr>
							<td><a
								href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12
									14:57:48</a></td>
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							<td><span
								class="label label-sm label-success">开</span></td>
							<td><span
								class="label label-sm label-warning">关</span></td>
							<td><span
								class="label label-sm label-warning">关</span></td>
						
							<td><span
								class="label label-sm label-success">开</span></td>
							<td><span
								class="label label-sm label-success">开</span></td>
							<td><span
								class="label label-sm label-success">开</span></td>		
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-success">开</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							<td><span class="label label-sm label-warning">关</span></td>
							
						</tr>
								</table>
					         </div>
		 	<%-- 	<table class="table table-condensed table-striped table-bordered table-hover">
		
						<tr>
							<th>时间</th>
							<th>阀1</th>
							<th>阀2</th>
							<th>阀3</th>
							<th>阀4</th>
							<th>阀5</th>
							<th>阀6</th>
							<th>阀7</th>
							<th>阀8</th>
							<th>阀9</th>
							<th>阀10</th>
							<th>阀11</th>
							<th>阀12</th>
							<th>阀13</th>
							<th>阀14</th>
							<th>阀15</th>
							<th>阀16</th>
							<th>阀17</th>
							<th>阀18</th>
							<th>阀19</th>
							<th>阀20</th>
							<th>阀21</th>
							<th>阀22</th>
							<th>阀23</th>
							<th>阀24</th>
						</tr>
						<tr>
							<td><a
								href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12
									14:57:48</a></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-warning">培养中</span></td>
							<td><span class="label label-sm label-warning">培养中</span></td>
							<td><span class="label label-sm label-warning">培养中</span></td>
							<td><span class="label label-sm label-warning">培养中</span></td>
							<td><span
								class="label label-sm label-info arrowed arrowed-righ">等待</span></td>
							<td><span
								class="label label-sm label-info arrowed arrowed-righ">等待</span></td>
							<td><span
								class="label label-sm label-info arrowed arrowed-righ">等待</span></td>
						
							<td><span
								class="label label-sm label-info arrowed arrowed-righ">等待</span></td>
							<td><span
								class="label label-sm label-info arrowed arrowed-righ">等待</span></td>
							<td><span
								class="label label-sm label-info arrowed arrowed-righ">等待</span></td>		
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-success">培养完成</span></td>
							<td><span class="label label-sm label-warning">培养中</span></td>
							<td><span class="label label-sm label-warning">培养中</span></td>
							<td><span class="label label-sm label-warning">培养中</span></td>
							<td><span class="label label-sm label-warning">培养中</span></td>
							
						</tr>
					</table> --%>
				</div>
</div>
</div>
<div  style="padding:2px; margin:0px;"  >
<div class="row">
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电压
          </div>
              <div class="panel-body">
             		<div id="shishi_container1" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电流
          </div>
              <div class="panel-body">
             		<div id="shishi_container2" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>温度
          </div>
              <div class="panel-body">
             		<div id="shishi_container3" class="col-sm-12" style="height: 300px;"></div>
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
             		<div id="shishi_container4"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>压力
          </div>
              <div class="panel-body">
             		<div id="shishi_container5"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>盐度
          </div>
              <div class="panel-body">
             		<div id="shishi_container6"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
</div>
</div>
<script type="text/javascript">
	//container1
	var dom1 = document.getElementById("shishi_container1");
	var myChart = echarts.init(dom1);
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
	        text: '近期趋势'
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
	
	    myChart.setOption({
	        series: [{
	            data: data
	        }]
	    });
	}, 1000);;
	
	if (option && typeof option === "object") {
	    myChart.setOption(option, true);
	}
	
	
	
	
	//container2
	var dom2 = document.getElementById("shishi_container2");
	var myChart2 = echarts.init(dom2);
	if (option && typeof option === "object") {
	    myChart2.setOption(option, true);
	}
	//container3
	var dom3 = document.getElementById("shishi_container3");
	var myChart3 = echarts.init(dom3);
	if (option && typeof option === "object") {
	    myChart3.setOption(option, true);
	}
	//container4
	var dom4 = document.getElementById("shishi_container4");
	var myChart4 = echarts.init(dom4);
	if (option && typeof option === "object") {
	    myChart4.setOption(option, true);
	}
	//container5
	var dom5 = document.getElementById("shishi_container5");
	var myChart5 = echarts.init(dom5);
	if (option && typeof option === "object") {
	    myChart5.setOption(option, true);
	}
	//container6
	var dom6 = document.getElementById("shishi_container6");
	var myChart6 = echarts.init(dom6);
	if (option && typeof option === "object") {
	    myChart6.setOption(option, true);
	}
	
	
 </script>
  <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">数据趋势查询</div>
		 <div class="col-sm-2" style="padding-top:5px">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					开始&nbsp;
				</span>
				<input type="text" id="test1" class="form-control">
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
				<input type="text" id="test2" class="form-control">
				<span class="input-group-addon">
					<i class="icon-calendar"></i>
				</span>
			</div>
	   </div>
	  
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<input type="button" class="btn btn-danger" value="查询"/>
		 </div>
	</div>

<div  style="padding:2px; margin:0px;"  >
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

<div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">数据状态查询</div>
		 <div class="col-sm-2" style="padding-top:5px">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					开始&nbsp;
				</span>
				<input type="text" id="test3" class="form-control">
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
				<input type="text" id="test4" class="form-control">
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
	    	<select class="form-control">
	        	<option>培养袋状态</option>
	            <option>泵状态</option>
	            <option>阀状态</option> 
	        </select>
	    	</div>
	    </div>
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<input type="button" class="btn btn-danger" value="查询"/>
		 </div>
</div>
</div>
<script type="text/javascript">
	//container1
	var dom1 = document.getElementById("container1");
	var myChart = echarts.init(dom1);
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
	var now = +new Date(2019, 9, 3);
	var oneDay = 24 * 3600 * 1000;
	var value = Math.random() * 1000;
	for (var i = 0; i < 1000; i++) {
	    data.push(randomData());
	}
	
	option = {
	    title: {
	        text: ''
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
	
	    myChart.setOption({
	        series: [{
	            data: data
	        }]
	    });
	}, 1000);;
	if (option && typeof option === "object") {
	    myChart.setOption(option, true);
	}
	
	//container2
	var dom2 = document.getElementById("container2");
	var myChart2 = echarts.init(dom2);
	if (option && typeof option === "object") {
	    myChart2.setOption(option, true);
	}
	//container3
	var dom3 = document.getElementById("container3");
	var myChart3 = echarts.init(dom3);
	if (option && typeof option === "object") {
	    myChart3.setOption(option, true);
	}
	//container4
	var dom4 = document.getElementById("container4");
	var myChart4 = echarts.init(dom4);
	if (option && typeof option === "object") {
	    myChart4.setOption(option, true);
	}
	//container5
	var dom5 = document.getElementById("container5");
	var myChart5 = echarts.init(dom5);
	if (option && typeof option === "object") {
	    myChart5.setOption(option, true);
	}
	//container6
	var dom6 = document.getElementById("container6");
	var myChart6 = echarts.init(dom6);
	if (option && typeof option === "object") {
	    myChart6.setOption(option, true);
	}
 </script>
<div class="row" style="padding:15px; padding-top:0px;" >
			<table class="table table-condensed table-striped table-bordered table-hover">
    	<tr >
        	<th>时间</th>
            <th>培养袋1</th>
            <th>培养袋2</th>
            <th>培养袋3</th>
            <th>培养袋4</th>
          	<th>培养袋5</th>
            <th>培养袋6</th>
            <th>培养袋7</th>
            <th>培养袋8</th>
            <th>培养袋9</th>
            <th>培养袋10</th>
            <th>培养袋11</th>
            <th>培养袋12</th>
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
             <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>    
        </tr>
		<tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
           <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
             <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
         
        
        </tr>
        <tr>
        <td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
           	<td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
             <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
             <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
       
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
     
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
             <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
      
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
     
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
       
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        </tr>
         <tr>
        <td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
      
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
           <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
    
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
           <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
    
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-success">培养完成</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
      
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
    
        </tr>
        <tfoot>
        	<tr>
        		<td colspan="100%" align="center">
        		 <ul class="pagination">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
        	</td>
        	</tr>
        	
        </tfoot> 
    </table>	
</div>
 <script>
//执行一个laydate实例
laydate.render({
  elem: '#test1' //指定元素
});
laydate.render({
	  elem: '#test2' //指定元素
	});
laydate.render({
	  elem: '#test3' //指定元素
});
laydate.render({
	  elem: '#test4' //指定元素
	});
</script>
</body>
</html>