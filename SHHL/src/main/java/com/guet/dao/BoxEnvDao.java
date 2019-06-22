package com.guet.dao;

import java.util.List;
import java.util.Map;

import com.guet.entity.BbesData;
import com.guet.entity.BoxEnv;

public interface BoxEnvDao {
	public List<BoxEnv> getList(Map<String, Object> map);
	
	/**
	 * 分页查询
	 * @param map
	 * @return
	 */
	public List<BoxEnv> queryPageData(Map<String , Object> map);
	/**
	 * 查询总记录数
	 * @param map
	 * @return
	 */
	public int queryPageCount(Map<String, Object> map);
}
