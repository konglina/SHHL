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
<div  style="padding:2px; margin:0px;"  >,
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
								<td><a href="#" class="time"></a></td>
								<td id="cultivating_bag_1">
								<!-- 假定1为培养完成，0为培养中,2为等待，其他为未知 -->
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_1==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_1==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_1==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_2">
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_2==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_2==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_2==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_3">
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_3==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_3==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_3==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_4">
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_4==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_4==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_4==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_5"><c:choose>
								<c:when test="${newbbes.cultivating_bag_5==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_5==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_5==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_6"><c:choose>
								<c:when test="${newbbes.cultivating_bag_6==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_6==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_6==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_7"><c:choose>
								<c:when test="${newbbes.cultivating_bag_7==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_7==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_7==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_8"><c:choose>
								<c:when test="${newbbes.cultivating_bag_8==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_8==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_8==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_9"><c:choose>
								<c:when test="${newbbes.cultivating_bag_9==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_9==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_9==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_10">
									<c:choose>
									<c:when test="${newbbes.cultivating_bag_10==0}"><span class="label label-sm label-warning">培养中</span></c:when>
									<c:when test="${newbbes.cultivating_bag_10==1}"><span class="label label-sm label-success">培养完成</span></c:when>
									<c:when test="${newbbes.cultivating_bag_10==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
									<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_11">
								<c:choose>
								<c:when test="${newbbes.cultivating_bag_11==0}"><span class="label label-sm label-warning">培养中</span></c:when>
								<c:when test="${newbbes.cultivating_bag_11==1}"><span class="label label-sm label-success">培养完成</span></c:when>
								<c:when test="${newbbes.cultivating_bag_11==2}"><span class="label label-sm label-info arrowed arrowed-righ">等待</span></c:when>
								<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
								</c:choose>
								</td>
								<td id="cultivating_bag_12">
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
										<td><a href="#" class="time">${newbbes.TIME}</a></td>
										<td id="pump1">
										<c:choose>
										<c:when test="${newbbes.pump_1==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_1==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
										<td  id="pump2">
										<c:choose>
										<c:when test="${newbbes.pump_2==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_2==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
										<td  id="pump3">
										<c:choose>
										<c:when test="${newbbes.pump_3==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_3==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
										<td  id="pump4">
										<c:choose>
										<c:when test="${newbbes.pump_4==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_4==1}"><span class="label label-sm label-success">开</span></c:when>
										<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
										</c:choose>
										</td>
										<td  id="pump5">
										<c:choose>
										<c:when test="${newbbes.pump_5==0}"><span class="label label-sm label-warning">关</span></c:when>
										<c:when test="${newbbes.pump_5==1}"><span class="label label-sm label-success">开</span></c:when>
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
							<td><a href="#" class="time">${newbbes.TIME}</a></td>
							<td id="solenoid1">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_1==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_1==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid2">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_2==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_2==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid3">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_3==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_3==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid4">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_4==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_4==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid5">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_5==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_5==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid6">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_6==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_6==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid7">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_7==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_7==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid8">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_8==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_8==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid9">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_9==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_9==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid10">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_10==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_10==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid11">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_11==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_11==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid12">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_12==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_12==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid13">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_13==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_13==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid14">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_14==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_14==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid15">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_15==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_15==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>		
							<td id="solenoid16">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_16==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_16==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid17">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_17==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_17==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid18">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_18==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_18==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid19">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_19==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_19==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid20">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_20==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_20==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid21">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_21==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_21==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid22">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_22==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_22==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid23">
							<c:choose>
							<c:when test="${newbbes.solenoid_valve_23==0}"><span class="label label-sm label-warning">关</span></c:when>
							<c:when test="${newbbes.solenoid_valve_23==1}"><span class="label label-sm label-success">开</span></c:when>
							<c:otherwise><span class="label label-sm label-warning">未知</span></c:otherwise>
							</c:choose>
							</td>
							<td id="solenoid24">
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
	for(var i=(bbesDataList.length-1);i>=0;i--){
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
		realtime_myChart1.setOption(realtime_option1);
	}
	
	
	//container2
	var realtime_dom2 = document.getElementById("current_container");
	var realtime_myChart2 = echarts.init(realtime_dom2);
	realtime_option2 = null;
	var abel = [];//电流的数据
	//放入实际的数据
	for(var i=(bbesDataList.length-1);i>=0;i--){
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
		realtime_myChart2.setOption(realtime_option2);
	}
	
	//container3
	var realtime_dom3 = document.getElementById("temperature_container");
	var realtime_myChart3 = echarts.init(realtime_dom3);
	
	realtime_option3 = null;
	var temperature = [];
	//放入实际的数据
	for(var i=(bbesDataList.length-1);i>=0;i--){
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
		realtime_myChart3.setOption(realtime_option3);
	}
	
	
	//container4
	var realtime_dom4 = document.getElementById("conductivity_container");
	var realtime_myChart4 = echarts.init(realtime_dom4);
	
	realtime_option4 = null;
	var conductivity = [];
	//放入实际的数据
	for(var i=(bbesDataList.length-1);i>=0;i--){
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
	    realtime_myChart4.setOption(realtime_option4);
	}
	//container5
	var realtime_dom5 = document.getElementById("pressure_container");
	var realtime_myChart5 = echarts.init(realtime_dom5);
	
	realtime_option5 = null;
	var pressure = [];
	//放入实际的数据
	for(var i=(bbesDataList.length-1);i>=0;i--){
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
		realtime_myChart5.setOption(realtime_option5);
	}
	//container6
	var realtime_dom6 = document.getElementById("salinity_container");
	var realtime_myChart6 = echarts.init(realtime_dom6);
	
	realtime_option6 = null;
	var salinity = [];
	//放入实际的数据
	for(var i=(bbesDataList.length-1);i>=0;i--){
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
		realtime_myChart6.setOption(realtime_option6);
	}
	
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
	
	
	
	//var displayTime = "${newbbes.TIME}";
	$(".time").empty();
 	$(".time").text(new Date("${newbbes.TIME}").format("yyyy-MM-dd hh:mm:ss"));
	//实时的刷新数据，3秒刷新一次
	//保存上一次的时间，对比时间可得是否更新
	var lasttime = "${newbbes.TIME}";
	var timeflag =0;
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
            
            
            
            var bagState = new Array();
            var  pumpState = new Array();
            var solenoidState = new Array();
            bagState[0]=realtime[0].cultivating_bag_1;
            bagState[1]=realtime[0].cultivating_bag_2;
            bagState[2]=realtime[0].cultivating_bag_3;
            bagState[3]=realtime[0].cultivating_bag_4;
            bagState[4]=realtime[0].cultivating_bag_5;
            bagState[5]=realtime[0].cultivating_bag_6;
            bagState[6]=realtime[0].cultivating_bag_7;
            bagState[7]=realtime[0].cultivating_bag_8;
            bagState[8]=realtime[0].cultivating_bag_9;
            bagState[9]=realtime[0].cultivating_bag_10;
            bagState[10]=realtime[0].cultivating_bag_11;
            bagState[11]=realtime[0].cultivating_bag_12;
            
            pumpState[0] = realtime[0].pump_1;
            pumpState[1] = realtime[0].pump_2;
            pumpState[2] = realtime[0].pump_3;
            pumpState[3] = realtime[0].pump_4;
            pumpState[4] = realtime[0].pump_5;
            
            solenoidState[0] = realtime[0].solenoid_valve_1;
            solenoidState[1] = realtime[0].solenoid_valve_2;
            solenoidState[2] = realtime[0].solenoid_valve_3;
            solenoidState[3] = realtime[0].solenoid_valve_4;
            solenoidState[4] = realtime[0].solenoid_valve_5;
            solenoidState[5] = realtime[0].solenoid_valve_6;
            solenoidState[6] = realtime[0].solenoid_valve_7;
            solenoidState[7] = realtime[0].solenoid_valve_8;
            solenoidState[8] = realtime[0].solenoid_valve_9;
            solenoidState[9] = realtime[0].solenoid_valve_10;
            solenoidState[10] = realtime[0].solenoid_valve_11;
            solenoidState[11] = realtime[0].solenoid_valve_12;
            solenoidState[12] = realtime[0].solenoid_valve_13;
            solenoidState[13] = realtime[0].solenoid_valve_14;
            solenoidState[14] = realtime[0].solenoid_valve_15;
            solenoidState[15] = realtime[0].solenoid_valve_16;
            solenoidState[16] = realtime[0].solenoid_valve_17;
            solenoidState[17] = realtime[0].solenoid_valve_18;
            solenoidState[18] = realtime[0].solenoid_valve_19;
            solenoidState[19] = realtime[0].solenoid_valve_20;
            solenoidState[20] = realtime[0].solenoid_valve_21;
            solenoidState[21] = realtime[0].solenoid_valve_22;
            solenoidState[22] = realtime[0].solenoid_valve_23;
            solenoidState[23] = realtime[0].solenoid_valve_24;
            
            var bag = new Array();
            var pump = new Array();
            var solenoid = new Array();
            for (var i=0;i<bagState.length;i++){
            	if(bagState[i]==0){
            		bag[i] = '<span class="label label-sm label-warning">培养中</span>';
            	}else if (bagState[i]==1){
            		bag[i] = '<span class="label label-sm label-success">培养完成</span>';
            	}else if(bagState[i]==2){
            		bag[i]='<span class="label label-sm label-info arrowed arrowed-righ">等待</span>';
            	}else{
            		bag[i]='<span class="label label-sm label-warning">未知</span>';
            	}
            }
            for(var i=0;i<pumpState.length;i++){
            	if(pumpState[i]==0){
            		pump[i]='<span class="label label-sm label-warning">关</span>';
            	}else if(pumpState[i]==1){
            		pump[i]='<span class="label label-sm label-success">开</span>';
            	}else{
            		pump[i]='<span class="label label-sm label-warning">未知</span>';
            	}
            }
            for(var i=0;i<solenoidState.length;i++){
            	if(solenoidState[i]==0){
            		solenoid[i]='<span class="label label-sm label-warning">关</span>';
            	}else if(solenoidState[i]==1){
            		solenoid[i]='<span class="label label-sm label-success">开</span>';
            	}else{
            		solenoid[i]='<span class="label label-sm label-warning">未知</span>';
            	}
            }
            
            $(".time").empty();
        	$(".time").text(new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"));
            $("#cultivating_bag_1").empty();
        	$("#cultivating_bag_1").html(bag[0]);
        	$("#cultivating_bag_2").empty();
        	$("#cultivating_bag_2").html(bag[1]);
        	$("#cultivating_bag_3").empty();
        	$("#cultivating_bag_3").html(bag[2]);
        	$("#cultivating_bag_4").empty();
        	$("#cultivating_bag_4").html(bag[3]);
        	$("#cultivating_bag_5").empty();
        	$("#cultivating_bag_5").html(bag[4]);
        	$("#cultivating_bag_6").empty();
        	$("#cultivating_bag_6").html(bag[5]);
        	$("#cultivating_bag_7").empty();
        	$("#cultivating_bag_7").html(bag[6]);
        	$("#cultivating_bag_8").empty();
        	$("#cultivating_bag_8").html(bag[7]);
        	$("#cultivating_bag_9").empty();
        	$("#cultivating_bag_9").html(bag[8]);
        	$("#cultivating_bag_10").empty();
        	$("#cultivating_bag_10").html(bag[9]);
        	$("#cultivating_bag_11").empty();
        	$("#cultivating_bag_11").html(bag[10]);
        	$("#cultivating_bag_12").empty();
        	$("#cultivating_bag_12").html(bag[11]);
        	
        	$("#pump1").empty();
        	$("#pump1").html(pump[0]);
        	$("#pump2").empty();
        	$("#pump2").html(pump[1]);
        	$("#pump3").empty();
        	$("#pump3").html(pump[2]);
        	$("#pump4").empty();
        	$("#pump4").html(pump[3]);
        	$("#pump5").empty();
        	$("#pump5").html(pump[4]);
        	
        	$("#solenoid1").empty();
        	$("#solenoid1").html(solenoid[0]);
        	$("#solenoid2").empty();
        	$("#solenoid2").html(solenoid[1]);
        	$("#solenoid3").empty();
        	$("#solenoid3").html(solenoid[2]);
        	$("#solenoid4").empty();
        	$("#solenoid4").html(solenoid[3]);
        	$("#solenoid5").empty();
        	$("#solenoid5").html(solenoid[4]);
        	$("#solenoid6").empty();
        	$("#solenoid6").html(solenoid[5]);
        	$("#solenoid7").empty();
        	$("#solenoid7").html(solenoid[6]);
        	$("#solenoid8").empty();
        	$("#solenoid8").html(solenoid[7]);
        	$("#solenoid9").empty();
        	$("#solenoid9").html(solenoid[8]);
        	$("#solenoid10").empty();
        	$("#solenoid10").html(solenoid[9]);
        	$("#solenoid11").empty();
        	$("#solenoid11").html(solenoid[10]);
        	$("#solenoid12").empty();
        	$("#solenoid12").html(solenoid[11]);
        	$("#solenoid13").empty();
        	$("#solenoid13").html(solenoid[12]);
        	$("#solenoid14").empty();
        	$("#solenoid14").html(solenoid[13]);
        	$("#solenoid15").empty();
        	$("#solenoid15").html(solenoid[14]);
        	$("#solenoid16").empty();
        	$("#solenoid16").html(solenoid[15]);
        	$("#solenoid17").empty();
        	$("#solenoid17").html(solenoid[16]);
        	$("#solenoid18").empty();
        	$("#solenoid18").html(solenoid[17]);
        	$("#solenoid19").empty();
        	$("#solenoid19").html(solenoid[18]);
        	$("#solenoid20").empty();
        	$("#solenoid20").html(solenoid[19]);
        	$("#solenoid21").empty();
        	$("#solenoid21").html(solenoid[20]);
        	$("#solenoid22").empty();
        	$("#solenoid22").html(solenoid[21]);
        	$("#solenoid23").empty();
        	$("#solenoid23").html(solenoid[22]);
        	$("#solenoid24").empty();
        	$("#solenoid24").html(solenoid[23]);
        	
            if ((new Date(realtime[0].tIME).format("yyyy-MM-dd hh:mm:ss"))==(new Date(lasttime).format("yyyy-MM-dd hh:mm:ss"))){
            	timeflag = timeflag + 3000;
            	realtime_volt48 = {
           				name:(new Date(realtime[0].tIME+timeflag).format("yyyy-MM-dd hh:mm:ss")),
           				value:[new Date(realtime[0].tIME+timeflag).format("yyyy-MM-dd hh:mm:ss"),0]
            		}
            	realtime_abel48={
                		name:(realtime[0].tIME+timeflag),
                		value:[(realtime[0].tIME+timeflag),0]
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