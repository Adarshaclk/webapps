package com.java.service;

import com.java.SpeakerRepositary.SpeakerRepositaryimp;
import com.java.dto.SpeakerDto;

public class SpeakerImpli implements Speakerinter{
    public boolean save(SpeakerDto speakerDto) {
        if (speakerDto != null) {
            System.out.println("Spekaer is not null");
            String brand = speakerDto.getBrand();
            if (brand != null && brand.length() >= 3) {
                System.out.println("brand name is valied");
            } else {
                System.out.println("brnad name is invlaied");
                return false;
            }
            String price = speakerDto.getPrice();
            if (price != null) {
                System.out.println("vlied pricce");
            } else {
                System.out.println("invalied price");
                return false;
            }
            String color = speakerDto.getColor();
            if (color != null) {
                System.out.println("valied color");
            } else {
                System.out.println("invalied color ");
                return false;
            }
            String weight = speakerDto.getWeight();
            if (color != null) {
                System.out.println("valied weight");
            } else {
                System.out.println("invalid weight");
                return false;
            }
            String sound = speakerDto.getSound();
            if (sound != null) {
                System.out.println("valid sound");
            } else {
                System.out.println("invalied sound db ");
                return false;
            }
            return true;
        }


        SpeakerRepositaryimp speakerRepositaryimp = new SpeakerRepositaryimp();
        boolean saved = speakerRepositaryimp.persist(speakerDto);
        System.out.println("saved in repo : " + saved);
        return saved;
    }
}