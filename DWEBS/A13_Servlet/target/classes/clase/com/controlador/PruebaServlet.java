package clase.com.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class PruebaServlet
 */
@WebServlet("/PruebaServlet")
public class PruebaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(lookup="jdbc/MVC_JSP")
	private DataSource miPool;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PruebaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter salida = response.getWriter();
		response.setContentType("text/plain");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection miConexion = null;
		
		ResultSet mir = null;
		try {
			miConexion = miPool.getConnection();
			mir = miConexion.createStatement().executeQuery("SELECT * FROM PRODUCTOS");
			while (mir.next()) {
				salida.println(mir.getString(3));
			}
		}catch(Exception c){
			c.printStackTrace();
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
