/*
 * A software developed by
 * Sergio Vago R. de Melo (back-end) and Isabella de Assis Santos (front-end)
 * SR Tech - "Blow your mind" 
 */
package controller;

import DAO.DAOProdutosVendasProdutos;
import java.util.ArrayList;
import model.ModelProdutosVendasProdutos;

/**
 *
 * @author Sergio
 */
public class ControllerProdutosVendasProdutos {
    private DAOProdutosVendasProdutos dAOProdutosVendasProdutos = new DAOProdutosVendasProdutos();
    
    public ArrayList<ModelProdutosVendasProdutos> getListaProdutosVendasProdutos(int pCodigoVenda){
        return this.dAOProdutosVendasProdutos.getListaProdutosVendasProdutosDAO(pCodigoVenda);
    }
}
