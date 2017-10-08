package dao;

import dto.ArticleDTO;

import java.util.List;

/**
 * 文章相关
 */
public interface ArticleDao {

    /**
     * 获取首页文章列表
     * @return
     */
    List<ArticleDTO> getArticleList();

}
