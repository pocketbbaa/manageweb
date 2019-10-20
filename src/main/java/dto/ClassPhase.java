package dto;

import java.util.List;

public class ClassPhase {

    private Integer id;
    private String name;
    private Integer pId;

    private List<ClassPackage> classPackageList;

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<ClassPackage> getClassPackageList() {
        return classPackageList;
    }

    public void setClassPackageList(List<ClassPackage> classPackageList) {
        this.classPackageList = classPackageList;
    }
}
