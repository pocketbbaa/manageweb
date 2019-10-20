package service;

import dto.ClassPackage;
import dto.ClassPhase;
import dto.ClassType;
import dto.ClassTypeSon;

import java.util.List;

public interface ClassService {

    List<ClassType> getClassType();

    void addClassType(ClassType classType);

    void addClassTypeSon(ClassTypeSon classTypeSon);

    void addClassPhase(ClassPhase classPhase);

    void addClassPackage(ClassPackage classPackage);

    void deleteClassPackageById(Integer id);

    void deleteClassPhaseById(Integer id);
}
