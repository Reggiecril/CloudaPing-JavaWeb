package com.cloudaping.cloudaping.enums;

public enum ProductCategoryEnum {
    recommend(1,"推荐"),
    lastest(2,"最新"),
    popular(3,"最热");

    private Integer categoryCode;
    private String categoryString;

    ProductCategoryEnum() {
    }

    ProductCategoryEnum(Integer categoryCode, String categoryString) {
        this.categoryCode = categoryCode;
        this.categoryString = categoryString;
    }

    public Integer getCategoryCode() {
        return categoryCode;
    }

    public String getCategoryString() {
        return categoryString;
    }
}
