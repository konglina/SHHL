package com.guet.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guet.dao.UvaDataDao;
import com.guet.entity.UvaData;
import com.guet.service.UvaDataService;

@Service("uvaDataService")
public class UvaDataServiceImpl implements UvaDataService{
	@Resource
	private UvaDataDao uvaDataDao;
	public List<UvaData> getList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return uvaDataDao.getList(map);
	}
	public List<UvaData> queryPageData(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return uvaDataDao.queryPageData(map);
	}
	public int queryPageCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return uvaDataDao.queryPageCount(map);
	}
	public List<UvaData> queryData(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return uvaDataDao.queryData(map);
	}
	public List<UvaData> realtime(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return uvaDataDao.realtime(map);
	}

}
