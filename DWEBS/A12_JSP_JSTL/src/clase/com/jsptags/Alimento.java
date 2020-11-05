package clase.com.jsptags;

public class Alimento {
    
    private int idAlimento;
    private String nombre;
    private double cantidad;
    private double calorias100;
    
    
    public Alimento(int i, String nombre, double calorias100, double cantidad){
        this.idAlimento=i;
        this.nombre=nombre;
        this.calorias100=calorias100;
        this.cantidad=cantidad;
        
        
    }

    /**
     * @return the idAlimento
     */
    public int getIdAlimento() {
        return idAlimento;
    }

    /**
     * @param idAlimento the idAlimento to set
     */
    public void setIdAlimento(int idAlimento) {
        this.idAlimento = idAlimento;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the cantidad
     */
    public double getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the calorias100
     */
    public double getCalorias100() {
        return calorias100;
    }

    /**
     * @param calorias100 the calorias100 to set
     */
    public void setCalorias100(double calorias100) {
        this.calorias100 = calorias100;
    }

   
}
