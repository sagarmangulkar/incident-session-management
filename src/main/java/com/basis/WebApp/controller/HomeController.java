package com.basis.WebApp.controller;

import com.basis.WebApp.beans.Incident;
import com.basis.WebApp.beans.IncidentsToBeDeleted;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.LinkedHashMap;

@Controller
public class HomeController {

    private LinkedHashMap<Integer, Incident> incidents = new LinkedHashMap<>();

    @ModelAttribute
    @RequestMapping("/index")
    public String index(Model model) {
        model.addAttribute("name1", "Sagar");
        return "index";
    }

    @ModelAttribute
    @RequestMapping(value = "/ViewIncidents", method = RequestMethod.GET)
    public ModelAndView viewIncidents(Model model) {
        model.addAttribute("incidents", incidents);
        return new ModelAndView("ViewIncidents",
                "IncidentsToBeDeleted",
                new IncidentsToBeDeleted());
    }

    @RequestMapping("/ViewSessions")
    public String session(Model model) {
        model.addAttribute("name", "Sagar");
        return "ViewSessions";
    }

    @RequestMapping(value = "/Incident", method = RequestMethod.GET)
    public ModelAndView Incident(){
        return new ModelAndView("Incident",
                "Incident",
                new Incident());
    }

    @RequestMapping(value = "/CreateIncident", method = RequestMethod.POST)
    public String createIncident(@Valid @ModelAttribute("Incident") Incident incident,
                                 BindingResult result,
                                 ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        incidents.put(incident.getId(), incident);
        model.addAttribute("id", incident.getId());
        model.addAttribute("name", incident.getName());
        model.addAttribute("description", incident.getDescription());
        return "Incident";
    }

    @RequestMapping(value = "/DeleteIncident", method = RequestMethod.POST)
    public String deleteIncident(@Valid @ModelAttribute("IncidentsToBeDeleted") IncidentsToBeDeleted incidentsToBeDeleted,
                                 BindingResult result,
                                 ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        for (int id : incidentsToBeDeleted.getIdsToBeDeleted()) {
            incidents.remove(id);
        }
        model.addAttribute("deleteSize", incidentsToBeDeleted.getIdsToBeDeleted().length);
        return "redirect:/ViewIncidents";
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
