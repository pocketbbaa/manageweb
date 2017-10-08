package dao;

import dto.DisciplineDTO;

import java.util.List;

/**
 * 规程相关
 */
public interface DisciplineDao {

    /**
     * 获取首页规程列表
     * @return
     */
     List<DisciplineDTO> getDisciplineForIndex();

}
