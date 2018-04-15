package ru.kravpeter.lsystem.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cities")
public class City {
    @Id
    @Column(name="city_id")
    private int city_id;
    @Column(name="city_name")
    private String city_name;
    protected City(){}
    public City(String city_name){this.city_name = city_name;}
    //@OneToMany (mappedBy = "city")
    //private List<Truck> listTucks;
    //public List<Truck> getTrucks(){
    //    return listTucks;
    //}

    public int get_city_id(){
        return city_id;
    }
    public void set_city_id(int id){
         city_id = id;
    }
    public String get_city_name(){
        return city_name;
    }
    public String set_city_name(){
        return city_name;
    }
    public String toString(){
        return city_name;
    }

}
