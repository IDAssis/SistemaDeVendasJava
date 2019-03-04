/*
 * A software developed by
 * Sergio Vago R. de Melo (back-end) and Isabella de Assis Santos (front-end)
 * SR Tech - "Blow your mind"
 */
package controller;

import DAO.DaoProduto;
import java.util.ArrayList;
import model.ModelProduto;

/**
 *
 * @author Sergio
 */
public class ControllerProduto {
    private DaoProduto daoProduto = new DaoProduto();
    
    /**
     * Salvar produto controller
     * 
     * @param modelProduto
     * @return 
     */
    public int salvarProdutoController(ModelProduto modelProduto){
        return this.daoProduto.cadastrarProdutoDAO(modelProduto);
    }
    
    /**
     * Excluir produto controller
     * 
     * @param pIdProduto
     * @return 
     */
    public boolean excluirProdutoController(int pIdProduto){
        return this.daoProduto.excluirProdutoDAO(pIdProduto);
    }
    
    /**
     * Alterar produto controller
     * 
     * @param pModelProduto
     * @return 
     */
    public boolean alterarProdutoController(ModelProduto pModelProduto){
        return this.daoProduto.alterarProdutoDAO(pModelProduto);
    }
    
    /**
     * Retorna produto controller
     * 
     * @param pIdProduto
     * @return ModelProduto
     */
    public ModelProduto retornarProdutoController(int pIdProduto){
        return this.daoProduto.retornarProdutoDAO(pIdProduto);
    }
    
    /**
     * Retorna produto controller
     * 
     * @param pNomeProduto
     * @return ModelProduto
     */
    public ModelProduto retornarProdutoController(String pNomeProduto){
        return this.daoProduto.retornarProdutoDAO(pNomeProduto);
    }
    
    
    /**
     * Retorna lista produto controller
     * 
     * @return ArrayLista(ModelProduto)
     */
    public ArrayList<ModelProduto> retornaListaProdutoController(){
        return this.daoProduto.retonraListaProdutoDAO();
    }
}
