package com.project.bridge.service;

import com.project.bridge.dto.BridgeDto;

import java.util.Optional;

public interface BridgeServiceInter {
    boolean save(BridgeDto bridgeDto);

    default Optional<BridgeDto> findId(int id)
    {
        return  Optional.empty();
    }
}
