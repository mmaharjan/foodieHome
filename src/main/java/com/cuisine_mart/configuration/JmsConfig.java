package com.cuisine_mart.configuration;

import org.springframework.context.annotation.ImportResource;
import org.springframework.jms.annotation.EnableJms;

/**
 * Created by Minesh on 8/31/2016.
 */
//@Configuration
@EnableJms
@ImportResource("classpath:META-INF/resources/configs-xml/jms-config.xml")
public class JmsConfig {

}
