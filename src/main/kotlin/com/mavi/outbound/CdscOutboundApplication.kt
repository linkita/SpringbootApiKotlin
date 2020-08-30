package com.mavi.outbound

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CdscOutboundApplication

fun main(args: Array<String>) {
    runApplication<CdscOutboundApplication>(*args)
}
