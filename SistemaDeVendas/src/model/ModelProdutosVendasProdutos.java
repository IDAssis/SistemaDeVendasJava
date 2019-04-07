/*
 * A software developed by
 * Sergio Vago R. de Melo (back-end) and Isabella de Assis Santos (front-end)
 * SR Tech - "Blow your mind" & Mirtilluz Desing
 */
package model;

/**
 *
 * @author Sergio
 */
public class ModelProdutosVendasProdutos {

    private ModelProduto modelProdutos;
    private ModelVendasProdutos modelVendasProdutos;

    /**
     * @return the modelProdutos
     */
    public ModelProduto getModelProdutos() {
        return modelProdutos;
    }

    /**
     * @param modelProdutos the modelProdutos to set
     */
    public void setModelProdutos(ModelProduto modelProdutos) {
        this.modelProdutos = modelProdutos;
    }

    /**
     * @return the modelVendasProdutos
     */
    public ModelVendasProdutos getModelVendasProdutos() {
        return modelVendasProdutos;
    }

    /**
     * @param modelVendasProdutos the modelVendasProdutos to set
     */
    public void setModelVendasProdutos(ModelVendasProdutos modelVendasProdutos) {
        this.modelVendasProdutos = modelVendasProdutos;
    }
}
