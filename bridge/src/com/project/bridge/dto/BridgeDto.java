package com.project.bridge.dto;

import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class BridgeDto {

    private String name;
    private String location;
    private String length;
    private String date;
    private String sent;
    private String isSafeParam;

}
