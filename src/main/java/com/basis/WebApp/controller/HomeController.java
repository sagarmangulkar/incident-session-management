package com.basis.WebApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @ModelAttribute
    @RequestMapping("/index")
    public String index(Model model) {
        model.addAttribute("name1", "Sagar");
        return "index";
    }

    @ModelAttribute
    @RequestMapping("/ViewIncidents")
    public String incident(Model model) {
        model.addAttribute("name", "Sagar");
        return "ViewIncidents";
    }

    @RequestMapping("/ViewSessions")
    public String session(Model model) {
        model.addAttribute("name", "Sagar");
        return "ViewSessions";
    }

    @RequestMapping("/CreateIncident")
    public String createIncident(Model model){
        model.addAttribute("name", "Sagar in Create Incident");
        return "CreateIncident";
    }

    @RequestMapping("/DeleteIncident")
    public String deleteIncident(){
        return "DeleteIncident";
    }

    @RequestMapping("/CreateSession")
    public String createSession(){
        return "CreateSession";
    }

    @RequestMapping("/UpdateSession")
    public String updateSession(){
        return "UpdateSession";
    }
}
