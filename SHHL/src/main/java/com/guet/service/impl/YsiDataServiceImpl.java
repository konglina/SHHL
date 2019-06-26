package com.guet.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guet.dao.YsiDataDao;
import com.guet.entity.YsiData;
import com.guet.service.YsiDataService;

@Service("ysiDataService")
public class YsiDataServiceImpl implements YsiDataService{
	@Resource
	private YsiDataDao ysiDataDao;
	public List<YsiData> getList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return ysiDataDao.getList(map);
	}
	public List<YsiData> realtime(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return ysiDataDao.realtime(map);
	}
	
	public List<YsiData> queryPageData(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return ysiDataDao.queryPageData(map);
	}
	public int queryPageCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return ysiDataDao.queryPageCount(map);
	}
	public List<YsiData> queryData(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return ysiDataDao.queryData(map);
	}

}
