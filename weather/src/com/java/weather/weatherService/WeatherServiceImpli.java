package com.java.weather.weatherService;

import com.java.weather.dto.WeatherDto;
import com.java.weather.repository.WeatherRepository;
import com.java.weather.repository.WeatherRepositoryImpliment;

public class WeatherServiceImpli implements WeathherInterface {

    @Override
    public boolean save(WeatherDto weatherDto) {
        if (weatherDto == null) {
            System.out.println("WeatherDto is null");
            return false;
        }
        String loc = weatherDto.getLocation();
        if (loc == null || loc.length() < 3) {
            System.out.println("Invalid location entered");
            return false;
        }
        System.out.println("Valid location entered");

        String weather = weatherDto.getWeather();
        if (weather == null || weather.isEmpty()) {
            System.out.println("Invalid weather value");
            return false;
        }
        System.out.println("Valid weather entered");

        int maxtemp = weatherDto.getMaxtemp();
        if (maxtemp > 150 || maxtemp < -50) {
            System.out.println("Invalid maximum temperature");
            return false;
        }
        System.out.println("Valid maximum temperature");

        int mintemp = weatherDto.getMintemp();
        if (mintemp > 150 || mintemp < -50) {
            System.out.println("Invalid minimum temperature");
            return false;
        }
        System.out.println("Valid minimum temperature");

        int humidity = weatherDto.getHumidity();
        if (humidity < 0 || humidity > 100) {
            System.out.println("Invalid humidity");
            return false;
        }
        System.out.println("Valid humidity");

        int cloud = weatherDto.getCloud();
        if (cloud < 0 || cloud > 100) {
            System.out.println("Invalid cloudiness");
            return false;
        }
        System.out.println("Valid cloudiness");

        int rain = weatherDto.getRain();
        if (rain < 0) {
            System.out.println("Invalid rainfall amount");
            return false;
        }
        System.out.println("Valid rainfall");

        int wind = weatherDto.getWind();
        if (wind < 0) {
            System.out.println("Invalid wind speed");
            return false;
        }
        System.out.println("Valid wind speed");

        if (weatherDto.getSunrise() == null) {
            System.out.println("Sunrise time missing");
            return false;
        }
        if (weatherDto.getSunset() == null) {
            System.out.println("Sunset time missing");
            return false;
        }
        System.out.println("Valid sunrise & sunset");

        if (weatherDto.getMoonrise() == null) {
            System.out.println("Moonrise time missing");
            return false;
        }
        if (weatherDto.getMoonset() == null) {
            System.out.println("Moonset time missing");
            return false;
        }
        System.out.println("Valid moonrise & moonset");

        if (weatherDto.getRainstart() == null || weatherDto.getRainstop() == null) {
            System.out.println("Rain start/stop time missing");
            return false;
        }
        System.out.println("Valid rain start & stop");
        int precipitation = weatherDto.getPrecipitation();
        if (precipitation < 0) {
            System.out.println("Invalid precipitation");
            return false;
        }
        System.out.println("Valid precipitation");

        WeatherRepository weatherRepository = new WeatherRepositoryImpliment();
        weatherRepository.parser(weatherDto);
        return true;
    }
}
