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
//Esto sera la ruta en la url para llamar a este servlet localhost...../ServletGeneral
@WebServlet("/ServletGeneral")
public class ServletGeneral extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
   
    public ServletGeneral() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Aqui va el control de lo que necesitamos recuperar de la base de datos mediante los metodos previamente creados
        List<CineBO> products=null;
		try {
			products = new CineDao().getAllCines();//Recupera todos los cines 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Problema al recuperar los cines en el servlet");
		}
		
        String json = new Gson().toJson(products);	//Convertimos la lista de cines en un json en forma de texto
        response.setContentType("application/json");//indicamos que es lo que devolvemos
        response.setCharacterEncoding("UTF-8");		//El encode
        response.getWriter().write(json);			//Respuesta a la pagina web
        //System.out.println(products.toString());	//Mostrar los productos por consola
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
