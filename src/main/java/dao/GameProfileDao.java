package dao;

import dto.BannerGameProfileDTO;

/**
 * 首页banner比赛介绍
 */
public interface GameProfileDao {

    /**
     * 根据ID获取banner比赛介绍
     * @return
     */
    BannerGameProfileDTO getBannerGameProfileDTOById(int id);


}
