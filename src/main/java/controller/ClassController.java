package controller;

import com.alibaba.fastjson.JSONObject;
import dto.ClassPackage;
import dto.ClassPhase;
import dto.ClassType;
import dto.ClassTypeSon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.ClassService;

import java.util.List;

@Controller
public class ClassController {

    @Autowired
    private ClassService classService;

    /**
     * 课程管理首页
     *
     * @param map
     * @return
     */
    @RequestMapping(value = "/class/manage")
    public String ogManage(ModelMap map) {
        System.out.println("in class/manage ...");
        List<ClassType> classTypeList = classService.getClassType();
        map.addAttribute("classTypeList", classTypeList);
        System.out.println("classTypeList：" + JSONObject.toJSONString(classTypeList));
        return "class_manage";
    }

    /**
     * 添加一级课程类型
     *
     * @param classType
     * @return
     */
    @RequestMapping(value = "/class/addClassType")
    public ModelAndView addClassType(ClassType classType) {
        classService.addClassType(classType);
        return new ModelAndView("redirect:/class/manage");
    }

    /**
     * 添加二级课程类型
     *
     * @param classTypeSon
     * @return
     */
    @RequestMapping(value = "/class/addClassTypeSon")
    public ModelAndView addClassTypeSon(ClassTypeSon classTypeSon) {
        classService.addClassTypeSon(classTypeSon);
        return new ModelAndView("redirect:/class/manage");
    }

    /**
     * 添加课程阶段
     *
     * @param classPhase
     * @return
     */
    @RequestMapping(value = "/class/addClassPhase")
    public ModelAndView addClassPhase(ClassPhase classPhase) {
        classService.addClassPhase(classPhase);
        return new ModelAndView("redirect:/class/manage");
    }

    /**
     * 添加课程包
     *
     * @param classPackage
     * @return
     */
    @RequestMapping(value = "/class/addClassPackage")
    public ModelAndView addClassPackage(ClassPackage classPackage) {
        classService.addClassPackage(classPackage);
        return new ModelAndView("redirect:/class/manage");
    }

    /**
     * 删除课程包
     *
     * @return
     */
    @RequestMapping(value = "/classPackage/delete/{id}")
    public ModelAndView deleteClassPackageById(@PathVariable("id") Integer id) {
        classService.deleteClassPackageById(id);
        return new ModelAndView("redirect:/class/manage");
    }

    /**
     * 删除课程阶段
     *
     * @return
     */
    @RequestMapping(value = "/classPhase/delete/{id}")
    public ModelAndView deleteClassPhaseById(@PathVariable("id") Integer id) {
        classService.deleteClassPhaseById(id);
        return new ModelAndView("redirect:/class/manage");
    }


}
