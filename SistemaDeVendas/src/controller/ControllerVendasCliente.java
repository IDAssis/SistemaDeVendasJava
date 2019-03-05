/*
 * A software developed by
 * Sergio Vago R. de Melo (back-end) and Isabella de Assis Santos (front-end)
 * SR Tech - "Blow your mind" 
 */
package controller;

import DAO.DAOVendasCliente;
import java.util.ArrayList;
import model.ModelVendasCliente;

/**
 *
 * @author Sergio
 */
public class ControllerVendasCliente {

    private DAOVendasCliente dAOVendasClientes = new DAOVendasCliente();
    
    public ArrayList<ModelVendasCliente> getListaVendasClienteController() {
        return this.dAOVendasClientes.getListaVendasClienteDAO();
    }
    
}
