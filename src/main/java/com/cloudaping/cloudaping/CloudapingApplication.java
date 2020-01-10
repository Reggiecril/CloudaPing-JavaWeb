package com.cloudaping.cloudaping;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.cloudaping.cloudaping.mapper") //扫描mapper接口位置
public class CloudapingApplication {

    public static void main(String[] args) {
        SpringApplication.run(CloudapingApplication.class, args);
    }

}
