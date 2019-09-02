package com.example.qiaomallback.entity;

public class testEntity {
    private Long id1;

    private Long id2;

    private String name;

    private String pic;

    private String inputList;

    private Integer inputType;

    private String name2;

    public testEntity(Long id1, Long id2, String name, String pic, String inputList, Integer inputType, String name2) {
        this.id1 = id1;
        this.id2 = id2;
        this.name = name;
        this.pic = pic;
        this.inputList = inputList;
        this.inputType = inputType;
        this.name2 = name2;
    }

    public testEntity() {
        super();
    }

    public Long getId1() {
        return id1;
    }

    public void setId1(Long id1) {
        this.id1 = id1;
    }

    public Long getId2() {
        return id2;
    }

    public void setId2(Long id2) {
        this.id2 = id2;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public String getInputList() {
        return inputList;
    }

    public void setInputList(String inputList) {
        this.inputList = inputList == null ? null : inputList.trim();
    }

    public Integer getInputType() {
        return inputType;
    }

    public void setInputType(Integer inputType) {
        this.inputType = inputType;
    }

    public String getName2() {
        return name2;
    }

    public void setName2(String name2) {
        this.name2 = name2 == null ? null : name2.trim();
    }
}