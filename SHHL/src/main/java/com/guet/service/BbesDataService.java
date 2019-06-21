package com.guet.service;
import java.util.List;
import java.util.Map;

import com.guet.entity.BbesData;
import com.guet.entity.PageBean;
public interface BbesDataService {
	public List<BbesData> getList(Map<String, Object> map);
	
	public List<BbesData> realtime(Map<String, Object> map);
	
	public int selectCount();
	public PageBean<BbesData> findByPage(int currentPage);
	
	

	public List<BbesData> queryPageData(Map<String , Object> map);
	public int queryPageCount(Map<String, Object> map);
}
