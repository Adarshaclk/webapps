package com.java.SpeakerRepositary;

import com.java.dto.SpeakerDto;

public class SpeakerRepositaryimp implements SpeakerRepositary{
    @Override
    public boolean persist(SpeakerDto speakerDto) {
        return true;
    }

}
