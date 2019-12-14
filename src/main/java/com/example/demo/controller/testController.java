package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName testController
 * @Author xuepengbo
 * @Date 2019/12/14 0014 19:37
 * @Version 1.0
 * @Description
 **/
@RestController
public class testController {

    @GetMapping("test")
    public String test(){
        return "OK";
    }
}
