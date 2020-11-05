package clase.com.jsptags;

public class Corredor {
	private String dorsal;
	private String nombre;
	private String apellidos;
	private Double marca;
	private String carrera;
	
	public Corredor() {
		super();
	}
	
	public Corredor(String dorsal, String nombre, String apellidos, Double marca, String carrera) {
		super();
		this.dorsal = dorsal;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.marca = marca;
		this.carrera = carrera;
	}
	public Corredor(String dorsal, String nombre, String apellidos, Double marca) {
		super();
		this.dorsal = dorsal;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.marca = marca;
		
	}
	public String getDorsal() {
		return dorsal;
	}

	public void setDorsal(String dorsal) {
		this.dorsal = dorsal;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public double getMarca() {
		return marca;
	}

	public void setMarca(Double marca) {
		this.marca = marca;
	}

	public String getCarrera() {
		return carrera;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	@Override
	public String toString() {
		return "Corredor [dorsal=" + dorsal + ", nombre=" + nombre + ", apellidos=" + apellidos + ", marca=" + marca
				+ ", carrera=" + carrera + "]";
	}
}
