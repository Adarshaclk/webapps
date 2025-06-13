package com.project.bridge.repository;

import com.project.bridge.dto.BridgeDto;

public interface BridgeRepository {
    boolean parser(BridgeDto bridgeDto);
}
