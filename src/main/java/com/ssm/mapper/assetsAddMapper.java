package com.ssm.mapper;

import com.ssm.pojo.AssetsAdd;
import com.ssm.pojo.AssetsClass;

import java.util.ArrayList;

public interface assetsAddMapper {
    public int insertassers(AssetsAdd assetsAdd);

    public ArrayList<AssetsClass> selectClass();

    public ArrayList<AssetsAdd> selectAdd();

    public AssetsAdd selectByid(int id);

    public int delByid(int id);

    public int updateByid(AssetsAdd assetsAdd);
}
