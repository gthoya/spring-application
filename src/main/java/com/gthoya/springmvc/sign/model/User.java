package com.gthoya.springmvc.sign.model;

import lombok.Data;

@Data
public class User {
    private long id;
    private String userId;
    private String password;

    private String message;
}
