package com.prode5digos.web;
import com.prode5digos.domain.Equipo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/equipoes")
@Controller
@RooWebScaffold(path = "equipoes", formBackingObject = Equipo.class)
public class EquipoController {
}
