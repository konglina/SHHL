package com.guet.init;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InsertBBESDataInDB {

	public static boolean InsertBBESData(List<String> dataList) throws IOException, SQLException
	{
		String url = getConfigInfo.getInfo("SQL.sensor.url");
        String userName=getConfigInfo.getInfo("SQL.bosensorx.userName");
        String passWord=getConfigInfo.getInfo("SQL.sensor.passWord");
        Connection conn= dbProcess.getConn(url,userName,passWord);
        if(conn==null)
        {
        	System.out.print("the db is not connect!! ");
        	return false;
        }
        String[] strTempArr;
        for(int i=0;i<dataList.size();i++)
        {
        	strTempArr=dataList.get(i).replace("\r\n","").split(",");
        	if(strTempArr.length!=2)
        		continue;
        	ResultSet reSets=dbProcess.getSelect(conn,"select * from bbes_data where TIME=\""+strTempArr[0]+"\";");
        	if(reSets==null || !reSets.first())
        	{
        		String sql="insert into bbes_data (TIME) values (\""+strTempArr[0]+"\");";
        		dbProcess.insertData(conn, sql);
        	}
        	String[] dataTemp=strTempArr[1].split("  - ");
        	if(dataTemp.length!=2)
        		continue;
        	if(dataTemp[1].contains("Volt48"))
        	{
        		List<String> volt48=getVoltData(dataTemp[1]);
        		if(volt48==null)
        			continue;
        		String sql="UPDATE bbes_data SET Volt48="+volt48.get(0)+",Abel48="+volt48.get(1)+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("Volt24"))
        	{
        		List<String> volt24=getVoltData(dataTemp[1]);
        		if(volt24==null)
        			continue;
        		String sql="UPDATE bbes_data SET Volt24="+volt24.get(0)+",Abel24="+volt24.get(1)+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("Volt12"))
        	{
        		List<String> volt12=getVoltData(dataTemp[1]);
        		if(volt12==null)
        			continue;
        		String sql="UPDATE bbes_data SET Volt12="+volt12.get(0)+",Abel12="+volt12.get(1)+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("Temperature") && !dataTemp[1].contains("Sensor"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET Temperature="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("Sensor Temperature"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET Sensor_Temperature="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	if(dataTemp[1].contains("CO2"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET CO2="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("CH4"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET CH4="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	if(dataTemp[1].contains("Density"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET Density="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	if(dataTemp[1].contains("Conductivity"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET Conductivity="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("Do"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET Do="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("pH"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET pH="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("Pressure"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET Pressure="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("Salinity"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET Salinity="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("Calc"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET Calc="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        	
        	if(dataTemp[1].contains("BlockBattery"))
        	{
        		String temperature=getNumericData(dataTemp[1]);
        		if(temperature==null)
        			continue;
        		String sql="UPDATE bbes_data SET BlockBattery="+temperature+" where TIME=\""+strTempArr[0]+"\";";
        		dbProcess.insertData(conn, sql);
        		continue;
        	}
        }
        dbProcess.closeConn(conn);
        return true;
	}
	private static List<String> getVoltData(String voltStr)
	{
		List<String> ss=new ArrayList<String>();
		String[] voltArray=voltStr.split(";");
		if(voltArray.length!=2)
			return null;
		String uData=getNumericData(voltArray[0]);
		String vData=getNumericData(voltArray[1]);
		if(uData==null || vData==null)
			return null;
		ss.add(uData);
		ss.add(vData);
		return ss;
	}
	private static String getNumericData(String dataStr)
	{
		String[] strArray=dataStr.split(":");
		if(strArray.length!=2)
			return null;
		else
			return strArray[1];
	}
}
