package service.impl;

import dao.ArticleDao;
import dao.DisciplineDao;
import dao.GameProfileDao;
import dao.GameTrailerDao;
import dto.ArticleDTO;
import dto.BannerGameProfileDTO;
import dto.DisciplineDTO;
import dto.GameTrailerDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IndexService;
import vo.IndexVO;

import java.util.List;

/**
 * 首页数据组装
 */
@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    private GameProfileDao gameProfileDao;
    @Autowired
    private DisciplineDao disciplineDao;
    @Autowired
    private ArticleDao articleDao;
    @Autowired
    private GameTrailerDao gameTrailerDao;

    public IndexVO getIndexVO(int id) {

        BannerGameProfileDTO BannerGameProfile = getBannerGameProfileDTO(id);
        List<DisciplineDTO> disciplineDTOList = getDisciplineList();
        List<ArticleDTO> articleDTOList = getArticleList();
        List<GameTrailerDTO> gameTrailerDTOList = getGameTrailerList();

        IndexVO indexVO = new IndexVO();
        indexVO.setArticleDTO(articleDTOList);
        indexVO.setBannerGameProfileDTO(BannerGameProfile);
        indexVO.setDisciplineDTO(disciplineDTOList);
        indexVO.setGameTrailerDTO(gameTrailerDTOList);
        return indexVO;
    }


    /**
     * 获取首页banner比赛介绍
     *
     * @param id
     * @return
     */
    private BannerGameProfileDTO getBannerGameProfileDTO(int id) {
        return gameProfileDao.getBannerGameProfileDTOById(id);
    }

    /**
     * 获取赛事介绍中的比赛列表
     */
    private void getGameList() {

    }

    /**
     * 获取比赛规程列表
     */
    private List<DisciplineDTO> getDisciplineList() {
        return disciplineDao.getDisciplineForIndex();
    }

    /**
     * 获取相关文章列表
     */
    private List<ArticleDTO> getArticleList() {
        return articleDao.getArticleList();
    }

    /**
     * 获取今年比赛赛事预告列表
     */
    private List<GameTrailerDTO> getGameTrailerList() {
        return gameTrailerDao.getGameTrailerList();

    }

}
