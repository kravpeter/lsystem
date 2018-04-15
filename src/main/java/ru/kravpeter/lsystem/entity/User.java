package ru.kravpeter.lsystem.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "users")
public class User implements Serializable {
    @Id
    @Column(name = "user_email")
    private String email;
    @Column(name = "user_password")
    private String password;
    @Column(name = "user_name")
    private String name;
    @Column(name = "user_surname")
    private String surname;
    @Column(name = "user_reg_date")
    @Temporal(TemporalType.DATE)
    private java.util.Date regdate;
    @Column(name = "user_role")
    private int role;
    @Column(name = "user_phone_number")
    private String phonenumber;

    protected User() {
    }

    public User(String name, String surname, String email, String phonenumber, int role) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phonenumber = phonenumber;
        this.role = role;
    }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }

    public void setPassword(String password) { this.password = password; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public String getSurname() { return surname; }

    public void setSurname(String surname) { this.surname = surname; }

    public Date getRegdate() { return regdate; }

    public void setRegdate(Date regdate) { this.regdate = regdate; }

    public String getRole() {
        switch (role) {
            case 1: return "ROLE_ADMIN";
            case 2: return "ROLE_MANAGER";
            case 3: return "ROLE_DRIVER";
            default: return null;
        }
    }

    public void setRole(int role) { this.role = role; }

    public String getPhonenumber() { return phonenumber; }

    public void setPhonenumber(String phonenumber) { this.phonenumber = phonenumber; }
}
