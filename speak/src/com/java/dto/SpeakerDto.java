package com.java.dto;

public class SpeakerDto {
private String brand;
private String price;
private String color;
private String weight;
private String sound;

public void setBrand(String brand){
    this.brand=brand;
}
public void setPrice(String price){
    this.price=price;
}
public void setColor(String color){
    this.color=color;
}

public void setWeight(String Weight){
    this.weight=weight;
}

public void setSound(String sound){
    this.sound=sound;
}
public String getBrand(){
    return brand;
}
public String getPrice(){
    return price;
}
public String getColor(){
    return color;
}
public String getWeight(){
    return weight;
}

public String getSound(){
    return sound;
}

    public String toString() {
        return "SpeakerDto{" +
                "brand='" + brand + '\'' +
                ", price='" + price + '\'' +
                ", color='" + color + '\'' +
                ", weight='" + weight + '\'' +
                ", sound='" + sound + '\'' +
                '}';
    }
}
