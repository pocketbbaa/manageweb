package dao;

import dto.InfoDTO;
import org.apache.ibatis.annotations.Param;

public interface InfoDao {

    InfoDTO getById(@Param("id") Integer id);

}
