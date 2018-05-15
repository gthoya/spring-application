package com.gthoya.springmvc.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;

@ComponentScan(basePackages = "com.gthoya.springmvc", excludeFilters = @Filter(Controller.class))
@Configuration
public class ApplicationContextConfiguration {

}
