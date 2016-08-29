package com.prode5digos.web;
import com.prode5digos.domain.Partido;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/partidoes")
@Controller
@RooWebScaffold(path = "partidoes", formBackingObject = Partido.class)
public class PartidoController {
}
