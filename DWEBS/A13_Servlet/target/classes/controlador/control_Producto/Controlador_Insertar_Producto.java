package controlador.control_Producto;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import DAO.ProductoDAO;
import DAO.UsuarioDAO;
import modelo.Producto;
import modelo.Usuario;

/**
 * Servlet implementation class Controlador_Insertar_Producto
 */
@WebServlet("/Controlador_Insertar_Producto")
public class Controlador_Insertar_Producto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(lookup="jdbc/MVC_JSP")
	private DataSource miPool;   
	
	private ProductoDAO productoDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador_Insertar_Producto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			productoDAO =new ProductoDAO(miPool);
		}catch (Exception e){
			throw new ServletException();
		}
		request.setCharacterEncoding("UTF-8");
		String codProd=request.getParameter("codProd");
		String seccion=request.getParameter("seccion");
		String nombreProd=request.getParameter("nombreProd");
		Double precio=Double.parseDouble(request.getParameter("precio"));
		LocalDate fecha=LocalDate.parse(request.getParameter("fecha"),DateTimeFormatter.ofPattern("d/MM/yyyy"));
		Boolean importado = Boolean.valueOf(request.getParameter("importado"));

		String pais=request.getParameter("pais");
		if (codProd!="" && seccion!="" && nombreProd!="") {
			
			Producto p=new Producto(codProd,seccion,nombreProd,precio,fecha,importado,pais);
			try {
				if (productoDAO.create(p))
						request.getRequestDispatcher("vistasUsuario/exito.jsp").forward(request, response);
			} catch (SQLException e) {
				request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
			}
		}	
		else
					request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
