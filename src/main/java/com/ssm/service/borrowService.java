package com.ssm.service;


import com.ssm.pojo.AssetsAdd;
import com.ssm.pojo.borrow;

import java.util.List;

public interface borrowService {
    public int insertborrow(borrow borrow);

    public int updateon(int id);

    public int updateoff(int id);

    public List<borrow> borrowsList();

    public borrow selectborro(int id);
    public int  updateborrowtime (borrow borrow);
}
