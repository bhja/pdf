package com.example.apachefop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync
public class ApacheFopApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApacheFopApplication.class, args);
    }

}
