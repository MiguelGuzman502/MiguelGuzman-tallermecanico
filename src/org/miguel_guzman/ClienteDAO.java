package org.miguel_guzman;

import java.util.List;

public interface ClienteDAO {
    List<Cliente> listar();
    boolean agregar(Cliente cliente);
    boolean editar(Cliente cliente);
    boolean eliminar(int idCedula);
    Cliente buscarPorId(int idCedula);
}
