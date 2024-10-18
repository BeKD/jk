package com.chen.jk.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/hello")
public class Hello {

    @GetMapping(value = "/health")
    @ResponseBody
    public String hello(String name) {
        return "I'm alive ";
    }
}
