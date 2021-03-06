package com.guet.service.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guet.dao.BbesDataDao;
import com.guet.dao.BoxEnvDao;
import com.guet.entity.BbesData;
import com.guet.entity.BbesData2;
import com.guet.entity.PageBean;
import com.guet.service.BbesDataService;
/**
 * @author Micah Yin
 */
@Service("bbesDataService")
public class BbesDataServiceImpl implements BbesDataService{
	@Resource
	private BbesDataDao bbesDataDao;
	public List<BbesData> getList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return bbesDataDao.getList(map);
	}
	
	public List<BbesData> realtime(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return bbesDataDao.realtime(map);
	}

	public List<BbesData> queryPageData(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return bbesDataDao.queryPageData(map);
	}

	public int queryPageCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return bbesDataDao.queryPageCount(map);
	}
}
