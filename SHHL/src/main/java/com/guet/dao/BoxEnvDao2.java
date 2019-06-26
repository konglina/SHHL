package com.guet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.guet.entity.BoxEnv;
import com.guet.util.DbUtil;
public class BoxEnvDao2 {
	
	public BoxEnv getNewest(Connection con) throws SQLException{
		String sql = "select * from sanya_shenhaisuo_box_environment order by TIME desc limit 1";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet resultSet = pstmt.executeQuery();
		BoxEnv boxEnv = null;
		if(resultSet.next()){
			boxEnv = new BoxEnv();
			boxEnv.setTIME(resultSet.getTimestamp("TIME"));
			boxEnv.setInVoltage(resultSet.getBigDecimal("InVoltage"));
			boxEnv.setInCurrent(resultSet.getBigDecimal("InCurrent"));
			boxEnv.setHumidity(resultSet.getBigDecimal("Humidity"));
			boxEnv.setLeakage(resultSet.getBigDecimal("Leakage"));
			boxEnv.setTemperature1(resultSet.getBigDecimal("Temperature1"));
			boxEnv.setTemperature2(resultSet.getBigDecimal("Temperature2"));
			boxEnv.setTemperature3(resultSet.getBigDecimal("Temperature3"));
			boxEnv.setTemperature4(resultSet.getBigDecimal("Temperature4"));
			boxEnv.setOutVoltage1(resultSet.getBigDecimal("OutVoltage1"));
			boxEnv.setOutVoltage2(resultSet.getBigDecimal("OutVoltage2"));
			boxEnv.setOutVoltage3(resultSet.getBigDecimal("OutVoltage3"));
			boxEnv.setOutVoltage4(resultSet.getBigDecimal("OutVoltage4"));
			boxEnv.setOutVoltage5(resultSet.getBigDecimal("OutVoltage5"));
			boxEnv.setOutVoltage6(resultSet.getBigDecimal("OutVoltage6"));
			boxEnv.setOutVoltage7(resultSet.getBigDecimal("OutVoltage7"));
			boxEnv.setOutVoltage8(resultSet.getBigDecimal("OutVoltage8"));
			boxEnv.setOutCurrent1(resultSet.getBigDecimal("OutCurrent1"));
			boxEnv.setOutCurrent2(resultSet.getBigDecimal("OutCurrent2"));
			boxEnv.setOutCurrent3(resultSet.getBigDecimal("OutCurrent3"));
			boxEnv.setOutCurrent4(resultSet.getBigDecimal("OutCurrent4"));
			boxEnv.setOutCurrent5(resultSet.getBigDecimal("OutCurrent5"));
			boxEnv.setOutCurrent6(resultSet.getBigDecimal("OutCurrent6"));
			boxEnv.setOutCurrent7(resultSet.getBigDecimal("OutCurrent7"));
			boxEnv.setOutCurrent8(resultSet.getBigDecimal("OutCurrent8"));
		}
		return boxEnv;
	}
	
	public List<BoxEnv> queryPageData(Connection con, Map<String , Object> map) throws SQLException{
		StringBuffer sb = new StringBuffer("select * from sanya_shenhaisuo_box_environment");
		String startTime = null;
		String endTime = null;
		Integer start = (Integer) map.get("start");
		Integer size = (Integer) map.get("size");
		if(map != null){
			startTime = (String) map.get("startTime");
			endTime = (String) map.get("endTime");
		}
		if(startTime != null && endTime != null){
			sb.append(" where TIME>=  DATE_FORMAT('"+startTime+"', '%Y-%m-%d %H:%i:%S') and TIME<= DATE_FORMAT('"+endTime+"', '%Y-%m-%d %H:%i:%S')");
		}
		if(start !=null && size != null){
			sb.append(" limit " + start + "," + size);
		}
		
		PreparedStatement pstmt = con.prepareStatement(sb.toString());
		ResultSet resultSet = pstmt.executeQuery();
		List<BoxEnv> boxEnvsList = new ArrayList<BoxEnv>();
		while(resultSet.next()){
			BoxEnv boxEnv = new BoxEnv();
			boxEnv.setTIME(resultSet.getTimestamp("TIME"));
			boxEnv.setInVoltage(resultSet.getBigDecimal("InVoltage"));
			boxEnv.setInCurrent(resultSet.getBigDecimal("InCurrent"));
			boxEnv.setHumidity(resultSet.getBigDecimal("Humidity"));
			boxEnv.setLeakage(resultSet.getBigDecimal("Leakage"));
			boxEnv.setTemperature1(resultSet.getBigDecimal("Temperature1"));
			boxEnv.setTemperature2(resultSet.getBigDecimal("Temperature2"));
			boxEnv.setTemperature3(resultSet.getBigDecimal("Temperature3"));
			boxEnv.setTemperature4(resultSet.getBigDecimal("Temperature4"));
			boxEnv.setOutVoltage1(resultSet.getBigDecimal("OutVoltage1"));
			boxEnv.setOutVoltage2(resultSet.getBigDecimal("OutVoltage2"));
			boxEnv.setOutVoltage3(resultSet.getBigDecimal("OutVoltage3"));
			boxEnv.setOutVoltage4(resultSet.getBigDecimal("OutVoltage4"));
			boxEnv.setOutVoltage5(resultSet.getBigDecimal("OutVoltage5"));
			boxEnv.setOutVoltage6(resultSet.getBigDecimal("OutVoltage6"));
			boxEnv.setOutVoltage7(resultSet.getBigDecimal("OutVoltage7"));
			boxEnv.setOutVoltage8(resultSet.getBigDecimal("OutVoltage8"));
			boxEnv.setOutCurrent1(resultSet.getBigDecimal("OutCurrent1"));
			boxEnv.setOutCurrent2(resultSet.getBigDecimal("OutCurrent2"));
			boxEnv.setOutCurrent3(resultSet.getBigDecimal("OutCurrent3"));
			boxEnv.setOutCurrent4(resultSet.getBigDecimal("OutCurrent4"));
			boxEnv.setOutCurrent5(resultSet.getBigDecimal("OutCurrent5"));
			boxEnv.setOutCurrent6(resultSet.getBigDecimal("OutCurrent6"));
			boxEnv.setOutCurrent7(resultSet.getBigDecimal("OutCurrent7"));
			boxEnv.setOutCurrent8(resultSet.getBigDecimal("OutCurrent8"));
			boxEnvsList.add(boxEnv);
			
		}
		return boxEnvsList;
	}
	
	public int queryPageCount(Connection con, Map<String, Object> map) throws SQLException{
		String startTime = null;
		String endTime = null;
		if(map != null){
			startTime = (String) map.get("startTime");
			endTime = (String) map.get("endTime");
		}
		StringBuffer sb = new StringBuffer("select count(*) as result from sanya_shenhaisuo_box_environment");
		if(startTime != null && endTime != null){
			sb.append(" where TIME>=  DATE_FORMAT('"+startTime+"', '%Y-%m-%d %H:%i:%S') and TIME<= DATE_FORMAT('"+endTime+"', '%Y-%m-%d %H:%i:%S')");
		}
		PreparedStatement pstmt = con.prepareStatement(sb.toString());
		ResultSet resultSet = pstmt.executeQuery();
		int result = 0;
		if(resultSet.next()){
			result = resultSet.getInt("result");
		}
		return result;
	}
	
	public static void main(String[] args) throws Exception {
		DbUtil dbUtil = new DbUtil();
		Connection con = dbUtil.getCon();
		BoxEnvDao2 boxEnvDao2 = new BoxEnvDao2();
	/*	Map<String, Object> map = new HashMap<String, Object>();
		String startTime = "2019-04-12 14:57:48";
		String endTime = "2019-04-12 15:58:02";
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		map.put("start", 0);
		map.put("size", 2);*/
		
		/*System.out.println(boxEnvDao2.queryPageCount(con, map));*/
	/*	List<BoxEnv> boxEnvsList = new ArrayList<BoxEnv>();
		boxEnvsList = boxEnvDao2.queryPageData(con, map);
		for(BoxEnv boxEnv: boxEnvsList){
			System.out.println(boxEnv);
		}*/
		BoxEnv boxEnv = boxEnvDao2.getNewest(con);
		System.out.println(boxEnv);
	}
}
