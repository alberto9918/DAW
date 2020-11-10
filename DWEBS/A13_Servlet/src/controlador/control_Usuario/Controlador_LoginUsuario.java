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
 * Servlet implementation class Controlador_LoginUsuario
 */
@WebServlet("/Controlador_LoginUsuario")
public class Controlador_LoginUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(lookup="jdbc/MVC_JSP")
    private DataSource miPool;
	
	private UsuarioDAO usuarioDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador_LoginUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			usuarioDAO = new UsuarioDAO(miPool);
			
			//validación de los campos del formulario de login
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			
			if(userName != "" && password != "") {
				
				Usuario userLogueado = usuarioDAO.login(userName, password);
				if (userLogueado != null) {
					request.setAttribute("usuarioBuscado", userLogueado);
					request.getRequestDispatcher("vistasUsuario/mostrarUsuario.jsp").forward(request, response);
				}else {
					request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
				}
											
			}else {
				request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
			}
		}catch(Exception e1) {
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
