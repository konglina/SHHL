package com.guet.init;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class getConfigInfo {
	public static String getInfo(String name) throws IOException {
		InputStream in = Main.class.getClassLoader().getResourceAsStream("application.properties");
		// ���������������ļ�
		Properties pro = new Properties();
		pro.load(in);
		return pro.getProperty(name);
	}
}
