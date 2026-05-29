package org.miguel_guzman;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MecanicoDAOImpl implements ClienteDAO {

    @Override
    public List<Cliente> listar() {
        List<Cliente> lista = new ArrayList<>();
        String consulta = "select id_cedula, nombre_cliente, direccion from clientes";
        try (Connection conexion = Conexion.conectar();
             PreparedStatement estado = conexion.prepareStatement(consulta);
             ResultSet resultado = estado.executeQuery()) {
            while (resultado.next()) {
                lista.add(new Cliente(
                    resultado.getInt("id_cedula"),
                    resultado.getString("nombre_cliente"),
                    resultado.getString("direccion")
                ));
            }
        } catch (SQLException e) {
            System.err.println("error al listar clientes: " + e.getMessage());
        }
        return lista;
    }

    @Override
    public boolean agregar(Cliente cliente) {
        String consulta = "insert into clientes (id_cedula, nombre_cliente, direccion) values (?, ?, ?)";
        try (Connection conexion = Conexion.conectar();
             PreparedStatement estado = conexion.prepareStatement(consulta)) {
            estado.setInt(1, cliente.getIdCedula());
            estado.setString(2, cliente.getNombreCliente());
            estado.setString(3, cliente.getDirection());
            return estado.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("error al agregar cliente: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean editar(Cliente cliente) {
        String consulta = "update clientes set nombre_cliente = ?, direccion = ? where id_cedula = ?";
        try (Connection conexion = Conexion.conectar();
             PreparedStatement estado = conexion.prepareStatement(consulta)) {
            estado.setString(1, cliente.getNombreCliente());
            estado.setString(2, cliente.getDirection());
            estado.setInt(3, cliente.getIdCedula());
            return estado.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("error al editar cliente: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean eliminar(int idCedula) {
        String consulta = "delete from clientes where id_cedula = ?";
        try (Connection conexion = Conexion.conectar();
             PreparedStatement estado = conexion.prepareStatement(consulta)) {
            estado.setInt(1, idCedula);
            return estado.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("error al eliminar cliente: " + e.getMessage());
            return false;
        }
    }

    @Override
    public Cliente buscarPorId(int idCedula) {
        String consulta = "select id_cedula, nombre_cliente, direccion from clientes where id_cedula = ?";
        try (Connection conexion = Conexion.conectar();
             PreparedStatement estado = conexion.prepareStatement(consulta)) {
            estado.setInt(1, idCedula);
            try (ResultSet resultado = estado.executeQuery()) {
                if (resultado.next()) {
                    return new Cliente(
                        resultado.getInt("id_cedula"),
                        resultado.getString("nombre_cliente"),
                        resultado.getString("direccion")
                    );
                }
            }
        } catch (SQLException e) {
            System.err.println("error al buscar cliente: " + e.getMessage());
        }
        return null;
    }
}

