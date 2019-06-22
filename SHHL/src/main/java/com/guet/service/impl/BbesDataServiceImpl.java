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
	
	public PageBean<BbesData> findByPage(int currentPage) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		PageBean<BbesData> pageBean = new PageBean<BbesData>();
		
	    //封装当前页数
        pageBean.setCurrPage(currentPage);
        
		//每页显示的数据
		int pageSize=15;
		pageBean.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = bbesDataDao.selectCount();
		pageBean.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());
      
		map.put("start",(currentPage-1)*pageSize);
		map.put("size", pageBean.getPageSize());
		//封装每页显示的数据
		List<BbesData> lists = bbesDataDao.findByPage(map);
		pageBean.setLists(lists);
		
		return pageBean;
	}

	public int selectCount() {
		// TODO Auto-generated method stub
		return bbesDataDao.selectCount();
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
