package excepciones;

public class ExcepcionCampoVacio extends RuntimeException{
	private static final long serialVersionUID = 1L;
	
	public ExcepcionCampoVacio (String s) {
		super(s);
	}
	
	public ExcepcionCampoVacio () {
		super();
	}

}
