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
        	<th>日期</th>
        	<td>2019-04-12</td>
        </tr>
        <tr>
        	<th>时刻</th>
            <td>6:01</td>    
        </tr>    
        <tr >
            <th>Turbidity</th>
            <td>0.21</td>
        </tr>
        <tr>
            <th>TTS</th>
            <td>0.00</td>      
        </tr>   
        <tr >
            <th>Chlorophyll</th>
            <td>0.01</td>
        </tr>
        <tr>
            <th>BGA-PE</th>
            <td>0.01</td>      
        </tr>   
        <tr >
            <th>ODO</th> 
            <td>100.43</td>
        </tr>
        <tr>
            <th>Temperature</th>    
            <td>27.78</td>    
        </tr>      
        <tr >
            <th>Specific Conductance</th>
            <td>51589.16</td> 
        </tr>
        <tr>
            <th>Salinity</th>
            <td>33.83</td>
        </tr>    
        <tr >
            <th>pH</th>
            <td>7.95</td>
        </tr>
        <tr>
            <th>ORP</th>
            <td>-4.98</td>      
        </tr>    
        <tr >
            <th>Pressure</th>
            <td>7.92</td> 
        </tr>
        <tr>
            <th>Deth</th>
            <td>5.45</td>      
        </tr>    
        
    </table>
              
        </div>
		
    </div>
    
    <div class="col-sm-8">
    	<div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>近期数据趋势
          </div>
              <div class="panel-body">
             		<div id="ysi_shishi" style="width: 100%;height:520px;"></div>
              </div>
        </div>
    </div>
    	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('ysi_shishi'));
		
       
        var option = {
        	    title: {
        	        text: ''
        	    },
        	    tooltip: {
        	        trigger: 'axis'
        	    },
        	    legend: {
        	        data:['Turbidity','TTS','Chlorophyll','BGA-PE','ODO','Temperature','Specific Conductance','Salinity','pH','ORP','Pressure', 'Deth']
        	    },
        	    grid: {
        	        left: '3%',
        	        right: '4%',
        	        bottom: '3%',
        	        containLabel: true
        	    },
        	    toolbox: {
        	        feature: {
        	            saveAsImage: {}
        	        }
        	    },
        	    xAxis: {
        	        type: 'category',
        	        boundaryGap: false,
        	        data: ['周一','周二','周三','周四','周五','周六','周日']
        	    },
        	    yAxis: {
        	        type: 'value',
        	        axisLabel:{
        	        	show : false
        	        }
        	    },
        	    series: [
        	        {
        	            name:'Turbidity',
        	            type:'line',
        	            stack: '总量',
        	            data:[120, 132, 101, 134, 90, 230, 210]
        	        },
        	        {
        	            name:'TTS',
        	            type:'line',
        	            stack: '总量',
        	            data:[220, 182, 191, 234, 290, 330, 310]
        	        },
        	        {
        	            name:'Chlorophyll',
        	            type:'line',
        	            stack: '总量',
        	            data:[150, 232, 201, 154, 190, 330, 410]
        	        },
        	        {
        	            name:'BGA-PE',
        	            type:'line',
        	            stack: '总量',
        	            data:[320, 332, 301, 334, 390, 330, 320]
        	        },
        	        {
        	            name:'ODO',
        	            type:'line',
        	            stack: '总量',
        	            data:[820, 932, 901, 934, 1290, 1330, 1320]
        	        },
        	        {
        	            name:'Temperature',
        	            type:'line',
        	            stack: '总量',
        	            data:[825, 954, 985, 947, 1324, 1255, 1185]
        	        },
        	        {
        	            name:'Specific Conductance',
        	            type:'line',
        	            stack: '总量',
        	            data:[835, 964, 995, 937, 1200, 1255, 1200]
        	        },
        	        {
        	            name:'Salinity',
        	            type:'line',
        	            stack: '总量',
        	            data:[845, 964, 995, 957, 1424, 1355, 1085]
        	        },
        	        {
        	            name:'pH',
        	            type:'line',
        	            stack: '总量',
        	            data:[855, 974, 1005, 1147, 1224, 1355, 1285]
        	        },
        	        {
        	            name:'ORP',
        	            type:'line',
        	            stack: '总量',
        	            data:[865, 854, 1085, 1047, 1124, 1055, 985]
        	        },
        	        {
        	            name:'Pressure',
        	            type:'line',
        	            stack: '总量',
        	            data:[870, 754, 1185, 1247, 1424, 1555, 1385]
        	        },
        	        {
        	            name:'Deth',
        	            type:'line',
        	            stack: '总量',
        	            data:[885, 954, 985, 1347, 1224, 1155, 1085]
        	        }
        	        
        	    ]
        	};


        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    	</script>
    	</div>
	</div>
	<!-- shishi_end -->
    <!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">实时数据</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-5">
                	<input type="text" readonly="readonly" name="staffId" class="form-control input-sm" placeholder="自动生成编号"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">姓名</label>
                <div class="col-sm-9">
                	<input type="text" name="staffName" class="form-control input-sm" placeholder="请输入姓名"/>
                </div>
            </div>
        </div>
    </div>
    开始2
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">年龄</label>
                <div class="col-sm-3">
                	<input type="text" name="staffAge" class="form-control input-sm" placeholder="请输入年龄"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">性别</label>
                <div class="col-sm-5">
                	<select name="staffSex">
                    	<option>保密</option>
                        <option>男</option>
                        <option>女</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    结束2
     开始3
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">籍贯</label>
                <div class="col-sm-9">
                	<input type="text" name="staffNativePlace" class="form-control input-sm" placeholder="请输入籍贯"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">身份证号码</label>
                <div class="col-sm-9">
                	<input type="text" name="staffIdcard" class="form-control input-sm" placeholder="请输入籍贯"/>
                </div>
            </div>
        </div>
    </div>
    结束3
      开始4
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">出生日期</label>
                <div class="col-sm-5">
                	<input type="text" readonly="readonly" name="staffBirthday" class="form-control input-sm" onclick="WdatePicker()" placeholder="请输入出生日期"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">办公电话</label>
                <div class="col-sm-9">
                	<input type="text" name="staffOfficePhone" class="form-control input-sm" placeholder="请输入办公电话"/>
                </div>
            </div>
        </div>
    </div>
    结束4
      开始5
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">电子邮件</label>
                <div class="col-sm-9">
                	<input type="text" name="staffEmail" class="form-control input-sm" placeholder="请输入电子邮件"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">移动电话</label>
                <div class="col-sm-9">
                	<input type="text" name="staffMobilePhone" class="form-control input-sm" placeholder="请输入移动电话"/>
                </div>
            </div>
        </div>
    </div>
    结束5
      开63
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭住址</label>
                <div class="col-sm-9">
                	<input type="text" name="staffAddr" class="form-control input-sm" placeholder="请输入家庭住址"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">QQ</label>
                <div class="col-sm-9">
                	<input type="text" name="staffQq" class="form-control input-sm" placeholder="请输入QQ"/>
                </div>
            </div>
        </div>
    </div>
    结束6
      开76
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入职时间</label>
                <div class="col-sm-5">
                	<input type="text" readonly="readonly" name="staffEntryTime" class="form-control input-sm " onclick="WdatePicker()" placeholder="请输入入职时间"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教育水平</label>
                <div class="col-sm-9">
                	<select class="form-control" name="staffEduLevel">
                    	<option>保密</option>
                        <option>博士</option>
                        <option>硕士</option>
                        <option>本科</option>
                    </select>
                </div>
            </div>
        </div>
    </div> -->
    <!--结束7-->
    <!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0px; margin-bottom:5px">历史数据查询</h5> -->
      <!--备注-->
    <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">历史数据查询</div>
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
	   <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					指标&nbsp;
				</span>
	    	<select class="form-control">
	    		<option>请选择...</option>
	        	<option>Turbidity</option>
	            <option>TTS</option>
	            <option>Chlorophyll</option>
	            <option>BGA-PE</option>
	            <option>ODO</option>
	            <option>Temperature</option>
	            <option>Specific Conductance</option>
	            <option>Salinity</option>
	            <option>pH</option>
	            <option>ORP</option>
	            <option>Pressure</option>
	            <option>Deth</option>
	        </select>
	    	</div>
	    </div>
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<input type="button" class="btn btn-danger" value="查询"/>
		 </div>
	</div>
</form>
<div class="row"  style="padding:15px; padding-top:0px;margin-top:2px;" >
		<table class="table table-condensed table-striped table-bordered table-hover">
    	<tr >
        	<th>Time</th>
            <th>Turbidity</th>
            <th>TTS</th>
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
        <tr>
        	<td><a href="#">2019-06-09 14:57:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
           
        </tr>
		<tr>
        	<td><a href="#">2019-06-09 14:59:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 15:00:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td> 
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:01:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td> 
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:02:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:03:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:04:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:05:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
        </tr>
         <tr>
        	<td><a href="#">2019-06-09 14:06:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            <td>13</td>
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