package com.ssm.mapper;

import com.ssm.pojo.AssetsAdd;
import com.ssm.pojo.borrow;

import java.util.List;


public interface borrowMapper {
    public int insertborrow(borrow borrow);

    public int updateon(int id);

   public  int  updateoff(int id);

    public List<borrow> selectBorrowList();

    public int updateborrowtime(borrow borrow);

    public borrow select1(int id);

}
