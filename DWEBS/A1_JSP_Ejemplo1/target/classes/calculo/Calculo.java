package calculo;

public class Calculo {
	private Double tiempo_inicial;
	private Double tiempo_final;
	private Double distancia;
	
	public Calculo() {}
	
	public Calculo(Double tiempo_inicial, Double tiempo_final, Double distancia) {
		//super();
		this.tiempo_inicial = tiempo_inicial;
		this.tiempo_final = tiempo_final;
		this.distancia = distancia;
	}
	
	
	public Double gettInicial() {
		return tiempo_inicial;
	}

	public void settInicial(Double tiempo_inicial) {
		this.tiempo_inicial = tiempo_inicial;
	}

	public Double gettFinal() {
		return tiempo_final;
	}

	public void settFinal(Double tiempo_final) {
		this.tiempo_final = tiempo_final;
	}

	public Double getDistancia() {
		return distancia;
	}

	public void setDistancia(Double distancia) {
		this.distancia = distancia;
	}
	
	//MÉTODOS

	public Double velocidad() {
		return distancia/(tiempo_final-tiempo_inicial);
		
	}
	
	public Double tiempoTotal() {
		return tiempo_final-tiempo_inicial;
	}

}
