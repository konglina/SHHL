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
</head>
<body>
<div style="padding:0px; margin:0px;">
	<ul class="breadcrumb" style="margin:0px; padding-left:20px">
    	<li><a>传感器</a></li>
        <li>光谱仪</li>
    </ul>
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
		   	<button type="button" class="btn btn-success" onClick="javascript:window.location='${pageContext.request.contextPath}/jsp/sensor_spectrograph_history.jsp'">查看历史数据</button>
		 </div>
	</div>
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
    					<td class="col-sm-4" id="time">${newspectrograph.TIME}</td>
    					<td class="col-sm-4" id="states">
    					<c:choose>
    						<c:when test="${newspectrograph.states<=30}"><span class="label label-sm label-warning" style="background-color:#ffde33">${newspectrograph.states}</span></c:when>
							<c:when test="${newspectrograph.states<=70&&newspectrograph.states>=30 }"><span class="label label-sm label-warning" style="background-color:#ff9933">${newspectrograph.states}</span></c:when>
							<c:when test="${newspectrograph.states>=70}"><span style = "background-color:#cc0033" class="label label-sm label-warning" style="background-color:#cc0033">${newspectrograph.states}</span></c:when>
    					</c:choose>
    					</td>
    					<td class="col-sm-4" id="consistency">${newspectrograph.consistency}</td>
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
						var myChart1 = echarts.init(document.getElementById('shishi_zhuangtai'));
						var spectrographDataList=JSON.parse('<%=request.getAttribute("spectrographDataList")%>');
						
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
						
						var states = [];
						var dataTime = [];
						for(var i=0;i<spectrographDataList.length;i++){
							states.push(spectrographDataList[i].states);
							dataTime.push(new Date(spectrographDataList[i].tIME).format("yyyy-MM-dd hh:mm:ss"));
						}
						// 指定图表的配置项和数据
						var option1 = {
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
						            name: 'states',
						            type: 'line',
						            data: states,
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
						myChart1.setOption(option1);
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
						var myChart2 = echarts.init(document.getElementById('shishi_nongdu'));
						var consistency = [];
						var dataTime = [];
						for(var i=0;i<spectrographDataList.length;i++){
							consistency.push(spectrographDataList[i].consistency);
							dataTime.push(new Date(spectrographDataList[i].tIME).format("yyyy-MM-dd hh:mm:ss"));
						}
						// 指定图表的配置项和数据
						var option2 = {
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
							        data: consistency,
							        type: 'line',
							        areaStyle: {},
							        
							    }]
						};
						// 使用刚指定的配置项和数据显示图表。
						myChart2.setOption(option2);
						
						
						//实时的刷新数据，3秒刷新一次
			        	//保存上一次的时间，对比时间可得是否更新
			        	var lasttime = "${newspectrograph.TIME}";
			        	var timeflag =0;
			        	var flag = true;
						$(document).ready(function () {
					        setInterval("startRequest()", 3000);//3s一次
					    });
						function startRequest(){
							 $.ajax({
						            url:  "${pageContext.request.contextPath}/spectrographData/realtime.do",
						            type: 'POST',
						            success: function (data) {
						            	var realtime=JSON.parse(data);//最新的数据
						            	$("#time").empty();
					                 	$("#time").text(new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"));
					                 	var statesHtml;
										if(realtime[0].states<=30){
					                 		statesHtml = '<span class="label label-sm label-warning" style="background-color:#ffde33">'+realtime[0].states+'</span>';
					                 	}else if(realtime[0].states>=30&&realtime[0].states<=70){
					                 		statesHtml = '<span class="label label-sm label-warning" style="background-color:#ff9933">'+realtime[0].states+'</span>';
					                 	}else{
					                 		statesHtml ='<span style = "background-color:#cc0033" class="label label-sm label-warning" style="background-color:#cc0033">'+realtime[0].states+'</span>';
					                 	}
					                 	$("#states").empty();
					                 	$("#states").html(statesHtml);
					                 	$("#consistency").empty();
					                 	$("#consistency").text(realtime[0].consistency);
					                 	
					                 	//如果时间时间没变，那么数据未更新
					                 	if((new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"))==(new Date(lasttime).format("yyyy-MM-dd hh:mm:ss"))){
			        	            		timeflag = timeflag + 3000;
			        	            		states.push(0);
			        	            		consistency.push(0);
			        	            		dataTime.push(new Date(realtime[0].tIME+timeflag).format("yyyy-MM-dd hh:mm:ss"));
			        	            	}else{
			        	            		states.push(realtime[0].states);
			        	            		consistency.push(realtime[0].consistency);
			        	            		dataTime.push(new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"));
			        	            		lasttime=realtime[0].tIME;
			        	                	timeflag = 0;
			        	            	}
					                 	states.shift();
					                 	consistency.shift();
					                 	dataTime.shift();
					                 	
					                 	myChart1.setOption({
			        	            		xAxis: {
			        	                	    type: 'category',
			        	                	    data: dataTime
			        	                	   },
			        	        	        series: [{
			        	        	            data: states
			        	        	        }]
			        	        	    });
					                 	
					                 	myChart2.setOption({
			        	            		xAxis: {
			        	                	    type: 'category',
			        	                	    data: dataTime
			        	                	   },
			        	        	        series: [{
			        	        	            data: consistency
			        	        	        }]
			        	        	    });
						            },
						            error : function(jqXHR) {
						                alert("发生错误：" + jqXHR.status);
						            },
						        });
							 }
					</script>
				</div>
    	</div>
	</div>
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