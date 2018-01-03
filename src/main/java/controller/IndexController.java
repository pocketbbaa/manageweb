package controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.IndexService;
import vo.IndexVO;

/**
 * 首页
 */
@Controller
public class IndexController {

    @Autowired
    private IndexService indexService;

    @RequestMapping(value = "/index")
    public ModelAndView index(ModelMap map) {

        IndexVO indexVO = indexService.getIndexVO(1);
        map.put("indexVO", indexVO);

        System.out.println("indexVO:" + indexVO);
        return new ModelAndView("index", map);
    }


    public static void main(String[] args) {

        A a = new A(1,"aaa","1231231");

        String json = JSONObject.toJSONString(a);

        System.out.println(json);

    }

    static class A{
        private int id;
        private String name;
        private String phone;

        public A(int id, String name, String phone) {
            this.id = id;
            this.name = name;
            this.phone = phone;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getPhone() {
            return phone;
        }

        public void setPhone(String phone) {
            this.phone = phone;
        }
    }
}
