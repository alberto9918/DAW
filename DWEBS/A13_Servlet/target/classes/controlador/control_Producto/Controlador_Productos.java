package controlador.control_Producto;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
 * Servlet implementation class Controlador_Productos
 */
@WebServlet("/Controlador_Productos")
public class Controlador_Productos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(lookup="jdbc/MVC_JSP")
	private DataSource miPool;   
	
	private ProductoDAO productoDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador_Productos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recibo los parámetros del formulario
				try {
					productoDAO =new ProductoDAO(miPool);
				}catch (Exception e){
					throw new ServletException();
				}
				
				request.setCharacterEncoding("UTF-8");
				
				String comando = request.getParameter("instruccion");
				
				if(comando==null) {comando = "listar";}
				
				switch(comando) {
					case "listar":
						listarProductos(request,response);
						break;
					case "insertar":
						insertarProducto(request,response);
						break;
						
					case "eliminar":
						eliminarProducto(request,response);
						break;
					
					default:
						listarProductos(request,response);
				}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void listarProductos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	
	protected void insertarProducto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			productoDAO =new ProductoDAO(miPool);
		}catch (Exception e){
			throw new ServletException();
		}

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
				this.productoDAO.create(p);
				
			} catch (SQLException e) {
				request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
			}
		}else {
			request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
		}
					
		
		listarProductos(request, response);
	}
	
	private void eliminarProducto(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String codProd = request.getParameter("codProducto");
		productoDAO.delete(codProd);
		listarProductos(request, response);
		
	}

}
