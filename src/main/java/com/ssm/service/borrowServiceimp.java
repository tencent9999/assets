package com.ssm.service;

import com.ssm.mapper.borrowMapper;
import com.ssm.pojo.AssetsAdd;
import com.ssm.pojo.borrow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class borrowServiceimp implements borrowService {
    @Autowired
    borrowMapper borrowMapper;

    @Override
    public int insertborrow(borrow borrow) {
        int n = borrowMapper.insertborrow(borrow);
        return n;
    }

    @Override
    public int updateon(int id) {
        return borrowMapper.updateon(id);
    }

    @Override
    public int updateoff(int id) {
        return borrowMapper.updateoff(id);
    }


    @Override
    public List<borrow> borrowsList() {
        return borrowMapper.selectBorrowList();
    }

    @Override
    public borrow selectborro(int id) {
        return borrowMapper.select1(id);
    }

    @Override
    public int updateborrowtime(borrow borrow) {
        return borrowMapper.updateborrowtime(borrow);
    }
}
