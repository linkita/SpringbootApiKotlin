package com.mavi.outbound.controller.api

import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class PingController {

    @GetMapping("/ping")
    fun ping(): String {
        return "pong"
    }

    @GetMapping("/")
    fun hello(model: Model): String {
        return "Hello World"
    }
}
