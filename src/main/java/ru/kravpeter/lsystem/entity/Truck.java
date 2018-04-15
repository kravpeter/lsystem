package ru.kravpeter.lsystem.entity;


import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

@Entity
@Table(name="trucks")
public class Truck {
    @Id
    @Column(name = "truck_reg_number")
    private String truck_reg_number;
    @Column(name = "truck_in_order")
    private boolean truck_in_order;
    @Column(name = "truck_capacity")
    private short truck_capacity;
    @Column(name = "truck_quantity_of_drivers")
    private short truck_quantity_of_drivers;

    @Column(name = "truck_reg_date")
    @javax.persistence.Temporal(TemporalType.DATE)
    private Date truck_reg_date;
    @ManyToOne
    @JoinColumn(name="truck_current_location")
    private City city;
    protected Truck(){}
    public Truck(String truck_reg_number,
                 short truck_capacity,
                 short truck_quantity_of_drivers,
                 boolean truck_in_order,
                 City truck_current_location){
        this.truck_reg_number = truck_reg_number;
        this.truck_capacity = truck_capacity;
        this.truck_quantity_of_drivers = truck_quantity_of_drivers;
        System.out.println(LocalDate.now().toString());
        this.truck_in_order = truck_in_order;
        city = truck_current_location;
    }

    public String get_truck_reg_number() {
        return truck_reg_number;
    }

    public void set_truck_reg_number(String truck_reg_number) {
        this.truck_reg_number = truck_reg_number;
    }

    public String get_truck_in_order() {
        return truck_in_order ? "исправна" : "не исправна";
    }

    public void set_truck_in_order(boolean truck_in_order) {
        this.truck_in_order = truck_in_order;
    }

    public short get_truck_capacity() {
        return truck_capacity;
    }

    public void set_truck_capacity(short truck_capacity) {
        this.truck_capacity = truck_capacity;
    }

    public short get_truck_quantity_of_drivers() {
        return truck_quantity_of_drivers;
    }
    public void set_truck_quantity_of_drivers(short truck_quantity_of_drivers) {
        this.truck_quantity_of_drivers = truck_quantity_of_drivers;
    }

    public Date get_truck_reg_date() {
        return truck_reg_date;
    }
    public void set_truck_reg_date(Date truck_reg_date) {
        this.truck_reg_date = truck_reg_date;
    }

    public String get_truck_current_location() {
        return city.get_city_name();
    }
}
