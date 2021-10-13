package com.fac.persona.controlador;

import com.fac.persona.modelo.Persona;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author diego
 */
public class ControlPersona {
    private static List<Persona> personas = new ArrayList<>();

    public static List<Persona> getPersonas() {
        return personas;
    }

    public static void setPersonas(List<Persona> personas) {
        ControlPersona.personas = personas;
    }
    
    public static void addPersona(Persona persona){
        personas.add(persona);
    } 
    
}
