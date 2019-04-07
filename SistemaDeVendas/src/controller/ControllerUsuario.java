/*
 * A software developed by
 * Sergio Vago R. de Melo (back-end) and Isabella de Assis Santos (front-end)
 * SR Tech - "Blow your mind" & Mirtilluz Desing
 */
package controller;

import model.ModelUsuario;
import DAO.DAOUsuario;
import java.util.ArrayList;

/**
 *
 * @author Sergio
 */
public class ControllerUsuario {

    private DAOUsuario daoUsuario = new DAOUsuario();

    /**
     * grava Usuario
     *
     * @param pModelUsuario return int
     */
    public int salvarUsuarioController(ModelUsuario pModelUsuario) {
        return this.daoUsuario.salvarUsuarioDAO(pModelUsuario);
    }

    /**
     * recupera Usuario
     *
     * @param pIdUsuario return ModelUsuario
     */
    public ModelUsuario getUsuarioController(int pIdUsuario) {
        return this.daoUsuario.getUsuarioDAO(pIdUsuario);
    }
    
    /**
     * recupera Usuario
     *
     * @param pLogin
     * @return ModelUsuario
     */
    public ModelUsuario getUsuarioController(String pLogin) {
        return this.daoUsuario.getUsuarioDAO(pLogin);
    }

    /**
     * recupera uma lista deUsuario
     *
     * @return ArrayList
     */
    public ArrayList<ModelUsuario> getListaUsuarioController() {
        return this.daoUsuario.getListaUsuarioDAO();
    }

    /**
     * atualiza Usuario
     *
     * @param pModelUsuario
     * @return boolean
     */
    public boolean atualizarUsuarioController(ModelUsuario pModelUsuario) {
        return this.daoUsuario.atualizarUsuarioDAO(pModelUsuario);
    }

    /**
     * exclui Usuario
     *
     * @param pIdUsuario return boolean
     */
    public boolean excluirUsuarioController(int pIdUsuario) {
        return this.daoUsuario.excluirUsuarioDAO(pIdUsuario);
    }

    /**
     *
     * @param pModelUsuario
     * @return boolean
     */
    public boolean getValidarUsuarioController(ModelUsuario pModelUsuario) {
        return this.daoUsuario.getValidarUsuarioDAO(pModelUsuario);
    }
}
