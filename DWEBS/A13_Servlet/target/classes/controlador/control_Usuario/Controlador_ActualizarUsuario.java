package controlador.control_Usuario;

import java.io.IOException;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import DAO.UsuarioDAO;
import modelo.Usuario;

/**
 * Servlet implementation class Controlador_ActualizarUsuario
 */
@WebServlet("/Controlador_ActualizarUsuario")
public class Controlador_ActualizarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(lookup="jdbc/MVC_JSP")
	private DataSource miPool;   
	
	private UsuarioDAO usuarioDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador_ActualizarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recibo los parámetros del formulario
		try {
			usuarioDAO =new UsuarioDAO(miPool);
		}catch (Exception e){
			throw new ServletException();
		}
		request.setCharacterEncoding("UTF-8");
		
		Long id = Long.parseLong(request.getParameter("idUsuario"));
		String nombre=request.getParameter("nombre");
		String apellidos=request.getParameter("apellidos");
		String usuario=request.getParameter("userName");
		String contrasena=request.getParameter("password");
		String pais=request.getParameter("pais");
		String tecno=request.getParameter("tecnologia");
		if (nombre!="" && apellidos!="" && usuario!="" && contrasena!="" && pais!="" && tecno!="") {
			
			Usuario u=new Usuario(id,nombre,apellidos,usuario,contrasena,pais,tecno);
			if (usuarioDAO.update(u)) {
				request.setAttribute("usuarioBuscado", u);
				request.getRequestDispatcher("vistasUsuario/mostrarUsuario.jsp").forward(request, response);
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
