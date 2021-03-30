
package com.emergentes.nota;

import java.sql.Time;

public class Nota {
    private int id;
    private String dia;
    private String mes;
    private String hora;
    private String actividad;
    private String completado;

    public Nota() {
        id = 0;
        dia = "";
        mes = "";
        hora = "";
        actividad = "";
        completado="";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getActividad() {
        return actividad;
    }

    public void setActividad(String actividad) {
        this.actividad = actividad;
    }
        public String getCompletado() {
        return completado;
    }

    public void setCompletado(String completado) {
        this.completado = completado;
    }
        
}
