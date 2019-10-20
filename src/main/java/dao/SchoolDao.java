package dao;

import dto.SchoolDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SchoolDao {

    List<SchoolDTO> getList();

    SchoolDTO getById(@Param("id") Integer id);

    void add(SchoolDTO schoolDTO);

    void update(SchoolDTO schoolDTO);

    void deleteById(@Param("id") Integer id);
}
