package com.project.bridge.dto;

import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class BridgeDto {

    private String name;
    private String location;
    private int length;
    private String date;
    private String sent;
    private String isSafeParam;


    public BridgeDto(int ind, String name, String loc, LocalDate date, int length, String sent, String check, LocalDateTime time) {
    }

    public BridgeDto() {

    }
}
