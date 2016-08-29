package com.prode5digos.domain;
import org.joda.time.DateTime;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Min;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findPartidoesByFecha" })
public class Partido {

    /**
     */
    @ManyToOne
    private Fecha fecha;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd-MM-yyyy HH:mm Z")
    private Date horario;

    /**
     */
    @ManyToOne
    private Equipo equipoLocal;

    /**
     */
    @ManyToOne
    private Equipo equipoVisitante;

    /**
     */
    @Min(0L)
    private int golesLocal;

    /**
     */
    @Min(0L)
    private int golesVisitante;

    /**
     */
    private Boolean finalizado;
}
