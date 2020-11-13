package controlador.control_Usuario;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import DAO.UsuarioDAO;

/**
 * Servlet implementation class Controlador_EliminaPorClave
 */
@WebServlet("/Controlador_EliminaPorClave")
public class Controlador_EliminaPorClave extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	UsuarioDAO usuarioDAO;
	
	@Resource(lookup="jdbc/MVC_JSP")
	DataSource miPool;
       
    
    public Controlador_EliminaPorClave() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			usuarioDAO = new UsuarioDAO(miPool);
			
			Long id = Long.parseLong(request.getParameter("idUsuario"));
			Boolean delete = usuarioDAO.delete(id);
			
			if(delete) {
				request.getRequestDispatcher("vistasUsuario/exito.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
			}
		}catch(Exception e) {
			throw new ServletException();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
