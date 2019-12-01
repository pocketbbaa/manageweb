package controller;

import com.alibaba.fastjson.JSONObject;
import dto.ClassType;
import dto.SchoolDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.ClassService;
import service.SchoolService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SchoolController {

    @Autowired
    private SchoolService schoolService;

    @Autowired
    private ClassService classService;

    /**
     * 机构首页
     *
     * @param map
     * @return
     */
    @RequestMapping(value = "/school/ogManage")
    public String ogManage(ModelMap map, HttpServletRequest request) {
        System.out.println("in school/ogManage ...");
        List<SchoolDTO> schoolList = schoolService.getList();
        buildHeader(map, request);
        map.addAttribute("schoolList", schoolList);
        System.out.println("schoolList：" + JSONObject.toJSONString(schoolList));
        return "og_manage";
    }

    @RequestMapping(value = "/school/list")
    public ModelAndView index(ModelMap map, HttpServletRequest request) {
        System.out.println("in school/list ...");
        List<SchoolDTO> schoolList = schoolService.getList();
        buildHeader(map, request);
        map.put("schoolList", schoolList);
        return new ModelAndView("og_manage", map);
    }

    /**
     * 更新机构页
     *
     * @return
     */
    @RequestMapping(value = "/school/update")
    public ModelAndView update(SchoolDTO schoolDTO) {
        System.out.println("in school/update ...schoolDTO:" + JSONObject.toJSONString(schoolDTO));
        schoolService.update(schoolDTO);
        return new ModelAndView("redirect:/school/ogManage");
    }

    @RequestMapping(value = "/school/add")
    public ModelAndView add(SchoolDTO schoolDTO) {
        System.out.println("in school/add ...schoolDTO:" + JSONObject.toJSONString(schoolDTO));
        schoolService.add(schoolDTO);
        return new ModelAndView("redirect:/school/ogManage");
    }

    @RequestMapping(value = "/school/detail/{id}")
    public String add(@PathVariable("id") Integer id, ModelMap map) {
        System.out.println("in school/detail ...id:" + id);
        SchoolDTO schoolDTO = schoolService.getById(id);
        map.addAttribute("school", schoolDTO);
        return "update_og";
    }

    @RequestMapping(value = "/school/delete/{id}")
    public ModelAndView delete(@PathVariable("id") Integer id) {
        System.out.println("in school/delete ...id:" + id);
        schoolService.deleteById(id);
        return new ModelAndView("redirect:/school/ogManage");
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
