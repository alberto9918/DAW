package controlador.control_Usuario;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class Controlador_Mostrar_Todos
 */
@WebServlet("/Controlador_Mostrar_Todos")
public class Controlador_Mostrar_Todos extends HttpServlet {
private static final long serialVersionUID = 1L;
    
    UsuarioDAO usuarioDAO;
    
    @Resource(lookup = "jdbc/MVC_JSP")
    DataSource miPool;
       
    
    public Controlador_Mostrar_Todos() {
        super();
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        usuarioDAO = new UsuarioDAO(miPool);
        
        try {
            List<Usuario> listaUsuarios = usuarioDAO.readAll();
            
            if(listaUsuarios!=null) {
                request.setAttribute("listaUsuarios", listaUsuarios);
                request.getRequestDispatcher("vistasUsuario/mostrarTodos.jsp").forward(request, response);;
            }else
                request.getRequestDispatcher("vistasUsuario/error.jsp").forward(request, response);
            
        }catch(Exception e) {
            throw new ServletException();
        }
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        doGet(request, response);
    }

}
