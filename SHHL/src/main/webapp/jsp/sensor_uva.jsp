<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">
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
			<li class="active">UVA</li>
		</ul><!-- .breadcrumb -->					
</div>


<form action="${pageContext.request.contextPath}/system/add.do" method="post" class="form-horizontal">
	<!-- 实时数据 -->
	<div>
		<h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">实时数据</h5>
		<div class="col-sm-5">
			<label class="col-sm-2 control-label">系统时间:</label>
            <div class="col-sm-3 control-label" >
                	2019/6/8 15:04
        	</div>
        </div>
		<!-- 电压波形 -->
		<div id="dianya_shishi" style="width:100%;height:310px"></div>
		<script type="text/javascript">
        	// 基于准备好的dom，初始化echarts实例
        	var myChart = echarts.init(document.getElementById('dianya_shishi'));
        	var data = [];
			
			for(var i = 0;i<821;i++){
				data.push(-614.57+(Math.sin(i/20)*0.5+(Math.random()*2-1)*0.5)*600)
			}
			
			var dataTime = [];
			var time = new Date();
			for(var i = 0;i<821;i++){
				
				dataTime.push(i+1)
			}
        	// 指定图表的配置项和数据
        	var option = {
        			
        			
            	title: {
                	text: '电压数据（mV nA）',
                	left: 'center'
            	},
            	
            	tooltip: {},
            	legend: {
                	data:['销量']
            	},
            	xAxis: {
            	    type: 'category',
            	    data: dataTime
            	   },
            	yAxis: {
            	    type: 'value'
            	    },
            	series: [{
                	name: '123',
                	data: data,
                    type: 'line'
            	}]
        	};

        	// 使用刚指定的配置项和数据显示图表。
        	myChart.setOption(option);
    	</script>
    	<!-- 电压波形结束 -->
    	
    	<!-- 电流波形 -->
		<div id="dianliu_shishi" style="width:100%;height:310px"></div>
		<script type="text/javascript">
        	// 基于准备好的dom，初始化echarts实例
        	var myChart = echarts.init(document.getElementById('dianliu_shishi'));
			var data = [];
			
			for(var i = 0;i<821;i++){
				data.push(-17.83+(Math.cos(i/20+Math.random()/10)*0.5+(Math.random()*2-1)*0.5)*200)
			}
			
			var dataTime = [];
			var time = new Date();
			for(var i = 0;i<821;i++){
				
				dataTime.push(i+1)
			}
        	// 指定图表的配置项和数据
        	var option = {
            	title: {
                	text: '电流数据（mV nA）',
                	left: 'center'
            	},
            	tooltip: {},
            	legend: {
                	data:[]
            	},
            	xAxis: {
            	    type: 'category',
            	    data: dataTime
            	   },
            	yAxis: {
            	    type: 'value'
            	    },
            	series: [{
                	data: data,
                    type: 'line'
            	}]
        	};

        	// 使用刚指定的配置项和数据显示图表。
        	myChart.setOption(option);
    	</script>
    	<!-- 电流波形结束 -->
	</div>
	<!-- 实时数据结束 -->
    
	<!-- <div class="row">
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
					时刻&nbsp;
				</span>
	    	<select class="form-control">
	    		<option>请选择...</option>
	        	<option>2019-06-09 15:00:48</option>
	            <option>2019-06-09 15:01:48</option>
	            <option>2019-06-09 15:02:48</option>
	            <option>2019-06-09 15:03:48</option>
	            <option>2019-06-09 15:04:48</option>
	            <option>2019-06-09 15:05:48</option>
	            <option>2019-06-09 15:06:48</option>
	            <option>2019-06-09 15:07:48</option>
	            <option>2019-06-09 15:08:48</option>
	       
	        </select>
	    	</div>
	    </div>
	   <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					指标&nbsp;
				</span>
	    	<select class="form-control">
	    		<option>请选择...</option>
	        	<option>电压</option>
	            <option>电流</option>
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
            <th>温度</th>
            <th>电压</th>
            <th>电流</th>
     
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:57:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            
           
        </tr>
		<tr>
        	<td><a href="#">2019-06-09 14:59:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
           
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 15:00:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
           
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:01:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
           
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:02:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
           
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:03:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
           
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:04:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
            
        </tr>
        <tr>
        	<td><a href="#">2019-06-09 14:05:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
           
        </tr>
         <tr>
        	<td><a href="#">2019-06-09 14:06:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>26</td>
           
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
	
	<div id="container" style="height: 400px;"></div>
	
</div>
<script type="text/javascript">
        	// 基于准备好的dom，初始化echarts实例
        	var myChart = echarts.init(document.getElementById('container'));
			var data = [];
			
			for(var i = 0;i<821;i++){
				data.push(-17.83+(Math.cos(i/20+Math.random()/10)*0.5+(Math.random()*2-1)*0.5)*200)
			}
			
			var dataTime = [];
			var time = new Date();
			for(var i = 0;i<821;i++){
				
				dataTime.push(i+1)
			}
        	// 指定图表的配置项和数据
        	var option = {
            	title: {
                	text: '电流数据（mV nA）',
                	left: 'center'
            	},
            	tooltip: {},
            	legend: {
                	data:[]
            	},
            	xAxis: {
            	    type: 'category',
            	    data: dataTime
            	   },
            	yAxis: {
            	    type: 'value'
            	    },
            	series: [{
                	data: data,
                    type: 'line'
            	}]
        	};

        	// 使用刚指定的配置项和数据显示图表。
        	myChart.setOption(option);
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