package service.impl;

import dao.GameProfileDao;
import dto.BannerGameProfileDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IndexService;

/**
 * 首页数据组装
 */
@Service
public class IndexServiceImpl implements IndexService{

    @Autowired
    private GameProfileDao gameProfileDao;

    public BannerGameProfileDTO getBannerGameProfileDTOById(int id) {
        return gameProfileDao.getBannerGameProfileDTOById(id);
    }


    /**
     * 获取首页banner比赛介绍
     * @param id
     * @return
     */
    private BannerGameProfileDTO getBannerGameProfileDTO(int id){
        return gameProfileDao.getBannerGameProfileDTOById(id);
    }

    /**
     * 获取赛事介绍中的比赛列表
     */
    private void getGameList(){

    }

    /**
     * 获取比赛章程列表
     */
    private void getGameAssociation(){

    }

    /**
     * 获取相关文章列表
     */
    private void getFileList(){

    }

    /**
     * 获取以往比赛图片列表
     */
    private void getGamePicUrlList(){


    }

    /**
     * 获取今年比赛赛事预告列表
     */
    private void getGameTrailerList(){

    }

}
