package dto;

import java.util.List;

public class ClassTypeSon {

    private Integer id;
    private String name;
    private Integer pId;

    private List<ClassPhase> classPhaseList;

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

    public List<ClassPhase> getClassPhaseList() {
        return classPhaseList;
    }

    public void setClassPhaseList(List<ClassPhase> classPhaseList) {
        this.classPhaseList = classPhaseList;
    }
}
