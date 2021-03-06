package com.prode5digos.web;
import com.prode5digos.domain.Fecha;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/fechas")
@Controller
@RooWebScaffold(path = "fechas", formBackingObject = Fecha.class)
public class FechaController {
}
