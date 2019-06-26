package com.guet.service;

import java.util.List;
import java.util.Map;

import com.guet.entity.BbesData2;
import com.guet.entity.UvaData;

public interface UvaDataService {
	public List<UvaData> getList(Map<String, Object> map);
	
	public List<UvaData> queryPageData(Map<String , Object> map);
	public int queryPageCount(Map<String, Object> map);
	public List<UvaData> queryData(Map<String , Object> map);
}
