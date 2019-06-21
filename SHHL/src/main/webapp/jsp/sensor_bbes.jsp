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

<!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">实时数据</h5> -->
 <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">实时数据</div>
		 <div class="col-sm-5" style="padding-top:5px">
	    	
	   </div> 
	   
	   <div class="col-sm-5" style="padding-top:5px;padding-bottom:2px;">
	    	
	   </div>
	  
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<button type="button" class="btn btn-success" onClick="javascript:window.location='${pageContext.request.contextPath}/jsp/sensor_bbes_history.jsp'">查看历史数据</button>
		 </div>
	</div>
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
									href="#">${newbbes.TIME}</a></td>
								<td>
								<!-- 假定1为培养完成，0为培养中,2为等待，其他为未知 -->
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_1==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_1==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_1==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td>
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_2==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_2==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_2==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td>
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_3==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_3==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_3==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td>
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_4==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_4==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_4==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td><c:choose>
								<c:when test="${newbbes.cultivating_bag_5==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_5==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_5==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td><c:choose>
								<c:when test="${newbbes.cultivating_bag_6==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_6==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_6==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td><c:choose>
								<c:when test="${newbbes.cultivating_bag_7==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_7==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_7==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td><c:choose>
								<c:when test="${newbbes.cultivating_bag_8==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_8==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_8==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td><c:choose>
								<c:when test="${newbbes.cultivating_bag_9==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_9==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_9==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td>
									<c:choose>
									<c:when test="${newbbes.cultivating_bag_10==0}"><span class="label label-sm label-warning">培养中</span></c:when>
									<c:when test="${newbbes.cultivating_bag_10==1}"><span class="label label-sm label-success">培养完成</span></c:when>
									<c:when test="${newbbes.cultivating_bag_10==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
									<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td>
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_11==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_11==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_11==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td>
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_12==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_12==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_12==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
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
											href="#">${newbbes.TIME}</a></td>
										<td>
										<c:choose>
										<c:when test="${newbbes.pump_1==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_1==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
										<td>
										<c:choose>
										<c:when test="${newbbes.pump_1==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_1==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
										<td>
										<c:choose>
										<c:when test="${newbbes.pump_1==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_1==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
										<td>
										<c:choose>
										<c:when test="${newbbes.pump_1==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_1==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
										<td>
										<c:choose>
										<c:when test="${newbbes.pump_1==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_1==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
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
							<td><a href="#">${newbbes.TIME}</a></td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_1==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_1==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_2==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_2==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_3==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_3==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_4==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_4==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_5==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_5==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_6==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_6==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_7==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_7==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_8==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_8==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_9==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_9==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_10==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_10==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_11==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_11==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_12==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_12==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_13==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_13==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_14==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_14==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_15==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_15==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>		
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_16==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_16==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_17==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_17==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_18==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_18==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_19==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_19==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_20==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_20==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_21==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_21==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_22==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_22==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_23==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_23==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td>
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_24==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_24==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							
						</tr>
								</table>
					         </div>
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
             		<div id="voltage_container" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电流
          </div>
              <div class="panel-body">
             		<div id="current_container" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>温度
          </div>
              <div class="panel-body">
             		<div id="temperature_container" class="col-sm-12" style="height: 300px;"></div>
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
             		<div id="conductivity_container"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>压力
          </div>
              <div class="panel-body">
             		<div id="pressure_container"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>盐度
          </div>
              <div class="panel-body">
             		<div id="salinity_container"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
</div>
</div>
<script type="text/javascript">
	//电压
	//实时显示数据realtime_dom1
	var realtime_dom1 = document.getElementById("voltage_container");
	var realtime_myChart1 = echarts.init(realtime_dom1);
	realtime_option1 = null;
	var volt = [];//电压的数据
	
	//放入实际的数据
	var bbesDataList=JSON.parse('<%=request.getAttribute("bbesDataList")%>');
	for(var i=0;i<bbesDataList.length;i++){
		//console.log("时间："+bbesDataList[i].tIME);
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].volt48]
		};
		volt.push(bbes);
	}
	realtime_option1 = {
	    title: {
	        text: '实时数据'
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
	        data: volt
	    }]
	};
	
	if (realtime_option1 && typeof realtime_option1 === "object") {
		realtime_myChart1.setOption(realtime_option1, true);
	}
	
	
	//container2
	var realtime_dom2 = document.getElementById("current_container");
	var realtime_myChart2 = echarts.init(realtime_dom2);
	realtime_option2 = null;
	var abel = [];//电流的数据
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		//console.log("时间："+bbesDataList[i].tIME);
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].abel48]
		};
		abel.push(bbes);
	}
	realtime_option2 = {
	    title: {
	        text: '实时数据'
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
	        data: abel
	    }]
	};
	
	if (realtime_option2 && typeof realtime_option2 === "object") {
		realtime_myChart2.setOption(realtime_option2, true);
	}
	
	//container3
	var realtime_dom3 = document.getElementById("temperature_container");
	var realtime_myChart3 = echarts.init(realtime_dom3);
	
	realtime_option3 = null;
	var temperature = [];
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].temperature]
		};
		temperature.push(bbes);
	}
	realtime_option3 = {
	    title: {
	        text: '实时数据'
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
	        data: temperature
	    }]
	};
	
	if (realtime_option3 && typeof realtime_option3 === "object") {
		realtime_myChart3.setOption(realtime_option3, true);
	}
	
	
	//container4
	var realtime_dom4 = document.getElementById("conductivity_container");
	var realtime_myChart4 = echarts.init(realtime_dom4);
	
	realtime_option4 = null;
	var conductivity = [];
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].conductivity]
		};
		conductivity.push(bbes);
	}
	realtime_option4 = {
	    title: {
	        text: '实时数据'
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
	        data: conductivity
	    }]
	};
	
	if (realtime_option4 && typeof realtime_option4 === "object") {
	    realtime_myChart4.setOption(realtime_option4, true);
	}
	//container5
	var realtime_dom5 = document.getElementById("pressure_container");
	var realtime_myChart5 = echarts.init(realtime_dom5);
	
	realtime_option5 = null;
	var pressure = [];
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].pressure]
		};
		pressure.push(bbes);
	}
	realtime_option5 = {
	    title: {
	        text: '实时数据'
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
	        data: pressure
	    }]
	};
	
	if (realtime_option5 && typeof realtime_option5 === "object") {
		realtime_myChart5.setOption(realtime_option5, true);
	}
	//container6
	var realtime_dom6 = document.getElementById("salinity_container");
	var realtime_myChart6 = echarts.init(realtime_dom6);
	
	realtime_option6 = null;
	var salinity = [];
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].salinity]
		};
		salinity.push(bbes);
	}
	realtime_option6 = {
	    title: {
	        text: '实时数据'
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
	        data: salinity
	    }]
	};
	
	if (realtime_option6 && typeof realtime_option6 === "object") {
		realtime_myChart6.setOption(realtime_option6, true);
	}
	
	//保存上一次的时间，对比时间可得是否更新
	var lasttime = "${newbbes.TIME}";
	var timeflag =0;
	var flag=true;
	//定时刷新,在此处初始化data
	$(document).ready(function () {
        setInterval("startRequest()", 3000);//3s一次
    });
    function startRequest() {
        $.ajax({
            url:  "${pageContext.request.contextPath}/bbesData/realtime.do",
            type: 'POST',
            success: function (data) {
            var realtime=JSON.parse(data);//最新的数据
            var realtime_volt48;
            var realtime_abel48;
            var realtime_temperature;
            var realtime_conductivity;
            var realtime_pressure;
            var realtime_salinity;
            
            if (realtime[0].tIME==lasttime){
            	timeflag = timeflag + 3000;
            	realtime_volt48 = {
           				name:realtime[0].tIME+timeflag,
           				value:[realtime[0].tIME+timeflag,0]
            		}
            	realtime_abel48={
                		name:realtime[0].tIME+timeflag,
                		value:[realtime[0].tIME+timeflag,0]
                }
            	realtime_temperature={
            			name:realtime[0].tIME+timeflag,
                		value:[realtime[0].tIME+timeflag,0]
            	}
            	realtime_conductivity={
            			name:realtime[0].tIME+timeflag,
                		value:[realtime[0].tIME+timeflag,0]
            	}
            	realtime_pressure={
            			name:realtime[0].tIME+timeflag,
                		value:[realtime[0].tIME+timeflag,0]
            	}
            	realtime_salinity={
            			name:realtime[0].tIME+timeflag,
                		value:[realtime[0].tIME+timeflag,0]
            	}
            }else{
            	realtime_volt48 = {
           				name:realtime[0].tIME,
           				value:[realtime[0].tIME,realtime[0].volt48]
            		}
            	
            	realtime_abel48={
                		name:realtime[0].tIME,
                		value:[realtime[0].tIME,realtime[0].abel48]
                }
            	realtime_temperature={
            			name:realtime[0].tIME,
                		value:[realtime[0].tIME,realtime[0].temperature]
            	}
            	realtime_conductivity={
            			name:realtime[0].tIME,
                		value:[realtime[0].tIME,realtime[0].conductivity]
            	}
            	realtime_pressure={
            			name:realtime[0].tIME,
                		value:[realtime[0].tIME,realtime[0].pressure]
            	}
            	realtime_salinity={
            			name:realtime[0].tIME,
                		value:[realtime[0].tIME,realtime[0].salinity]
            	}
            	lasttime=realtime[0].tIME;
            	timeflag = 0;
            }
            volt.shift();
    		volt.push(realtime_volt48);
    		abel.shift();
    		abel.push(realtime_abel48);
    		temperature.shift();
    		temperature.push(realtime_temperature);
    		conductivity.shift();
    		conductivity.push(realtime_conductivity);
    		pressure.shift();
    		pressure.push(realtime_pressure);
    		salinity.shift();
    		salinity.push(realtime_salinity);
    		
    		realtime_myChart1.setOption({
    	        series: [{
    	            data: volt
    	        }]
    	    });
    		realtime_myChart2.setOption({
    	        series: [{
    	            data: abel
    	        }]
    	    });
    		realtime_myChart3.setOption({
    	        series: [{
    	            data: temperature
    	        }]
    	    });
    		realtime_myChart4.setOption({
    	        series: [{
    	            data: conductivity
    	        }]
    	    });
    		realtime_myChart5.setOption({
    	        series: [{
    	            data: pressure
    	        }]
    	    });
    		realtime_myChart6.setOption({
    	        series: [{
    	            data: salinity
    	        }]
    	    });
            },
            error : function(jqXHR) {
                alert("发生错误：" + jqXHR.status);
            },
        });
    }
 </script>
  
<script type="text/javascript">
	//container1
	var dom1 = document.getElementById("container1");
	var myChart = echarts.init(dom1);
	option1 = null;
	var volt = [];
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		//console.log("时间："+bbesDataList[i].tIME);
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].volt48]
		}
		volt.push(bbes);
	}
	option1 = {
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
	        data: volt
	    }]
	};
	
	if (option1 && typeof option1 === "object") {
	    myChart.setOption(option1, true);
	}
	
	
	//container2
	var dom2 = document.getElementById("container2");
	var myChart2 = echarts.init(dom2);
	option2 = null;
	var abel = [];
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		//console.log("时间："+bbesDataList[i].tIME);
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].abel48]
		}
		abel.push(bbes);
	}
	option2 = {
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
		        data: abel
		    }]
		};
	
	if (option2 && typeof option2 === "object") {
	    myChart2.setOption(option2, true);
	}
	
	
	//container3
	var dom3 = document.getElementById("container3");
	var myChart3 = echarts.init(dom3);
	option3 = null;
	var temperature = [];
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		//console.log("时间："+bbesDataList[i].tIME);
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].temperature]
		}
		temperature.push(bbes);
	}
	option3 = {
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
		        data: temperature
		    }]
		};
	
	if (option3 && typeof option3 === "object") {
	    myChart3.setOption(option3, true);
	}
	
	
	//container4
	var dom4 = document.getElementById("container4");
	var myChart4 = echarts.init(dom4);
	
	option4 = null;
	var conductivity = [];//电导率
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		//console.log("时间："+bbesDataList[i].tIME);
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].conductivity]
		}
		conductivity.push(bbes);
	}
	option4 = {
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
		        data: conductivity
		    }]
		};
	
	if (option4 && typeof option4 === "object") {
	    myChart4.setOption(option4, true);
	}
	
	//container5
	var dom5 = document.getElementById("container5");
	var myChart5 = echarts.init(dom5);
	
	option5 = null;
	var pressure = [];//压力
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		//console.log("时间："+bbesDataList[i].tIME);
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].pressure]
		}
		pressure.push(bbes);
	}
	option5 = {
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
		        data: pressure
		    }]
		};
	
	if (option5 && typeof option5 === "object") {
	    myChart5.setOption(option5, true);
	}
	
	
	//container6
	var dom6 = document.getElementById("container6");
	var myChart6 = echarts.init(dom6);
	
	option6 = null;
	var salinity = [];//盐度
	//放入实际的数据
	for(var i=0;i<bbesDataList.length;i++){
		//console.log("时间："+bbesDataList[i].tIME);
		var bbes = {
				name:bbesDataList[i].tIME,
				value:[bbesDataList[i].tIME,bbesDataList[i].salinity]
		}
		salinity.push(bbes);
	}
	option6 = {
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
		        data: salinity
		    }]
		};
	
	if (option6 && typeof option6 === "object") {
	    myChart6.setOption(option6, true);
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
laydate.render({
	  elem: '#test3' //指定元素
});
laydate.render({
	  elem: '#test4' //指定元素
	});
</script>
</body>
</html>