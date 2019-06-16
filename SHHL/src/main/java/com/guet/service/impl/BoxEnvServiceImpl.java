package com.guet.service.impl;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.guet.dao.BoxEnvDao;
import com.guet.entity.BoxEnv;
import com.guet.service.BoxEnvService;

@Service("boxEnvService")
public class BoxEnvServiceImpl implements BoxEnvService{
	@Resource
	private BoxEnvDao boxEnvDao;
	public List<BoxEnv> getList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return boxEnvDao.getList(map);
	}

}
