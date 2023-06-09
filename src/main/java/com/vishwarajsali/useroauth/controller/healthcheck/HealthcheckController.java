package com.vishwarajsali.useroauth.controller.healthcheck;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/healthcheck")
public class HealthcheckController {

    @GetMapping
    public ResponseEntity<String> register(
    ){
        return ResponseEntity.ok("Ok");
    }
}
