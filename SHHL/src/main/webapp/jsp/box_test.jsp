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
<div class="row">
	<!-- <div id="container" style="width: 100%;height:600px;"></div> -->
	<div class="col-sm-1" style="height: 600px;"></div>
	<div id="container" class="col-sm-10" style="height: 600px;"></div>
	<div class="col-sm-1" style="height: 600px;"></div>
</div>
       
        
       <script type="text/javascript">
			var dom = document.getElementById("container");
			var myChart = echarts.init(dom);
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
			
			    myChart.setOption({
			        series: [{
			            data: data
			        }]
			    });
			}, 1000);;
			if (option && typeof option === "object") {
			    myChart.setOption(option, true);
			}
       </script>
   </body>
</html>