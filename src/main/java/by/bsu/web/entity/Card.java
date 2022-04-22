package by.bsu.web.entity;

import java.io.Serializable;

public class Card implements Serializable {
    private Integer id;
    private String cardnumber;
    private String  password;
    private String  name;
    private String  tel;
    private String  email;

    public Card(Integer id, String cardnumber, String password, String name, String tel, String email) {
        this.id = id;
        this.cardnumber = cardnumber;
        this.password = password;
        this.name = name;
        this.tel = tel;
        this.email = email;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCardnumber() {
        return cardnumber;
    }

    public void setCardnumber(String cardnumber) {
        this.cardnumber = cardnumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
