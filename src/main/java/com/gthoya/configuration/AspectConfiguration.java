package com.gthoya.configuration;

import com.gthoya.aspect.TimeLoggingAspect;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@EnableAspectJAutoProxy(proxyTargetClass = true)
public class AspectConfiguration {
    @Bean
    public TimeLoggingAspect timeLoggingAspect() {
        return new TimeLoggingAspect();
    }
}
