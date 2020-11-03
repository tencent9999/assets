package com.ssm.controler;

import com.ssm.pojo.AssetsAdd;
import com.ssm.pojo.AssetsClass;
import com.ssm.service.assetsAddService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/assets")
public class assetsAddControler {
    @Autowired
    assetsAddService assetsAddService;

    @RequestMapping("add")
    private ModelAndView assetsAdd(AssetsAdd assetsAdd) {
        ModelAndView mv = new ModelAndView();
        int n = assetsAddService.insertassers(assetsAdd);
        if (n != 0) {
            mv.setViewName("/pages/AsstesAdd/ok");
        } else {
            mv.setViewName("/pages/AsstesAdd/500");
        }
        return mv;
    }

    @RequestMapping("ClassShow")
    private ModelAndView ClassShow() {
        ModelAndView mv = new ModelAndView();
        List<AssetsClass> assetsAdds = assetsAddService.asseteClassList();
        mv.addObject("assetsAdds", assetsAdds);
        mv.setViewName("pages/AsstesAdd/assetsAdd");
        return mv;
    }

    @RequestMapping("AddList")
    private ModelAndView addList() {
        ModelAndView mv = new ModelAndView();
        List<AssetsAdd> assetsAdds1 = assetsAddService.asseteAddList();
        mv.addObject("assetsAdds1", assetsAdds1);
        mv.setViewName("pages/AsstesAdd/assetsAddlist");
        return mv;
    }


    @RequestMapping("borrowshow")
    private ModelAndView borrowshow() {
        ModelAndView mv = new ModelAndView();
        List<AssetsAdd> assetsAdds2 = assetsAddService.asseteAddList();
        mv.addObject("assetsAdds1", assetsAdds2);
        mv.setViewName("pages/Borrow/assetsAddlist");
        return mv;
    }

    @RequestMapping("show")
    private ModelAndView show(int id) {
        ModelAndView mv = new ModelAndView();
        AssetsAdd assetsAdd = assetsAddService.selectByid(id);
        mv.addObject("assetsAdd", assetsAdd);
        mv.setViewName("pages/AsstesAdd/assetsAddshow");
        return mv;
    }

    @RequestMapping("upate1")
    private ModelAndView upate1(int id) {
        ModelAndView mv = new ModelAndView();
        AssetsAdd assetsAdd = assetsAddService.selectByid(id);
        mv.addObject("assetsAdd", assetsAdd);
        mv.setViewName("pages/AsstesAdd/assetsAddUpdate");
        return mv;
    }

    @RequestMapping("upate2")
    private ModelAndView upate2(AssetsAdd assetsAdd) {
        ModelAndView mv = new ModelAndView();
        int n = assetsAddService.updateByid(assetsAdd);
        if (n != 0) {
            mv.setViewName("/pages/AsstesAdd/ok");
        } else {
            mv.setViewName("/pages/AsstesAdd/500");
        }
        return mv;
    }

    @RequestMapping("del")
    private ModelAndView del(int id) {
        ModelAndView mv = new ModelAndView();
        int n = assetsAddService.delByid(id);
        if (n != 0) {
            mv.setViewName("/pages/AsstesAdd/ok");
        } else {
            mv.setViewName("/pages/AsstesAdd/500");
        }
        return mv;
    }
}
