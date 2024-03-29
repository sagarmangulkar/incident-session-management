package com.basis.WebApp.controller;

import com.basis.WebApp.beans.Incident;
import com.basis.WebApp.beans.IncidentsToBeDeleted;
import com.basis.WebApp.beans.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

@Controller
public class HomeController {

    private LinkedHashMap<String, Incident> incidents = new LinkedHashMap<>();
    private LinkedHashMap<String, Session> sessions = new LinkedHashMap<>();

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
        model.addAttribute("sessions", sessions);
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
        incident.setCreationTime(new Date(System.currentTimeMillis()));
        incidents.put(incident.getName(), incident);
        model.addAttribute("successMessage", incident.getName() + " has been created.");
        return "Incident";
    }

    @RequestMapping(value = "/DeleteIncident", method = RequestMethod.POST)
    public String deleteIncident(@Valid @ModelAttribute("IncidentsToBeDeleted") IncidentsToBeDeleted incidentsToBeDeleted,
                                 BindingResult result,
                                 Model model){
        if (result.hasErrors()) {
            return "error";
        }
        for (String incidentsNames : incidentsToBeDeleted.getIncidentsToBeDeleted()) {
            incidents.remove(incidentsNames);
            deleteAssociatedSessions(incidentsNames);
        }
        model.addAttribute("successMessage", incidentsToBeDeleted.getIncidentsToBeDeleted().length + " number of Incidents have been Deleted.");
        return "redirect:/ViewIncidents";
    }

    private void deleteAssociatedSessions(String incidentsNames) {
        Iterator<Map.Entry<String, Session>> iterator = sessions.entrySet().iterator();
        while (iterator.hasNext()) {
            if (incidentsNames.equals(iterator.next().getValue().getAssociatedIncidentName())) {
                iterator.remove();
            }
        }
    }

    @RequestMapping(value = "/Session", method = RequestMethod.GET)
    public ModelAndView sessionToBeCreated(Model model){
        model.addAttribute("incidents", incidents);
        return new ModelAndView("Session",
                "Session",
                new Session());
    }

    @RequestMapping(value = "/CreateSession", method = RequestMethod.POST)
    public String createSession(@Valid @ModelAttribute("Session") Session session,
                                 BindingResult result,
                                 ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        session.setCreateTime(new Date(System.currentTimeMillis()));
        sessions.put(session.getName(), session);
        model.addAttribute("successMessage",
                session.getName() + " has been created. ");
        model.addAttribute("incidents", incidents);
        return "Session";
    }

    @RequestMapping("/SessionToUpdated")
    public String SessionToUpdated(@Valid @ModelAttribute("Session") Session session,
                                   BindingResult result,
                                   ModelMap model, String sessionName){
        if (result.hasErrors()) {
            return "error";
        }
        model.addAttribute("session", sessions.get(sessionName));
        return "UpdateSession";
    }

    @RequestMapping(value = "/UpdateSession", method = RequestMethod.POST)
    public String updateSession(@Valid @ModelAttribute("Session") Session session,
                                BindingResult result,
                                ModelMap model){
        if (result.hasErrors()) {
            return "error";
        }
        sessions.put(session.getName(), session);
        model.addAttribute("successMessage",
                session.getName() + " has been updated. ");
        return "redirect:/ViewSessions";
    }
}
