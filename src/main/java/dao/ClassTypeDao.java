package dao;

import dto.ClassType;

import java.util.List;

public interface ClassTypeDao {

    List<ClassType> getList();

    void add(ClassType classType);
}
