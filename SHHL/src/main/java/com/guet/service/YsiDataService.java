package com.guet.service;

import java.util.List;
import java.util.Map;

import com.guet.entity.BbesData;
import com.guet.entity.YsiData;;

public interface YsiDataService {
	public List<YsiData> getList(Map<String, Object> map);
	public List<YsiData> realtime(Map<String, Object> map);
	
	
	public List<YsiData> queryPageData(Map<String , Object> map);
	public int queryPageCount(Map<String, Object> map);
}
