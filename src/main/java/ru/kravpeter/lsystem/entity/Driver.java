package ru.kravpeter.lsystem.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="drivers")
public class Driver implements Serializable{
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name="driver_id")
    private int id;
    @OneToOne
    @JoinColumn(name="driver_email")
    private User user;
    @Column(name="driver_hours")
    private int driver_hours;
    @Column(name="driver_status")
    private int driver_status;
    @ManyToOne
    @JoinColumn(name="driver_current_truck", nullable = true)
    private Truck driver_truck;
    @ManyToOne
    @JoinColumn(name="driver_current_location")
    private City driver_city;

    protected Driver() {}

    public Driver(User user, City city){
        this.user = user;
        driver_city = city;
        driver_hours = 0;
        driver_status = 0; //0 - Off-work; 1 - Standby; 2 - Driving
        driver_city = city;
    }
    public String get_driver_name(){
        return user.getName();
    }
    public String get_driver_surname(){
        return user.getSurname();
    }
    public String get_driver_status(){
        switch (driver_status){
            case 0: return "Off-work";
            case 1: return "Standby";
            case 2: return "Driving";
            default: return null;
        }
    }
    public int get_driver_hours(){
        return driver_hours;
    }
    public String get_driver_vehicle(){
        return "no";
    }
    public String get_driver_phone_number(){
        return user.getPhonenumber();
    }
    public String get_driver_email(){ return user.getEmail(); }

    public String get_driver_city() {
        return driver_city.get_city_name();
    }
}