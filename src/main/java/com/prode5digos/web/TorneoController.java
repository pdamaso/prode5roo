package com.prode5digos.web;
import com.prode5digos.domain.Torneo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/torneos")
@Controller
@RooWebScaffold(path = "torneos", formBackingObject = Torneo.class)
public class TorneoController {
}
