package com.guet.entity;

import java.util.List;
/**
 * 分页实体类
 * @author Micah Yin
 */
public class PageBean<T> {
	private int currPage;//当前页数
    private int pageSize;//每页显示的记录数
    private int totalCount;//总记录数
    private int totalPage;//总页数
    private List<T> datas;//每页的显示的数据
    private List<T> datas2;//显示历史数据...
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getDatas() {
		return datas;
	}
	public void setDatas(List<T> datas) {
		this.datas = datas;
	}
	public List<T> getDatas2() {
		return datas2;
	}
	public void setDatas2(List<T> datas2) {
		this.datas2 = datas2;
	}
}
