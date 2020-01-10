package com.cloudaping.cloudaping.entity.productType;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Computer extends ProductType{
    @Id
    private Integer computerId;
    private String computerBrand;
    private String computerCase;
    private String computerScreen;
    private String computerCpu;
    private String computerGraphicsCard;
    private Integer productId;


    public Computer() {
    }

    public Integer getComputerId() {
        return computerId;
    }

    public void setComputerId(Integer computerId) {
        this.computerId = computerId;
    }

    public String getComputerBrand() {
        return computerBrand;
    }

    public void setComputerBrand(String computerBrand) {
        this.computerBrand = computerBrand;
    }

    public String getComputerCase() {
        return computerCase;
    }

    public void setComputerCase(String computerCase) {
        this.computerCase = computerCase;
    }

    public String getComputerScreen() {
        return computerScreen;
    }

    public void setComputerScreen(String computerScreen) {
        this.computerScreen = computerScreen;
    }

    public String getComputerCpu() {
        return computerCpu;
    }

    public void setComputerCpu(String computerCpu) {
        this.computerCpu = computerCpu;
    }

    public String getComputerGraphicsCard() {
        return computerGraphicsCard;
    }

    public void setComputerGraphicsCard(String computerGraphicsCard) {
        this.computerGraphicsCard = computerGraphicsCard;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }
}
