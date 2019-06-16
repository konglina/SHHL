package com.guet.service.impl;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guet.dao.BbesDataDao;
import com.guet.dao.BoxEnvDao;
import com.guet.entity.BbesData;
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
}
