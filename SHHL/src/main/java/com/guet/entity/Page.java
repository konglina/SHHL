package com.guet.entity;

import java.util.List;
/**
 * 将页面参数封装成一个类
 * @author guet
 *
 * @param <T>
 */
public class Page<T> { //T为目标类
    private List<T> datas; //数据
    private Integer totalsize;//总记录数
    private Integer totalno; //总页码数
    private Integer pageno; //当前页
    private Integer pagesize; //每页的大小
    public List<T> getDatas() {
         return datas;
    }
    public void setDatas(List<T> datas) {
         this.datas = datas;
    }
    public Integer getTotalsize() {
         return totalsize;
    }
    public void setTotalsize(Integer totalsize) {
         this.totalsize = totalsize;
    }
    public Integer getTotalno() {
         return totalno;
    }
    public void setTotalno(Integer totalno) {
         this.totalno = totalno;
    }
    public Integer getPageno() {
         return pageno;
    }
    public void setPageno(Integer pageno) {
         this.pageno = pageno;
    }
    public Integer getPagesize() {
         return pagesize;
    }
    public void setPagesize(Integer pagesize) {
         this.pagesize = pagesize;
    }
    
    
}