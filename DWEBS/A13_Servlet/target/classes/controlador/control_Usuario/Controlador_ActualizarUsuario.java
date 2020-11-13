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
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recibo los parámetros del formulario
		try {
			usuarioDAO =new UsuarioDAO(miPool);
		}catch (Exception e){
			throw new ServletException();
		}
		
		Usuario u = null;
		
		if("Buscar usuario".equals(request.getParameter("botonBusca"))) {
			buscarUsuario(u, request,response);
		}else if("Actualizar usuario".equals(request.getParameter("botonActualizar"))){
			System.out.println("Entra en actualiza después de buscar");
			actualizarUsuario(u,request,response);
		}
		/*request.setCharacterEncoding("UTF-8");
		
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
					request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void buscarUsuario (Usuario u, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("userName");
		String password = request.getParameter("password");
		
		if(!usuario.isEmpty() && !password.isEmpty()) {
			u = usuarioDAO.login(usuario, password);
			if(u != null) {
				request.getSession().setAttribute("usuarioEncontrado", u);
				
				System.out.println(u);
				
				//request.getRequestDispatcher("vistasUsuario/")
				
				
			}
		}
	}
	
	protected void actualizarUsuario (Usuario u, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		u = (Usuario)request.getSession().getAttribute("usuarioEncontrado");
		
		System.out.println("Lleha a mostrar u: " + u);
		
		if(u != null) {
			Usuario u2 = new Usuario(Long.parseLong(request.getParameter("idUsuario")),
					request.getParameter("nombre"),
					request.getParameter("apellidos"),
					request.getParameter("userName"),
					request.getParameter("password"),
					request.getParameter("pais"),
					request.getParameter("tecnologia"));
			request.getSession().setAttribute("usuarioEncontrado", new Usuario());
		}
	}


}
