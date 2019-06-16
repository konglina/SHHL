package com.guet.mapper;

import com.guet.entity.Sanya;
import com.guet.entity.SanyaExample;
import java.util.List;

public interface SanyaMapper {
    int insert(Sanya record);

    int insertSelective(Sanya record);

    List<Sanya> selectByExample(SanyaExample example);
}