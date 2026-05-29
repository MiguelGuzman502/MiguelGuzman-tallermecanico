package org.miguel_guzman;

public class Mecanico {
    private int idMecanico;
    private String nombreMecanico;
    private String especialidad;

    public Mecanico() {}

    public Mecanico(int idMecanico, String nombreMecanico, String especialidad) {
        this.idMecanico = idMecanico;
        this.nombreMecanico = nombreMecanico;
        this.especialidad = especialidad;
    }

    public int getIdMecanico() { 
        return idMecanico; 
    }
    public void setIdMecanico(int idMecanico) { 
        this.idMecanico = idMecanico; 
    }
    
    public String getNombreMecanico() { 
        return nombreMecanico; 
    }
    public void setNombreMecanico(String nombreMecanico) { 
        this.nombreMecanico = nombreMecanico; 
    }
    
    public String getEspecialidad() { 
        return especialidad; 
    }
    public void setEspecialidad(String especialidad) { 
        this.especialidad = especialidad; 
    }
}