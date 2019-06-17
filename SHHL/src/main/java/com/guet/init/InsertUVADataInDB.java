package com.guet.init;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class InsertUVADataInDB {
	public static boolean InsertUVAData(String filePath) throws IOException, SQLException {
		String url = getConfigInfo.getInfo("SQL.sensor.url");
		String userName = getConfigInfo.getInfo("SQL.bosensorx.userName");
		String passWord = getConfigInfo.getInfo("SQL.sensor.passWord");
		Connection conn = dbProcess.getConn(url, userName, passWord);
		if (conn == null) {
			System.out.print("the db is not connect!! ");
			return false;
		}
		try {
			File file = new File(filePath);
			String fileName = file.getName();
			String[] dateStrTemp = fileName.split("_");
			if (dateStrTemp.length != 3)
				return false;
			String[] dateStr=dateStrTemp[2].split(".xlsx");
			List<String> uvaData = readExcel(filePath);
			if (uvaData.size() != 2)
				return false;
			String sql = "insert into uva_data (TIME,voltage,current) " + "values (\"" + dateStr[0] + "\",\""
					+ uvaData.get(0) + "\",\"" + uvaData.get(1) + "\");";
			dbProcess.insertData(conn, sql);
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
		return true;
	}

	public static List<String> readExcel(String filePath) throws Exception {
		List<String> str = new ArrayList<String>();
		ReadExcel readExcel=new ReadExcel(filePath);
		String uStr="";
		String vStr="";
		for(int i=0;i<readExcel.getAllRowNumber();i++)
		{
			String[] strCellData= readExcel.readLine(i) ;
			if(strCellData.length!=2)
				continue;
			uStr=uStr+strCellData[0];
			vStr=vStr+strCellData[1];
			if(i!=readExcel.getAllRowNumber()-1)
			{
				uStr=uStr+",";
				vStr=vStr+",";
			}
		}
		str.add(uStr);
		str.add(vStr);
		readExcel.closeFileStream();
		return str;
	}
}
