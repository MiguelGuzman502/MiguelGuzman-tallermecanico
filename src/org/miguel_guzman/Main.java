package org.miguel_guzman;

import java.util.List;

public class Main {
    public static void main(String[] args) {
        MecanicoDAOImpl dao = new MecanicoDAOImpl();
        
        System.out.println("===  COMPONENTES DE TUERCA Y MOTOR ===");
        System.out.println("\n--- TABLA DE CLIENTES ---");
     
        System.out.println("CEDULA\t\t| NOMBRE\t\t\t| DIRECCION");
        System.out.println("-------------------------------------------------------------------");
        
        List<Cliente> clientes = dao.listar();
        if (clientes.isEmpty()) {
            System.out.println("No hay clientes registrados en la base de datos.");
        } else {
            for (Cliente c : clientes) {
                System.out.println(c.getIdCedula() + "\t\t| " + c.getNombreCliente() + "\t\t| " + c.getDirection());
            }
        }
    }
}