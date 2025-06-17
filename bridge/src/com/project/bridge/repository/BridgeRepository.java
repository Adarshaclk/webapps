package com.project.bridge.repository;

import com.project.bridge.dto.BridgeDto;

import java.util.Optional;

public interface BridgeRepository {
    boolean parser(BridgeDto bridgeDto);
default Optional<BridgeDto> findId(int id){
    return Optional.empty();
}
}
