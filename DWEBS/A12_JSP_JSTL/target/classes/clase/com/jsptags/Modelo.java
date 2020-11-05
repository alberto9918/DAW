/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase.com.jsptags;


import java.util.ArrayList;


public class Modelo {
    
    private ArrayList<Alimento> alimentos=new ArrayList<>();
    private ArrayList<Alimento> alimentos2=new ArrayList<>();
    private Usuario usuario;
    
    public Modelo(){
        
      alimentos.add(new Alimento(1,"pan",55,20));
      alimentos.add(new Alimento(2,"leche",55,125));
      alimentos.add(new Alimento(3,"mantequilla",55,15));
      alimentos.add(new Alimento(4,"mermelada",55,23));
             
      alimentos2.add(new Alimento(1,"tomates",55,20));
      alimentos2.add(new Alimento(2,"aceite",55,125));
      alimentos2.add(new Alimento(3,"atún",55,15));
      alimentos2.add(new Alimento(4,"pimientos",55,23));
             
      usuario=new Usuario("admin","admin");
             
    }

    /**
     * @return the alimentos
     */
    public ArrayList<Alimento> getAlimentos() {
        return alimentos;
    }

     public ArrayList<Alimento> getAlimentos2() {
        return alimentos2;
    }
    /**
     * @return the usuario
     */
    public Usuario getUsuario() {
        return usuario;
    }
    
  
            
    
}
