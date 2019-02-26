package com.tdlabs.secureapi;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SecureApiApplication implements CommandLineRunner {

    public static final Logger logger = LoggerFactory.getLogger(SecureApiApplication.class);

    @Value("${application.name}")
    private String applicationName;

    @Value("${application.environment}")
    private String applicationEnvironment;

    public static void main(String[] args) {
        SpringApplication.run(SecureApiApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        logger.info("#######################################");
        logger.info("##   {} configured to run in {} Environment   ##",  applicationName, applicationEnvironment);
        logger.info("#######################################");
    }
}
