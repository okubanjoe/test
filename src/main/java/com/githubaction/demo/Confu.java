package com.githubaction.demo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Slf4j
@Configuration
public class Confu {

    public String getTest() {
        return test;
    }

    public void setTest(String test) {
        this.test = test;
    }

//    @Value("${test-key}")
    private  String test;


//    public String getString(){
//        log.info("Getting All", test);
//        return test;
//    }

}
