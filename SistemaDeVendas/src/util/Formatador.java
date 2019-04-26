/*
 * A software developed by
 * Sergio Vago R. de Melo (back-end) and Isabella de Assis Santos (front-end)
 * SR Tech - "Blow your mind" & Mirtilluz Desing
 */
package util;

/**
 *
 * @author Aula
 */
public class Formatador {

    /**
     * converte a virgula de uma string para ponto
     *
     * @param pString
     * @return double
     */
    public double converterVirgulaParaPonto(String pString) {
        String retorno = new String();
        int tamanhoString = pString.length();
        for (int i = 0; i < tamanhoString; i++) {
            if (pString.charAt(i) == ',') {
                retorno += '.';
            } else {
                retorno += pString.charAt(i);
            }
        }
        return Double.parseDouble(retorno);
    }
}
