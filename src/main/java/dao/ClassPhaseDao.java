package dao;

import dto.ClassPhase;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClassPhaseDao {

    List<ClassPhase> getListByPid(@Param("pId") Integer pId);

    void add(ClassPhase classPhase);

    void deleteClassPhaseById(@Param("pId") Integer id);

    ClassPhase getById(@Param("id") Integer id);
}
