package dao;

import dto.GameTrailerDTO;

import java.util.List;

/**
 * 赛事预告相关
 */
public interface GameTrailerDao {

    /**
     * 获取赛事预告列表
     * @return
     */
    List<GameTrailerDTO> getGameTrailerList();

}
