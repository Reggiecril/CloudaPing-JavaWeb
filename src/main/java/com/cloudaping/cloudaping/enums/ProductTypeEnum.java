package com.cloudaping.cloudaping.enums;

public enum ProductTypeEnum {
    mobile(1,"mobile"),
    audiovideo(2,"audiovideo"),
    laptop(3,"laptop"),
    computer(4,"computer"),
    camera(5,"camera");

    private Integer typeCode;
    private String translatedType;

    ProductTypeEnum() {
    }

    ProductTypeEnum(Integer typeCode, String translatedType) {
        this.typeCode = typeCode;
        this.translatedType = translatedType;
    }

    public Integer getType() {
        return typeCode;
    }

    public String getTranslatedType() {
        return translatedType;
    }
}
