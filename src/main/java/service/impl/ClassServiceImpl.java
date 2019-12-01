package service.impl;

import com.alibaba.fastjson.JSONObject;
import dao.ClassPackageDao;
import dao.ClassPhaseDao;
import dao.ClassTypeDao;
import dao.ClassTypeSonDao;
import dto.ClassPackage;
import dto.ClassPhase;
import dto.ClassType;
import dto.ClassTypeSon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import service.ClassService;

import java.util.ArrayList;
import java.util.List;

@Service
public class ClassServiceImpl implements ClassService {

    @Autowired
    private ClassTypeDao classTypeDao;

    @Autowired
    private ClassTypeSonDao classTypeSonDao;

    @Autowired
    private ClassPhaseDao classPhaseDao;

    @Autowired
    private ClassPackageDao classPackageDao;


    @Override
    public List<ClassType> getClassType() {
        List<ClassType> classTypeList = classTypeDao.getList();
        if (!CollectionUtils.isEmpty(classTypeList)) {
            classTypeList.forEach(classType -> {
                List<ClassTypeSon> classTypeSonList = classTypeSonDao.getListByPid(classType.getId());
                if (!CollectionUtils.isEmpty(classTypeSonList)) {
                    classTypeSonList.forEach(classTypeSon -> {
                        List<ClassPhase> classPhaseList = classPhaseDao.getListByPid(classTypeSon.getId());
                        if (!CollectionUtils.isEmpty(classPhaseList)) {
                            classPhaseList.forEach(classPhase -> {
                                List<ClassPackage> classPackageList = classPackageDao.getListByPid(classPhase.getId());
                                if (!CollectionUtils.isEmpty(classPackageList)) {
                                    classPhase.setClassPackageList(classPackageList);
                                }
                            });
                            classTypeSon.setClassPhaseList(classPhaseList);
                        }
                    });
                    classType.setClassTypeSonList(classTypeSonList);
                }
            });
            System.err.println(JSONObject.toJSONString(classTypeList));
            return classTypeList;
        }
        System.err.println(JSONObject.toJSONString(classTypeList));
        return new ArrayList<>();
    }

    @Override
    public void addClassType(ClassType classType) {
        classTypeDao.add(classType);
    }

    @Override
    public void addClassTypeSon(ClassTypeSon classTypeSon) {
        classTypeSonDao.add(classTypeSon);
    }

    @Override
    public void addClassPhase(ClassPhase classPhase) {
        classPhaseDao.add(classPhase);
    }

    @Override
    public void addClassPackage(ClassPackage classPackage) {
        classPackageDao.add(classPackage);
    }

    @Override
    public void deleteClassPackageById(Integer id) {
        classPackageDao.deleteClassPackageById(id);
    }

    @Override
    public void deleteClassPhaseById(Integer id) {
        classPhaseDao.deleteClassPhaseById(id);
    }

    @Override
    public ClassPackage getClassPackageById(Integer id) {

        return classPackageDao.getById(id);
    }

    @Override
    public ClassPhase getClassPhaseById(Integer id) {
        return classPhaseDao.getById(id);
    }

    @Override
    public ClassTypeSon getClassTypeSonById(Integer id) {
        return classTypeSonDao.getById(id);
    }

    @Override
    public ClassType getClassTypeById(Integer id) {
        return classTypeDao.getById(id);
    }
}
