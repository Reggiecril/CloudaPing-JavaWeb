package com.cloudaping.cloudaping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping(value = "/product")
public class ProductController {

    @GetMapping(value = {"/","/all"})
    public String getAll(Map<String,Object> map){
        return "product/all";
    }
}
