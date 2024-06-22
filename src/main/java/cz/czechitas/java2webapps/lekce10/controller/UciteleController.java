package cz.czechitas.java2webapps.lekce10.controller;

import cz.czechitas.java2webapps.lekce10.service.UciteleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ucitele")
public class UciteleController {
    private final UciteleService uciteleService;

    public UciteleController(UciteleService uciteleService) {
        this.uciteleService = uciteleService;
    }

    @GetMapping("")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("/ucitele/index");
        modelAndView.addObject("ucitele", uciteleService.findAll());
        return modelAndView;
    }

    @GetMapping("/{id}")
    public ModelAndView detail(@PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("/ucitele/detail");
        modelAndView.addObject("ucitel", uciteleService.findById(id));
        return modelAndView;
    }
}
