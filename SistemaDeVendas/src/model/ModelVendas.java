/*
 * A software developed by
 * Sergio Vago R. de Melo (back-end) and Isabella de Assis Santos (front-end)
 * SR Tech - "Blow your mind" & Mirtilluz Desing
 */
package model;

import java.sql.Date;

/**
 *
 * @author Sergio Vago
 */
public class ModelVendas {

    private int idVenda;
    private int cliente;
    private Date venDataVenda;
    private double venValor;
    private double venValorTotal;
    private double venDesconto;

    /**
     * Construtor
     */
    public ModelVendas() {
    }

    /**
     * seta o valor de idVenda
     *
     * @param pIdVenda
     */
    public void setIdVenda(int pIdVenda) {
        this.idVenda = pIdVenda;
    }

    /**
     * return pk_idVenda
     */
    public int getIdVenda() {
        return this.idVenda;
    }

    /**
     * seta o valor de cliente
     *
     * @param pCliente
     */
    public void setCliente(int pCliente) {
        this.cliente = pCliente;
    }

    /**
     * return fk_cliente
     */
    public int getCliente() {
        return this.cliente;
    }

    /**
     * seta o valor de venDataVenda
     *
     * @param pVenDataVenda
     */
    public void setVenDataVenda(Date pVenDataVenda) {
        this.venDataVenda = pVenDataVenda;
    }

    /**
     * return venDataVenda
     */
    public Date getVenDataVenda() {
        return this.venDataVenda;
    }

    /**
     * seta o valor de venValor
     *
     * @param pVenValor
     */
    public void setVenValor(double pVenValor) {
        this.venValor = pVenValor;
    }

    /**
     * return venValor
     */
    public double getVenValor() {
        return this.venValor;
    }

    /**
     * seta o valor de venValorTotal
     *
     * @param pVenValorTotal
     */
    public void setVenValorTotal(double pVenValorTotal) {
        this.venValorTotal = pVenValorTotal;
    }

    /**
     * return venValorTotal
     */
    public double getVenValorTotal() {
        return this.venValorTotal;
    }

    /**
     * seta o valor de venDesconto
     *
     * @param pVenDesconto
     */
    public void setVenDesconto(double pVenDesconto) {
        this.venDesconto = pVenDesconto;
    }

    /**
     * return venDesconto
     */
    public double getVenDesconto() {
        return this.venDesconto;
    }

    @Override
    public String toString() {
        return "ModelVendas {" + "::idVenda = " + this.idVenda + "::cliente = " + this.cliente + "::venDataVenda = " + this.venDataVenda + "::venValor = " + this.venValor + "::venValorTotal = " + this.venValorTotal + "::venDesconto = " + this.venDesconto + "}";
    }
}
