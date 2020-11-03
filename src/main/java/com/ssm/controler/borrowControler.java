package com.ssm.controler;

import com.ssm.pojo.borrow;
import com.ssm.service.borrowService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("borrow")
public class borrowControler {
    @Autowired
    borrowService borrowService;

    @RequestMapping("insert")
    public ModelAndView insertborrow(borrow borrow) {
        ModelAndView mv = new ModelAndView();
        int n = borrowService.insertborrow(borrow);
        if (n != 0) {
            mv.setViewName("pages/Borrow/ok1");
        } else {
            mv.setViewName("pages/Borrow/500");
        }
        return mv;
    }

    @RequestMapping("add")
    public ModelAndView add(int id) {
        ModelAndView mv = new ModelAndView();
        borrowService.updateon(id);
        mv.addObject("id", id);
        mv.setViewName("pages/Borrow/borrow");
        return mv;
    }

    @RequestMapping("list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView();
        List<borrow> borrowList = borrowService.borrowsList();
        mv.addObject("borrowList", borrowList);
        mv.setViewName("pages/Borrow/borrowlist");
        return mv;
    }

    @RequestMapping("borrow")
    public ModelAndView borrow1(int id1, int id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("id", id1);
        borrow borrow = borrowService.selectborro(id);
        mv.addObject("borrow", borrow);
        mv.setViewName("pages/Borrow/borrow1");
        return mv;
    }

    @RequestMapping("updataTime")
    public ModelAndView time(borrow borrow, int id1) {
        ModelAndView mv = new ModelAndView();
        borrowService.updateoff(id1);
        System.out.println(id1);
        int n = borrowService.updateborrowtime(borrow);
        if (n != 0) {
            mv.setViewName("pages/Borrow/ok");
        } else {
            mv.setViewName("pages/Borrow/500");
        }
        return mv;

    }


}
