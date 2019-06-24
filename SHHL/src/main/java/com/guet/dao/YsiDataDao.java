package com.guet.dao;

import java.util.List;
import java.util.Map;

import com.guet.entity.YsiData;;

public interface YsiDataDao {
	/**
	 * 获取初始数据
	 * @param map
	 * @return
	 */
	public List<YsiData> getList(Map<String, Object> map);
	public List<YsiData> realtime(Map<String, Object> map);
	
	/**
	 * 分页查询
	 * @param map
	 * @return
	 */
	public List<YsiData> queryPageData(Map<String , Object> map);
	/**
	 * 查询总记录数
	 * @param map
	 * @return
	 */
	public int queryPageCount(Map<String, Object> map);
}
