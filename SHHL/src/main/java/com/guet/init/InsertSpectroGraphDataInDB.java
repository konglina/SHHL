package com.guet.init;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class InsertSpectroGraphDataInDB {
	public static boolean InsertSpectroGraphData(List<String> dataList) throws IOException, SQLException {
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
				if (tempStrLabel.contains("# RECV ASCII>") && i + 1 < dataList.size()) {
					i++;
					String tempDate=dataList.get(i-1).replace("\r\n", "");
					String[] dateArr=tempDate.replace("[", "").replace("]", "").split(" ");
					String tempStr = dataList.get(i).replace("\r\n", "");
					String[] spectroDataArr = tempStr.split(" ");
					if (spectroDataArr.length != 3)
						continue;
					if (spectroDataArr[0].length() != 6)
						continue;
					String dateStr = getDate(dateArr[0], spectroDataArr[0]);
					String sql = "insert into spectrograph_data (TIME,states,consistency) "
							+ "values (\"" + dateStr + "\"," + spectroDataArr[1] + "," + spectroDataArr[2]+");";
					dbProcess.insertData(conn, sql);
				}
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		return true;
	}

	private static String getDate(String yearMothDay, String HHMMSS) {
		String hour = HHMMSS.substring(0, 2);
		String minute = HHMMSS.substring(2, 4);
		String seconds = HHMMSS.substring(4);
		return yearMothDay + " " + hour + ":" + minute + ":" + seconds;
	}
}
