package com.ssm.controler;

import com.ssm.pojo.AssetsClass;
import com.ssm.service.assetsClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/assetsClass")
public class assetsClassControler {
    @Autowired
    assetsClassService assetsClassService;

    @RequestMapping("add")
    public ModelAndView add(AssetsClass assetsClass) {
        ModelAndView mv = new ModelAndView();
        int n = assetsClassService.insertClass(assetsClass);
        System.out.println(assetsClass);
        if (n != 0) {
            System.out.println("添加成功");
            mv.setViewName("/pages/AsstesClass/ok");
        } else {
            System.out.println("添加失败");
            mv.setViewName("/pages/AsstesClass/500");
        }
        return mv;

    }

    @RequestMapping("show")
    private ModelAndView show() {
        ModelAndView mv = new ModelAndView();
        List<AssetsClass> assetsClasses = assetsClassService.asseteClassList();
        mv.addObject("assetsClasses", assetsClasses);
        mv.setViewName("pages/AsstesClass/assetsClassAdd");
        return mv;
    }

    @RequestMapping("del")
    private ModelAndView del(int id) {
        ModelAndView mv = new ModelAndView();
        int n = assetsClassService.delasseteClass(id);
        if (n != 0) {
            mv.setViewName("/pages/AsstesClass/ok");

        } else {
            mv.setViewName("/pages/AsstesClass/500");
        }
        return mv;


    }

    @RequestMapping("byid")
    private ModelAndView byid(int id) {
        ModelAndView mv = new ModelAndView();
        AssetsClass assetsClass = assetsClassService.selectByid(id);
        mv.addObject("assetsClass", assetsClass);
        mv.setViewName("pages/AsstesClass/assetsClassshow");
        return mv;
    }

}
