package by.bsu.web.entity;

import java.io.Serializable;

public class User implements Serializable {
    private Integer id;
    private Integer isadmin;
    private String account;
    private String  name;
    private String  password;
    private String  idNumber;
    private String  gender;
    private String  tel;
    private String  address;

    public User(Integer id, Integer isadmin, String account, String name, String password, String idNumber, String gender, String tel, String address) {
        this.id = id;
        this.isadmin = isadmin;
        this.account = account;
        this.name = name;
        this.password = password;
        this.idNumber = idNumber;
        this.gender = gender;
        this.tel = tel;
        this.address = address;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIsadmin() {
        return isadmin;
    }

    public void setIsadmin(Integer isadmin) {
        this.isadmin = isadmin;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
