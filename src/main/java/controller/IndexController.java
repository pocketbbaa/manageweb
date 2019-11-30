package controller;

import com.alibaba.fastjson.JSONObject;
import dto.ClassPackage;
import dto.ClassType;
import dto.InfoDTO;
import dto.SchoolDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.ClassService;
import service.IndexService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 首页
 */
@Controller
public class IndexController {

    @Autowired
    private IndexService indexService;
    @Autowired
    private ClassService classService;

    @RequestMapping(value = "/")
    public ModelAndView loginPage(ModelMap map) {
        System.out.println("in login ...");
        return new ModelAndView("login");
    }


    @RequestMapping(value = "/login")
    public ModelAndView login(SchoolDTO schoolDTO, HttpServletRequest request) {
        System.out.println("in login ..." + JSONObject.toJSONString(schoolDTO));
        if (StringUtils.isEmpty(schoolDTO.getUserName()) || StringUtils.isEmpty(schoolDTO.getPassword())) {
            return new ModelAndView("redirect:/register");
        }
        SchoolDTO schoolDTO1 = indexService.login(schoolDTO.getUserName(), schoolDTO.getPassword());
        if (schoolDTO1 != null) {
            HttpSession session = request.getSession();
            session.setAttribute("school", schoolDTO1);
            return new ModelAndView("redirect:/index");
        }
        return new ModelAndView("redirect:/register");
    }

    @RequestMapping(value = "/register")
    public String register(ModelMap map) {
        System.out.println("in register ...");
        return "register";
    }


    @RequestMapping(value = "/index")
    public String index(ModelMap map, HttpServletRequest request) {
        System.out.println("in login ...");

        //首页基本信息
        InfoDTO infoDTO = indexService.getIndex();
        buildHeader(map, request);
        map.addAttribute("info", infoDTO);
        return "index";
    }


    @RequestMapping(value = "/classInfo/{id}")
    public ModelAndView classInfo(ModelMap map, @PathVariable("id") Integer id) {
        System.out.println("in classInfo  ...id:" + id);
        ClassPackage classPackage = classService.getClassPackageById(id);
        map.addAttribute("classPackage", classPackage);
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

    private void buildHeader(ModelMap map, HttpServletRequest request) {
        //学校信息
        HttpSession session = request.getSession();
        SchoolDTO schoolDTO = (SchoolDTO) session.getAttribute("school");
        //课程信息
        List<ClassType> classTypeList = classService.getClassType();
        map.addAttribute("classTypeList", classTypeList);
        map.addAttribute("school", schoolDTO);
    }
}
