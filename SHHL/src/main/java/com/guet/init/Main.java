package com.guet.init;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import jdk.management.resource.internal.inst.InitInstrumentation;

public class Main {
	public static void InitMain(){
		FileMonitor monitor=new FileMonitor();
		try {
			monitor.getBBESFile();
			monitor.getUVAFile();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("文件监控已启动");
	}
	public static void main(String[] args) throws IOException, ClassNotFoundException, SQLException  {
		FileMonitor monitor=new FileMonitor();
		monitor.getBBESFile();
		monitor.getUVAFile();
		System.out.println("文件监控已启动");
	}

	/* (non-Java-doc)
	 * @see java.lang.Object#Object()
	 */
	public Main() {
		super();
	}

}