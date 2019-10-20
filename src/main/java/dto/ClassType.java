package dto;

import java.util.List;

public class ClassType {

    private Integer id;
    private String name;

    private List<ClassTypeSon> classTypeSonList;


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

    public List<ClassTypeSon> getClassTypeSonList() {
        return classTypeSonList;
    }

    public void setClassTypeSonList(List<ClassTypeSon> classTypeSonList) {
        this.classTypeSonList = classTypeSonList;
    }
}
