package com.java.SpeakerRepositary;

import com.java.dto.SpeakerDto;

public interface SpeakerRepositary {
    boolean persist(SpeakerDto speakerDto);
}
