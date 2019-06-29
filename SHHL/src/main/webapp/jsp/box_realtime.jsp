<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<li class="active">实时数据</li>
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
        	<td id="time"><fmt:formatDate value="${boxEnv.TIME}" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></td>
         	<td id="inCurrent"><fmt:formatNumber type="number" value="${boxEnv.inCurrent}" pattern="0.00" maxFractionDigits="2"/></td>
         	<td id="inVoltage"><fmt:formatNumber type="number" value="${boxEnv.inVoltage}" pattern="0.00" maxFractionDigits="2"/></td>
         	<td id="humidity"><fmt:formatNumber type="number" value="${boxEnv.humidity}" pattern="0.00" maxFractionDigits="2"/></td>
         	<td id="temperature1"><fmt:formatNumber type="number" value="${boxEnv.temperature1}" pattern="0.00" maxFractionDigits="2"/></td>
         	<td id="temperature2"><fmt:formatNumber type="number" value="${boxEnv.temperature2}" pattern="0.00" maxFractionDigits="2"/></td>
         	<td id="temperature3"><fmt:formatNumber type="number" value="${boxEnv.temperature3}" pattern="0.00" maxFractionDigits="2"/></td>
         	<td id="temperature4"><fmt:formatNumber type="number" value="${boxEnv.temperature4}" pattern="0.00" maxFractionDigits="2"/></td>
            
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
            <td id="outVoltage1"><fmt:formatNumber type="number" value="${boxEnv.outVoltage1}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outVoltage2"><fmt:formatNumber type="number" value="${boxEnv.outVoltage2}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outVoltage3"><fmt:formatNumber type="number" value="${boxEnv.outVoltage3}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outVoltage4"><fmt:formatNumber type="number" value="${boxEnv.outVoltage4}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outVoltage5"><fmt:formatNumber type="number" value="${boxEnv.outVoltage5}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outVoltage6"><fmt:formatNumber type="number" value="${boxEnv.outVoltage6}" pattern="0.00" maxFractionDigits="2"/></td> 
            <td id="outVoltage7"><fmt:formatNumber type="number" value="${boxEnv.outVoltage7}" pattern="0.00" maxFractionDigits="2"/></td> 
            <td id="outVoltage8"><fmt:formatNumber type="number" value="${boxEnv.outVoltage8}" pattern="0.00" maxFractionDigits="2"/></td>
            
        </tr>
        <tr>
        	<td>电流</td>
            <td id="outCurrent1"><fmt:formatNumber type="number" value="${boxEnv.outCurrent1}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outCurrent2"><fmt:formatNumber type="number" value="${boxEnv.outCurrent2}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outCurrent3"><fmt:formatNumber type="number" value="${boxEnv.outCurrent3}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outCurrent4"><fmt:formatNumber type="number" value="${boxEnv.outCurrent4}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outCurrent5"><fmt:formatNumber type="number" value="${boxEnv.outCurrent5}" pattern="0.00" maxFractionDigits="2"/></td>
            <td id="outCurrent6"><fmt:formatNumber type="number" value="${boxEnv.outCurrent6}" pattern="0.00" maxFractionDigits="2"/></td> 
            <td id="outCurrent7"><fmt:formatNumber type="number" value="${boxEnv.outCurrent7}" pattern="0.00" maxFractionDigits="2"/></td> 
            <td id="outCurrent8"><fmt:formatNumber type="number" value="${boxEnv.outCurrent8}" pattern="0.00" maxFractionDigits="2"/></td>
            
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
        var boxNewest=JSON.parse('<%=request.getAttribute("boxEnvJson")%>');
        var voltageData = [];
        voltageData.push(boxNewest.outVoltage1.toFixed(2));
        voltageData.push(boxNewest.outVoltage2.toFixed(2));
        voltageData.push(boxNewest.outVoltage3.toFixed(2));
        voltageData.push(boxNewest.outVoltage4.toFixed(2));
        voltageData.push(boxNewest.outVoltage5.toFixed(2));
        voltageData.push(boxNewest.outVoltage6.toFixed(2));
        voltageData.push(boxNewest.outVoltage7.toFixed(2));
        voltageData.push(boxNewest.outVoltage8.toFixed(2));
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
                data: voltageData,
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
        var myChart2 = echarts.init(document.getElementById('dianliu'));
		var currentData = [];
		
		currentData.push(boxNewest.outCurrent1.toFixed(2));
		currentData.push(boxNewest.outCurrent2.toFixed(2));
		currentData.push(boxNewest.outCurrent3.toFixed(2));
		currentData.push(boxNewest.outCurrent4.toFixed(2));
		currentData.push(boxNewest.outCurrent5.toFixed(2));
		currentData.push(boxNewest.outCurrent6.toFixed(2));
		currentData.push(boxNewest.outCurrent7.toFixed(2));
		currentData.push(boxNewest.outCurrent8.toFixed(2));
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
                data: currentData,
            	itemStyle:{
            		normal:{
              		color:'#90EE90',
              		}
       		}
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart2.setOption(option);
        
      //定时刷新
        $(document).ready(function () {

              setInterval("startRequest()", 5000);//5s一次

          });
          function startRequest() {
              $.ajax({
                  url:  "${pageContext.request.contextPath}/boxenv/box_realtime.do",
                  type: 'POST',
                  success: function (result) {
                     	if(result.success){
                     		var boxEnv = result.data;
                     		
                   		    var date = new Date(boxEnv.time);
                            var Y = date.getFullYear() + '-'
                            var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-'
                            var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' '
                            var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
                            var m = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':'
                            var s = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
                            var time = Y + M + D + h + m + s;
                            
                            $("#time").empty();
                     		$("#time").text(time);
                     		
                     		$("#inCurrent").empty();
                     		$("#inCurrent").text((boxEnv.inCurrent).toFixed(2));
                     		$("#inVoltage").empty();
                     		$("#inVoltage").text(boxEnv.inVoltage.toFixed(2));
                     		$("#humidity").empty();
                     		$("#humidity").text(boxEnv.humidity.toFixed(2));
                     		$("#temperature1").empty();
                     		$("#temperature1").text(boxEnv.temperature1.toFixed(2));
                     		$("#temperature2").empty();
                     		$("#temperature2").text(boxEnv.temperature2.toFixed(2));
                     		$("#temperature3").empty();
                     		$("#temperature3").text(boxEnv.temperature3.toFixed(2));
                     		$("#temperature4").empty();
                     		$("#temperature4").text(boxEnv.temperature4.toFixed(2));
                     		
                     		$("#outVoltage1").empty();
                     		$("#outVoltage1").text(boxEnv.outVoltage1.toFixed(2));
                     		$("#outVoltage2").empty();
                     		$("#outVoltage2").text(boxEnv.outVoltage2.toFixed(2));
                     		$("#outVoltage3").empty();
                     		$("#outVoltage3").text(boxEnv.outVoltage3.toFixed(2));
                     		$("#outVoltage4").empty();
                     		$("#outVoltage4").text(boxEnv.outVoltage4.toFixed(2));
                     		$("#outVoltage5").empty();
                     		$("#outVoltage5").text(boxEnv.outVoltage5.toFixed(2));
                     		$("#outVoltage6").empty();
                     		$("#outVoltage6").text(boxEnv.outVoltage6.toFixed(2));
                     		$("#outVoltage7").empty();
                     		$("#outVoltage7").text(boxEnv.outVoltage7.toFixed(2));
                     		$("#outVoltage8").empty();
                     		$("#outVoltage8").text(boxEnv.outVoltage8.toFixed(2));
                     		
                     		
                     		$("#outCurrent1").empty();
                     		$("#outCurrent1").text(boxEnv.outCurrent1.toFixed(2));
                     		$("#outCurrent2").empty();
                     		$("#outCurrent2").text(boxEnv.outCurrent2.toFixed(2));
                     		$("#outCurrent3").empty();
                     		$("#outCurrent3").text(boxEnv.outCurrent3.toFixed(2));
                     		$("#outCurrent4").empty();
                     		$("#outCurrent4").text(boxEnv.outCurrent4.toFixed(2));
                     		$("#outCurrent5").empty();
                     		$("#outCurrent5").text(boxEnv.outCurrent5.toFixed(2));
                     		$("#outCurrent6").empty();
                     		$("#outCurrent6").text(boxEnv.outCurrent6.toFixed(2));
                     		$("#outCurrent7").empty();
                     		$("#outCurrent7").text(boxEnv.outCurrent7.toFixed(2));
                     		$("#outCurrent8").empty();
                     		$("#outCurrent8").text(boxEnv.outCurrent8.toFixed(2));
                     		
                     		var voltageData = [];
	      	               	 voltageData.push(boxEnv.outVoltage1.toFixed(2));
	      	                 voltageData.push(boxEnv.outVoltage2.toFixed(2));
	      	                 voltageData.push(boxEnv.outVoltage3.toFixed(2));
	      	                 voltageData.push(boxEnv.outVoltage4.toFixed(2));
	      	                 voltageData.push(boxEnv.outVoltage5.toFixed(2));
	      	                 voltageData.push(boxEnv.outVoltage6.toFixed(2));
	      	                 voltageData.push(boxEnv.outVoltage7.toFixed(2));
	      	                 voltageData.push(boxEnv.outVoltage8.toFixed(2));
	      	                 var currentData = [];
      	         			
	      	         		 currentData.push(boxEnv.outCurrent1.toFixed(2));
	      	         		 currentData.push(boxEnv.outCurrent2.toFixed(2));
	      	         		 currentData.push(boxEnv.outCurrent3.toFixed(2));
	      	         		 currentData.push(boxEnv.outCurrent4.toFixed(2));
	      	         		 currentData.push(boxEnv.outCurrent5.toFixed(2));
	      	         		 currentData.push(boxEnv.outCurrent6.toFixed(2));
	      	         		 currentData.push(boxEnv.outCurrent7.toFixed(2));
	      	         		 currentData.push(boxEnv.outCurrent8.toFixed(2));
	      	         		  myChart.setOption({
	                      	        series: [{
	                      	            data: voltageData
	                      	        }]
	                      	    });
	      	         		  myChart2.setOption({
                      	        series: [{
                      	            data: currentData
                      	        }]
                      	    });
                     	}else{
                     		
                     	}
                  },
                  error : function(jqXHR) {

                      alert("发生错误：" + jqXHR.status);
                  },
              });
          }


      	
    </script>
    </div>
    </div>
</body>
<script type="text/javascript">

</script>
</html>