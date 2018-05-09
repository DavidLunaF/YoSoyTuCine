package Controladores;

import java.io.IOException;
import java.util.List;
import ModeloBO.CineBO;
import ModeloDao.CineDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class CineServlet
 */
@WebServlet("/CineServlet")
public class CineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CineServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<CineBO> cines=null;
		try {
			cines = new CineDao().getAllCines();//Recupera todos los cines 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Problema al recuperar los cines en el servlet");
		}
		
		String json = new Gson().toJson(cines);	//Convertimos la lista de cines en un json en forma de texto
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
