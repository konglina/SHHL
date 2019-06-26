package com.guet.util;

import java.sql.Connection;
import java.sql.DriverManager;

import com.guet.init.getConfigInfo;


public class DbUtil {
	private String jdbcName="com.mysql.jdbc.Driver";
	public Connection getCon()throws Exception{
		Class.forName(jdbcName);
		Connection con=DriverManager.getConnection(getConfigInfo.getInfo("SQL.box.url"),getConfigInfo.getInfo("SQL.box.userName"),getConfigInfo.getInfo("SQL.box.passWord"));
		return con;
	}
	public void closeCon(Connection con)throws Exception{
		if(con!=null){
			con.close();
		}
	}
	public static void main(String[] args) {
		DbUtil dbUtil=new DbUtil();
		try {
			dbUtil.getCon();
			System.out.println("连接成功!");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("连接失败");
		}
		
	}
}
