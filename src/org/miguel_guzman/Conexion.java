
package org.miguel_guzman;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private static final String URL = "jdbc:mysql://localhost:3306/mecanico_in4cm?serverTimezone=UTC";
    private static final String USER = "root"; 
    private static final String PASSWORD = "MiguelAngel2009";

    public static Connection conectar() {
        Connection conexion = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("conexion exitosa");
        } catch (ClassNotFoundException e) {
            System.out.println("error: no hay driver");
        } catch (SQLException eSQL) {
            System.out.println("error: no se pudo conectar: " + eSQL.getMessage());
        }
        return conexion;
    }
}
