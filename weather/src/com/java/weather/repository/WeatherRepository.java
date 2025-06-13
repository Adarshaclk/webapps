package com.java.weather.repository;

import com.java.weather.dto.WeatherDto;

public interface WeatherRepository {
     boolean parser(WeatherDto weatherDto);
}
