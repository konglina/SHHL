<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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



 <!-- <div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">
			try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
		</script>

		<ul class="breadcrumb">
			<li>
				<i class="icon-home home-icon"></i>
				<a href="#">Home</a>
			</li>

			<li>
				<a href="#">接驳盒</a>
			</li>
			<li class="active">实时数据查询</li>
		</ul>.breadcrumb					
</div>

<div class="row alert alert-info" style="margin:0px; padding:6px">
	<div class="col-sm-2" style="padding-top:9px">环境参数</div>
	<h3 class="header smaller lighter blue">jQuery dataTables</h3>
</div> -->

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
			<li class="active">实时数据查询</li>
		</ul><!-- .breadcrumb -->					
</div>


<div class="page-content">
<div class="row alert alert-info" style="margin:0px; padding:3px">
	<div class="col-sm-1" style="padding-top:9px">环境数据</div>  
</div>

	<div class="row">
		<div class="col-xs-12">
			<div class="table-responsive">
					<table id="sample-table-1" class="table table-striped table-bordered table-hover">
    	<tr >
        	<th>时间</th>
            <th align="center">输入电流</th>
            <th>输入电压</th>
            <th>湿度</th>
            <th>温度1</th>
            <th>温度2</th>
            <th>温度3</th> 
            <th>温度4</th>
        </tr>
        <tr>
        	<td>2019-04-12 14:57:48</td>
            <td>0.429</td>
            <td>376.8</td>
            <td>23</td>
            <td>31.9</td>
            <td>33.8</td>
            <td>32.5</td> 
            <td>30.4</td> 
            
        </tr>    
    </table>
	</div><!-- /.table-responsive -->
	</div><!-- /span -->
</div><!-- /row -->

    <div class="row alert alert-info" style="margin:0px; padding:6px">
		<div class="col-sm-2" style="padding-top:9px">设备数据</div>
	</div>
	
    
    <div class="row">
		<div class="col-xs-12">
			<div class="table-responsive">
					<table id="sample-table-1" class="table table-striped table-bordered table-hover">
    	<tr >
        	<th>设备</th>
            <th>第一路375V输出</th>
            <th>第二路375V输出</th>
            <th>第三路YSI EXO2</th>
            <th>第四路CRDS</th>
            <th>第五路48V输出</th>
            <th>第六路BBES</th> 
            <th>第七路UVA</th>
            <th>第八路48V输出</th> 
        </tr>
        <tr>
        	<td>电压</td>
            <td>0.0</td>
            <td>0.0</td>
            <td>12.1</td>
            <td>48.2</td>
            <td>0.0</td>
            <td>48.2</td> 
            <td>48.6</td> 
            <td>0.0</td>
            
        </tr>
        <tr>
        	<td>电流</td>
            <td>0.00</td>
            <td>0.00</td>
            <td>0.15</td>
            <td>0.40</td>
            <td>0.00</td>
            <td>0.50</td> 
            <td>0.37</td> 
            <td>0.00</td>
            
        </tr>
          
    </table>
	</div><!-- /.table-responsive -->
	</div><!-- /span -->
</div><!-- /row -->
    
    <!-- Echars图 -->
    <div id="main" style="width:100%">
    	<div id="dianya" style="width: 50%;height:400px; float:left"></div>
    	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('dianya'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '设备输出电压'
            },
            tooltip: {},
            legend: {
                data:['电压/V']
            },
            xAxis: {
                data: ["第一路375V输出","第二路345V输出","第三路YSI EXO2","第四路CRDS","第五路48V输出","第六路BBES","第七路UVA","第八路48V输出"],
            	axisLabel:{
                	interval:0,//横轴信息全部显示
                	rotate:-30 //-30度角倾斜显示
                    	}

            },
            yAxis: {},
            series: [{
                name: '电压/V',
                type: 'bar',
                data: [0.0,0.0 ,12.1, 48.2, 0.0, 48.2, 48.6,0.0],
            	itemStyle:{
                	normal:{
                  	color:'#F4A460',
                  	}
           }

            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    	</script>
    	<div id="dianliu" style="width:50%;height:400px; float:right"></div>
    	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('dianliu'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '设备输出电流'
            },
            tooltip: {},
            legend: {
                data:['电流\A']
            },
            xAxis: {
                data: ["第一路375V输出","第二路345V输出","第三路YSI EXO2","第四路CRDS","第五路48V输出","第六路BBES","第七路UVA","第八路48V输出"],
            	axisLabel:{
                	interval:0,//横轴信息全部显示
                	rotate:-30 //-30度角倾斜显示
                    	}

            },
            yAxis: {},
            series: [{
                name: '电流\A',
                type: 'bar',
                data: [0.00,0.00,0.15,0.40,0.00,0.50,0.37,0.00],
            	itemStyle:{
            		normal:{
              		color:'#90EE90',
              		}
       		}
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
    </div>
    </div>
    
   
</div>
</body>
</html>