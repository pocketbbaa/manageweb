package controller;

import dto.BannerGameProfileDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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

    @RequestMapping(value = "/index")
    public ModelAndView index(ModelMap map) {

        BannerGameProfileDTO bannerGameProfileDTO = indexService.getBannerGameProfileDTOById(1);
        map.put("bannerGameProfileDTO", bannerGameProfileDTO);

        System.out.println("bannerGameProfileDTO:" + bannerGameProfileDTO);
        return new ModelAndView("index", map);
    }

}
