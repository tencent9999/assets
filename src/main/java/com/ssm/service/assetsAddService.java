package com.ssm.service;

import com.ssm.pojo.AssetsAdd;

import java.util.List;

public interface assetsAddService {
    public int insertassers(AssetsAdd assetsAdd);

    public List asseteClassList();

    public List asseteAddList();

    public AssetsAdd selectByid(int id);

    public int delByid(int id);

    public int updateByid(AssetsAdd assetsAdd);
}
