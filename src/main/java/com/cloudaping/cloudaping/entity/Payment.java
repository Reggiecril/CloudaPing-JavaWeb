package com.cloudaping.cloudaping.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
public class Payment implements Serializable {
    @Id
    private Integer Id;
    private String userId;
    private String cardNumber;
    private String expiredDate;
    private String secureNumber;
    private Integer dataFlag;

    public Payment() {
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

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getExpiredDate() {
        return expiredDate;
    }

    public void setExpiredDate(String expiredDate) {
        this.expiredDate = expiredDate;
    }

    public String getSecureNumber() {
        return secureNumber;
    }

    public void setSecureNumber(String secureNumber) {
        this.secureNumber = secureNumber;
    }

    public Integer getDataFlag() {
        return dataFlag;
    }

    public void setDataFlag(Integer dataFlag) {
        this.dataFlag = dataFlag;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "Id=" + Id +
                ", userId='" + userId + '\'' +
                ", cardNumber='" + cardNumber + '\'' +
                ", expiredDate='" + expiredDate + '\'' +
                ", secureNumber='" + secureNumber + '\'' +
                ", dataFlag=" + dataFlag +
                '}';
    }
}
