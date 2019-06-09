<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/My97DatePicker/WdatePicker.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/echarts.min.js"></script>
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
    					<td class="col-sm-4">2019/6/9 17:46</td>
    					<td class="col-sm-4"><span class="label label-sm label-warning">35</span></td>
    					<td class="col-sm-4">1.8247</td>
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
						console.log("12456767")
						var data = [];
						
						for(var i = 0;i<30;i++){
							data.push(Math.random()*100+1)
						}
						console.log(data)
						var dataTime = [];
						var time = new Date();
						for(var i = 0;i<30;i++){
							value = [2019,time.getMonth(),1+i].join('/')
							dataTime.push(value)
						}
						
						
						// 指定图表的配置项和数据
						var option = {
								title: {
						            text: 'Beijing AQI'
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
						            }
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
    		</div>
    	</div>
	</div>
	<!-- shishi_end -->
    <!--结束7-->
    <!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0px; margin-bottom:5px">历史数据查询</h5> -->
      <!--备注-->
    <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-2" style="padding-top:9px;padding-left:3px;">历史数据查询</div>
	    <div class="col-sm-2">
	    	<select class="form-control">
	        	<option>姓名</option>
	            <option>姓名</option>
	        </select>
	    </div>
	    <div class="col-sm-3">
	    	<input type="text" class="form-control"/>
	    </div>
	    <input type="button" class="btn btn-danger" value="查询"/>
	    <input type="button" class="btn btn-success" value="添加" onclick="javascript:window.location='${pageContext.request.contextPath}/view/system/staff_info/staffinfo_add.jsp'"/>
	</div>
<div align="center">
	<div class="alert alert-warning" style="margin: 0px; padding: 5px; width: 80%;display: ${empty info?'none':'block'}" >
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			
		</button>
		<p align="center" style="color: red;">员工信息-${info }</p>
	</div>	
</div>
<div class="row" style="padding:15px; padding-top:0px;" >
	<table class="table table-condensed table-striped">
    	<tr>
        	<th>员工编号</th>
            <th>员工姓名</th>
            <th>员工性别</th>
            <th>员工年龄</th>
            <th>员工号码</th>
            <th>QQ</th>
            <th>入职时间</th> 
             <th>操作</th> 
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">1001号</a></td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
         <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
         <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
         <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
        <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
        <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
        <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
        <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
    </table>
</div>
    <!--账号信息-->
     <h5 class="page-header alert alert-info" style="padding:10px; margin:0px; margin-bottom:5px">数据自动保存</h5>
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">用户名</label>
                <div class="col-sm-9">
                	<input type="text" name="staffUsername" class="form-control input-sm" placeholder="请输入用户名"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">密码</label>
                <div class="col-sm-9">
                	<input type="text" name="staffPassword" class="form-control input-sm" placeholder="请输入密码"/>
                </div>
            </div>
        </div>
    </div>
  
</form>

</body>
</html>