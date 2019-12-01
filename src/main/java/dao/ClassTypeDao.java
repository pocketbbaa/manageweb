package dao;

import dto.ClassType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClassTypeDao {

    List<ClassType> getList();

    void add(ClassType classType);

    ClassType getById(@Param("id") Integer id);
}
