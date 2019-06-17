package com.guet.init;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.file.FileSystems;
import java.nio.file.Paths;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class FileMonitor {
	public void getBBESFile() throws FileNotFoundException, IOException {
		final String path = getConfigInfo.getInfo("Path.BBESDataFile");
		final Timer timer = new Timer();
		timer.schedule(new TimerTask() {
			public void run() {
				WatchKey key;
				try {
					WatchService watchService = FileSystems.getDefault().newWatchService();
					Paths.get(path).register(watchService, StandardWatchEventKinds.ENTRY_CREATE);
					while (true) {
						File file = new File(path);
						File[] files = file.listFiles();
						key = watchService.take();
						for (WatchEvent<?> event : key.pollEvents()) {
							String fileName = path + "\\" + event.context();
							File processFile = new File(fileName);
							long startTime = System.currentTimeMillis();
							while (true) {
								long endTime = System.currentTimeMillis();
								long usedTime = (endTime - startTime) / 1000;
								if (fileIsNotUsed(fileName) || usedTime > 300)
									break;
							}
							List<String> dataLine = txtRead.txt2String(processFile);
							boolean effort = InsertBBESDataInDB.InsertBBESData(dataLine);
							if (effort)
								processFile.delete();
						}
						if (!key.reset()) {
							break; // �ж�ѭ��
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}, 2000, 3000);
	}

	public void getUVAFile() throws FileNotFoundException, IOException {
		final String path = getConfigInfo.getInfo("Path.UVADataFile");
		final Timer timer = new Timer();
		timer.schedule(new TimerTask() {
			public void run() {
				WatchKey key;
				try {
					WatchService watchService = FileSystems.getDefault().newWatchService();
					Paths.get(path).register(watchService, StandardWatchEventKinds.ENTRY_CREATE);
					while (true) {
						File file = new File(path);
						File[] files = file.listFiles();
						key = watchService.take();
						for (WatchEvent<?> event : key.pollEvents()) {
							String fileName = path + "\\" + event.context();
							File processFile = new File(fileName);
							long startTime = System.currentTimeMillis();
							while (true) {
								long endTime = System.currentTimeMillis();
								long usedTime = (endTime - startTime) / 1000;
								
								if (fileIsNotUsed(fileName) || usedTime > 300)
									break;
							}
							boolean effort = InsertUVADataInDB.InsertUVAData(fileName);
							if (effort)
								processFile.delete();
						}
						if (!key.reset()) {
							break; 
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}, 2000, 3000);
	}

	private boolean fileIsNotUsed(String filePath) {
		try {
			File file = new File(filePath);
			RandomAccessFile raf = new RandomAccessFile(file, "rw");
			raf.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
