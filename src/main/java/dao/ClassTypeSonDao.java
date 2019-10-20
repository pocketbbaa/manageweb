package dao;

import dto.ClassTypeSon;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClassTypeSonDao {


    List<ClassTypeSon> getListByPid(@Param("pId") Integer pId);

    void add(ClassTypeSon classTypeSon);
}
