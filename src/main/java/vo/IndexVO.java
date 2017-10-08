package vo;

import dto.ArticleDTO;
import dto.BannerGameProfileDTO;
import dto.DisciplineDTO;
import dto.GameTrailerDTO;

import java.util.List;

/**
 * 首页展示数据
 */
public class IndexVO {

    private BannerGameProfileDTO bannerGameProfileDTO;
    private List<DisciplineDTO> disciplineDTO;
    private List<ArticleDTO> articleDTO;
    private List<GameTrailerDTO> gameTrailerDTO;

    @Override
    public String toString() {
        return "IndexVO{" +
                "bannerGameProfileDTO=" + bannerGameProfileDTO +
                ", disciplineDTO=" + disciplineDTO +
                ", articleDTO=" + articleDTO +
                ", gameTrailerDTO=" + gameTrailerDTO +
                '}';
    }

    public BannerGameProfileDTO getBannerGameProfileDTO() {
        return bannerGameProfileDTO;
    }

    public void setBannerGameProfileDTO(BannerGameProfileDTO bannerGameProfileDTO) {
        this.bannerGameProfileDTO = bannerGameProfileDTO;
    }

    public List<DisciplineDTO> getDisciplineDTO() {
        return disciplineDTO;
    }

    public void setDisciplineDTO(List<DisciplineDTO> disciplineDTO) {
        this.disciplineDTO = disciplineDTO;
    }

    public List<ArticleDTO> getArticleDTO() {
        return articleDTO;
    }

    public void setArticleDTO(List<ArticleDTO> articleDTO) {
        this.articleDTO = articleDTO;
    }

    public List<GameTrailerDTO> getGameTrailerDTO() {
        return gameTrailerDTO;
    }

    public void setGameTrailerDTO(List<GameTrailerDTO> gameTrailerDTO) {
        this.gameTrailerDTO = gameTrailerDTO;
    }
}
