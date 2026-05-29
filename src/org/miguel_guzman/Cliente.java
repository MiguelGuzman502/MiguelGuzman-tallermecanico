
package org.miguel_guzman;

public class Cliente {
    private int idCedula;
    private String nombreCliente;
    private String direccion;

    public Cliente() {}

    public Cliente(int idCedula, String nombreCliente, String direccion) {
        this.idCedula = idCedula;
        this.nombreCliente = nombreCliente;
        this.direccion = direccion;
    }

    public int getIdCedula() { return idCedula; }
    public void setIdCedula(int idCedula) { this.idCedula = idCedula; }
    public String getNombreCliente() { return nombreCliente; }
    public void setNombreCliente(String nombreCliente) { this.nombreCliente = nombreCliente; }
    public String getDirection() { return direccion; }
    public void setDireccion(String direccion) { this.direccion = direccion; }
}
