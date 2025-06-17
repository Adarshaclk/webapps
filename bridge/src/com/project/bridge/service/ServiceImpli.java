package com.project.bridge.service;

import com.project.bridge.dto.BridgeDto;
import com.project.bridge.repository.BridgeRepository;
import com.project.bridge.repository.BridgeRepositoryImpli;
import sun.plugin.services.BrowserService;

import java.util.Optional;

public class ServiceImpli implements BridgeServiceInter{
    @Override
    public boolean save(BridgeDto bridgeDto) {
        if (bridgeDto != null) {
            if(bridgeDto.getName()==null && bridgeDto.getName().length()<3){
                System.out.println("enterd the invalied name");
                return false;
            }
            System.out.println("enterd the valied name");
            if (bridgeDto.getLocation() == null) {
                System.out.println("enterd the valied loation");
                return false;
            }
            System.out.println("entred the valied location");
            if(bridgeDto.getDate()==null){
                System.out.println("enterd the invalied date");
                return false;
            }
            System.out.println("enterd the valied date");
            if(bridgeDto.getSent()==null){
                System.out.println("enterd the empty desc");
                return false;
            }
            System.out.println("valied");
            int lnth=bridgeDto.getLength();
            if (lnth==0 && lnth<=5) {
                System.out.println("enterd the invalied length");
                return false;
            }
            System.out.println("enterd the valied length");
            if (bridgeDto.getIsSafeParam()
                    == null) {
                System.out.println("enterd the invalied check");
                return false;
            }
            System.out.println("enterd the valied check");
        }
        BridgeRepository bridgeRepository=new BridgeRepositoryImpli();
        bridgeRepository.parser(bridgeDto);
        return true;
    }
        public Optional<BridgeDto> findId(int id){
        if(id>0){
            System.out.println("the id is : "+id);
            BridgeRepositoryImpli bridgeRepositoryImpli=new BridgeRepositoryImpli();
            return bridgeRepositoryImpli.findId(id);
        }
        return BridgeServiceInter.super.findId(id);
}


}
