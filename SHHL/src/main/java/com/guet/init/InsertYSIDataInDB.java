package com.guet.init;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class InsertYSIDataInDB {
	public static boolean InsertYSIData(List<String> dataList) throws IOException, SQLException {
		String url = getConfigInfo.getInfo("SQL.sensor.url");
		String userName = getConfigInfo.getInfo("SQL.bosensorx.userName");
		String passWord = getConfigInfo.getInfo("SQL.sensor.passWord");
		Connection conn = dbProcess.getConn(url, userName, passWord);
		if (conn == null) {
			System.out.print("the db is not connect!! ");
			return false;
		}
		for (int i = 0; i < dataList.size(); i++) {
			try {
				String tempStrLabel = dataList.get(i).replace("\r\n", "");
				if (tempStrLabel.contains("# RECV ASCII>") && i + 1 < dataList.size()
						&& !dataList.get(i + 1).contains("data")) {
					i++;
					String tempStr = dataList.get(i).replace("\r\n", "");
					String[] YSIDataArray = tempStr.split(" ");
					if (YSIDataArray.length != 15)
						continue;
					if (YSIDataArray[0].length() != 6 || YSIDataArray[1].length() != 6)
						continue;
					String dateStr = getDate(YSIDataArray[0], YSIDataArray[1]);
					String sql = "insert into ysi_data (TIME,Turbidity,TSS,Chlorophyll,BGA_PE,ODO,Temperature,Specific_Conductance,Salinity,pH,ORP,Pressure,Depth) "
							+ "values (\"" + dateStr + "\"," + YSIDataArray[2] + "," + YSIDataArray[3] + ","
							+ YSIDataArray[4] + "," + YSIDataArray[5] + "," + YSIDataArray[6]
							+ "," + YSIDataArray[8] + "," + YSIDataArray[9] + "," + YSIDataArray[10] + ","
							+ YSIDataArray[11] + "," + YSIDataArray[12] + "," + YSIDataArray[13] + ","
							+ YSIDataArray[14] + ");";
					dbProcess.insertData(conn, sql);
				}
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		return true;
	}

	private static String getDate(String MMDDYY, String HHMMSS) {
		String month = MMDDYY.substring(0, 2);
		String day = MMDDYY.substring(2, 4);
		String year = "20" + MMDDYY.substring(4);
		String hour = HHMMSS.substring(0, 2);
		String minute = HHMMSS.substring(2, 4);
		String seconds = HHMMSS.substring(4);
		return year + "-" + month + "-" + day + " " + hour + ":" + minute + ":" + seconds;
	}
}
