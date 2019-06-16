package com.guet.mapper;

import com.guet.entity.Uva;
import com.guet.entity.UvaExample;
import com.guet.entity.UvaWithBLOBs;
import java.util.List;

public interface UvaMapper {
    int insert(UvaWithBLOBs record);

    int insertSelective(UvaWithBLOBs record);

    List<UvaWithBLOBs> selectByExampleWithBLOBs(UvaExample example);

    List<Uva> selectByExample(UvaExample example);
}