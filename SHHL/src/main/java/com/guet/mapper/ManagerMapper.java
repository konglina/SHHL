package com.guet.mapper;

import com.guet.entity.Manager;
import com.guet.entity.ManagerExample;

import java.util.List;

import org.springframework.stereotype.Component;

@Component("managerMapper")
public interface ManagerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Manager record);

    int insertSelective(Manager record);

    List<Manager> selectByExample(ManagerExample example);

    Manager selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Manager record);

    int updateByPrimaryKey(Manager record);
}