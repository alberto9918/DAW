package controlador.control_Producto;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class Controlador_Mostrar_Productos
 */
@WebServlet("/Controlador_Mostrar_Productos")
public class Controlador_Mostrar_Productos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ProductoDAO productoDAO;
    
    @Resource(lookup = "jdbc/MVC_JSP")
    DataSource miPool;
       
    
    public Controlador_Mostrar_Productos() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		productoDAO = new ProductoDAO(miPool);
        
        try {
            List<Producto> listaProductos = productoDAO.readAll();
            
            if(listaProductos!=null) {
                request.setAttribute("listaProductos", listaProductos);
                request.getRequestDispatcher("vistasProductos/mostrarProductos.jsp").forward(request, response);;
            }else
                request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
            
        }catch(Exception e) {
            throw new ServletException();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
