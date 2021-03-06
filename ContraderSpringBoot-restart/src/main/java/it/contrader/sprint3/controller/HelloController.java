package it.contrader.sprint3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;


@Controller
public class HelloController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String hello (Map<String, Object> model) {
        model.put("saluto", "Ciao Mondo!");
        return "hello";
    }

}
