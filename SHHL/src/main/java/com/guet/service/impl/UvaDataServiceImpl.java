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

}
