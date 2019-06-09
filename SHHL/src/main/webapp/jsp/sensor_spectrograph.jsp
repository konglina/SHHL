<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
<div style="padding:0px; margin:0px;">
	<ul class="breadcrumb" style="margin:0px; padding-left:20px">
    	<li><a>传感器</a></li>
        <li>BBES</li>
    </ul>
</div>

<form action="${pageContext.request.contextPath}/system/add.do" method="post" class="form-horizontal">
	<!-- shishi_start -->
	<div>
    	<h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:3px;">实时数据</h5>
    	<div style="margin: 0px;padding: 3px">
    		<!-- shishi_table -->
    		<div >
    			<table id="sample-table-1" class="table table-striped table-bordered table-hover" >
    			
    				<tr class="row">
    					<th class="col-sm-4">时间</th>
    					<th class="col-sm-4">状态</th>
    					<th class="col-sm-4">浓度</th>
    				</tr>
    				<tr class="row">
    					<td class="col-sm-4">2019-6-9 17:46</td>
    					<td class="col-sm-4"><span class="label label-sm label-warning">35</span></td>
    					<td class="col-sm-4">1.82</td>
    				</tr>
    			</table>
    		</div>
    		
    		<!-- shishi_picture -->
    		<div class="row">
    			<div class="col-sm-6" style="">
		 			<div class="panel panel-default" >
          				<div class="panel-heading" style=" padding:3px;height:30px;"  >
            				<span class="glyphicon glyphicon-refresh"></span>状态
          				</div>
              			<div class="panel-body">
             				<div id="shishi_zhuangtai" class="col-sm-12" style="height: 300px;"></div>
              			</div>
        			</div>
				</div>
					<script type="text/javascript">
						// 基于准备好的dom，初始化echarts实例
						var a =0;
						
						var myChart = echarts.init(document.getElementById('shishi_zhuangtai'));
						
						var data = [];
						
						for(var i = 0;i<30;i++){
							data.push(Math.random()*100+1)
						}
						
						var dataTime = [];
						var time = new Date();
						for(var i = 0;i<30;i++){
							m = 0+i*2
							value = [2019,time.getMonth(),9].join('/')+" 22:"+m
							
							
							 
							dataTime.push(value)
						}
						
						
						// 指定图表的配置项和数据
						var option = {
								title: {
						            text: '近期状态趋势'
						        },
						        tooltip: {
						            trigger: 'axis'
						        },
						        xAxis: {
						            data:dataTime
						        },
						        yAxis: {
						            splitLine: {
						                show: false
						            },
						           
						        },
						        toolbox: {
						            left: 'center',
						            feature: {
						                dataZoom: {
						                    yAxisIndex: 'none'
						                },
						                restore: {},
						                saveAsImage: {}
						            }
						        },
						        dataZoom: [{
						            startValue: '2014-06-01'
						        }, {
						            type: 'inside'
						        }],
						        visualMap: {
						            top: 10,
						            right: 10,
						            pieces: [{
						                gt: 0,
						                lte: 30,
						                color: '#ffde33'
						            }, {
						                gt: 30,
						                lte: 70,
						                color: '#ff9933'
						            }, {
						                gt: 70,
						                lte: 100,
						                color: '#cc0033'
						            }],
						            outOfRange: {
						                color: '#999'
						            }
						        },
						        series: {
						            name: 'Beijing AQI',
						            type: 'line',
						            data: data,
						            markLine: {
						                silent: true,
						                data: [{
						                    yAxis: 30
						                }, {
						                    yAxis: 70
						                }, {
						                    yAxis: 100
						                }, {
						                    yAxis: 150
						                }]
						            }
						        }
						};

						// 使用刚指定的配置项和数据显示图表。
						myChart.setOption(option);
					</script>
					<div class="col-sm-6" style="">
		 			<div class="panel panel-default" >
          				<div class="panel-heading" style=" padding:3px;height:30px;"  >
            				<span class="glyphicon glyphicon-refresh"></span>浓度
          				</div>
              			<div class="panel-body">
             				<div id="shishi_nongdu" class="col-sm-12" style="height: 300px;"></div>
              			</div>
        			</div>
				</div>
					<script type="text/javascript">
						// 基于准备好的dom，初始化echarts实例
						var myChart = echarts.init(document
								.getElementById('shishi_nongdu'));
						
						var data = [];
						
						for(var i = 0;i<30;i++){
							data.push(1.82+Math.random()-0.5)
						}
						
						var dataTime = [];
						var time = new Date();
						for(var i = 0;i<30;i++){
							m = 0+i*2
							value = [2019,time.getMonth(),9].join('/')+" 22:"+m
							
							
							 
							dataTime.push(value)
						}
						
						

						// 指定图表的配置项和数据
						var option = {
							title : {
								text:"近期浓度趋势"
							},
							
							
							 xAxis: {
								 type: 'category',
							        boundaryGap: false,
						            data:dataTime
						        },
						        yAxis: {
						        	type: 'value',
						            min:0
						        },
							    series: [{
							        data: data,
							        type: 'line',
							        areaStyle: {},
							        
							    }]
						};

						// 使用刚指定的配置项和数据显示图表。
						myChart.setOption(option);
					</script>
				</div>
    	</div>
	</div>
	
	<!-- shishi_end -->
    <!--结束7-->
    <!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0px; margin-bottom:5px">历史数据查询</h5> -->
      <!--备注-->
   
 <div class="page-content">
<div class="row alert alert-info" style="margin:0px; padding:3px">
	<div class="col-sm-1" style="padding-top:9px">历史数据查询</div>
    <div class="col-sm-2" style="padding-top:4px;">
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
   
   <div class="col-sm-2" style="padding-top:4px;">
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
   <div class="col-sm-1" style="padding-top:4px;">
   	<input type="button" class="btn btn-danger" value="查询"/>
   </div>
   
</div>
</div>
<div class="row" style="padding:15px; padding-top:0px;margin-top:3px;" >
	<table class="table table-condensed table-striped table-bordered table-hover">
    	<tr class = "row">
        	<th class="col-sm-4">时间</th>
            <th class="col-sm-4">状态</th>
            <th class="col-sm-4">浓度</th>
           
         
        </tr>
        <tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 14:57:48</a></td>
            <td><span class="label label-sm label-warning" background-color="#ff9933">53</span></td>
            <td>13</td>
           
        </tr>
		<tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 14:59:48</a></td>
            <td><span style = "background-color:#cc0033" class="label label-sm label-warning" background-color="#cc0033">71</span></td>
            <td>13</td>
        </tr>
        <tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 15:00:48</a></td>
            <td><span class="label label-sm label-warning" style="background-color:#ffde33">26</span></td>
            <td>2.3</td> 
        </tr>
        <tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 14:01:48</a></td>
            <td><span class="label label-sm label-warning" style="background-color:#ff9933">35</span></td>
            <td>2.0</td> 
        </tr>
        <tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 14:02:48</a></td>
            <td><span class="label label-sm label-warning" style="background-color:#ff9933">34</span></td>
            <td>1.4</td>
        </tr>
        <tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 14:03:48</a></td>
            <td><span class="label label-sm label-warning" style="background-color:#ff9933">40</span></td>
            <td>1.32</td>
        </tr>
        <tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 14:04:48</a></td>
            <td><span class="label label-sm label-warning" style="background-color:#ffde33">26</span></td>
            <td>1.30</td>
        </tr>
        <tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 14:05:48</a></td>
            <td><span class="label label-sm label-warning" style="background-color:#ff9933">35</span></td>
            <td>1.50</td>
        </tr>
         <tr class = "row">
        	<td class="col-sm-4"><a href="#">2019-06-09 14:06:48</a></td>
            <td><span class="label label-sm label-warning" style="background-color:#ff9933">37</span></td>
            <td>1.82</td>
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
</form>
<script>
//执行一个laydate实例
	laydate.render({
	  elem: '#test1' //指定元素
	});
	laydate.render({
		  elem: '#test2' //指定元素
		});
</script>
</body>
</html>