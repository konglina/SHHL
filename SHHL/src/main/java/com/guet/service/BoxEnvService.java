package com.guet.service;
import java.util.List;
import java.util.Map;

import com.guet.entity.BbesData;
import com.guet.entity.BoxEnv;
public interface BoxEnvService {
	public List<BoxEnv> getList(Map<String, Object> map);
	
	public List<BoxEnv> queryPageData(Map<String , Object> map);
	public int queryPageCount(Map<String, Object> map);
}
