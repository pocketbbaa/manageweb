package controller;

import dto.InfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.IndexService;

/**
 * 首页
 */
@Controller
public class IndexController {

    @Autowired
    private IndexService indexService;

    @RequestMapping(value = "/")
    public ModelAndView loginPage(ModelMap map) {
        System.out.println("in login ...");
        return new ModelAndView("login");
    }


    @RequestMapping(value = "/login")
    public ModelAndView login(ModelMap map) {
        System.out.println("in login ...");
        return new ModelAndView("redirect:/index");
    }


    @RequestMapping(value = "/index")
    public String index(ModelMap map) {
        System.out.println("in login ...");
        InfoDTO infoDTO = indexService.getIndex();
        map.addAttribute("info", infoDTO);
        return "index";
    }


    @RequestMapping(value = "/classInfo/{id}")
    public ModelAndView classInfo(ModelMap map, @PathVariable("id") Integer id) {
        System.out.println("in classInfo  ...id:" + id);
        return new ModelAndView("class_info", map);
    }


    @RequestMapping(value = "/classManage")
    public ModelAndView classManage(ModelMap map) {
        System.out.println("in classManage  ...");
        return new ModelAndView("class_manage", map);
    }


    @RequestMapping(value = "/addManage")
    public ModelAndView addManage(ModelMap map) {
        System.out.println("in addManage  ...");
        return new ModelAndView("og_manage", map);
    }
}
