package com.java.weather.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor

public class WeatherDto {
    private String location;
    private String weather;
    private int maxtemp;
    private int mintemp;
    private int humidity;
    private int cloud;
    private int rain;
    private int wind;
    private String sunrise;
    private String sunset;
    private String moonrise;
    private String moonset;
    private String rainstart;
    private String rainstop;
    private int precipitation;

}
