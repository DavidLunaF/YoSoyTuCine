package Controladores;
import java.sql.*;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import com.google.gson.*;
import ModeloBO.CineBO;
import ModeloDao.CineDao;



/**
 * Servlet implementation class ServletGeneral
 */
@WebServlet("/ServletGeneral")
public class ServletGeneral extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Definir el DataSource
	
	@Resource(name="jdbc/Peliculas")
	
	//almacenamos el pool de conexiones
	private DataSource miPool;
	
	
	
	
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
    public ServletGeneral() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        List<CineBO> products=null;
		try {
			
			products = new CineDao().getCines();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("no se conecto a la base de datos");
		}
		
        String json = new Gson().toJson(products);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
        System.out.println(products.toString());
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
