package com.cloudaping.cloudaping.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
public class Address implements Serializable {
    @Id
    private Integer Id;
    private String userId;
    private String receiver;
    private String phone;
    private String address;
    private Integer dataFlag;

    public Address() {
    }

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getDataFlag() {
        return dataFlag;
    }

    public void setDataFlag(Integer dataFlag) {
        this.dataFlag = dataFlag;
    }

    @Override
    public String toString() {
        return "Address{" +
                "Id=" + Id +
                ", userId='" + userId + '\'' +
                ", receiver='" + receiver + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", dataFlag=" + dataFlag +
                '}';
    }
}
