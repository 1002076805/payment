package by.bsu.web.entity;

import java.io.Serializable;
import java.util.Date;

public class Balance implements Serializable {
    private int id;
    private String cardnumber;
    private Double spend;
    private Double balance;
    private String date;
    private String  address;

    public Balance(int id, String cardnumber, Double spend, Double balance, String date, String address) {
        this.id = id;
        this.cardnumber = cardnumber;
        this.spend = spend;
        this.balance = balance;
        this.date = date;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCardnumber() {
        return cardnumber;
    }

    public void setCardnumber(String cardnumber) {
        this.cardnumber = cardnumber;
    }

    public Double getSpend() {
        return spend;
    }

    public void setSpend(Double spend) {
        this.spend = spend;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
