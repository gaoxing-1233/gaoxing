package com.buba.wineparty.com.buba;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.buba.wineparty.com.buba.dao")
public class WinepartyApplication {
    @Value("${web.upload-path}")
    private String uploadFiltPath;
    public static void main(String[] args) {
        SpringApplication.run(WinepartyApplication.class, args);
    }

}
