package com.example.springboot_ecs_codepipeline;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Ecs_Codepipeline")
public class DemoController {


    @GetMapping("/get")
    public  String get()
    {
        return "springboot_ecs_codepipeline";
    }

}
