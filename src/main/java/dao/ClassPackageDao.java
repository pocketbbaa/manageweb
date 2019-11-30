package dao;

import dto.ClassPackage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClassPackageDao {

    List<ClassPackage> getListByPid(@Param("pId") Integer pId);

    void add(ClassPackage classPackage);

    void deleteClassPackageById(@Param("id") Integer id);

    ClassPackage getById(@Param("id") Integer id);
}
