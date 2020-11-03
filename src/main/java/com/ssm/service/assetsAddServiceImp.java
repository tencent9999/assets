package com.ssm.service;

import com.ssm.mapper.assetsAddMapper;
import com.ssm.pojo.AssetsAdd;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class assetsAddServiceImp implements assetsAddService {
    @Autowired
    assetsAddMapper assetsAddMapper;

    @Override
    public int insertassers(AssetsAdd assetsAdd) {
        int n = assetsAddMapper.insertassers(assetsAdd);
        return n;
    }

    @Override
    public List asseteClassList() {
        return assetsAddMapper.selectClass();
    }

    @Override
    public List asseteAddList() {
        return assetsAddMapper.selectAdd();
    }

    @Override
    public AssetsAdd selectByid(int id) {
        return assetsAddMapper.selectByid(id);
    }

    @Override
    public int delByid(int id) {
        return assetsAddMapper.delByid(id);
    }

    @Override
    public int updateByid(AssetsAdd assetsAdd) {
        return assetsAddMapper.updateByid(assetsAdd);
    }
}
