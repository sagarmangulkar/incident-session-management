package com.basis.WebApp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = "/index")
    public String index() {
        return "index.html";
    }

    @RequestMapping("/ViewIncidents")
    public String incident() {
        return "Inside incident...!";
    }

    @RequestMapping("/ViewSessions")
    public String session() {
        return "Inside session...!";
    }
}
