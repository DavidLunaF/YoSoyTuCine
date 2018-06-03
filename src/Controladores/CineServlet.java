package Controladores;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;
import ModeloBO.CineBO;
import ModeloBO.SesionBO;
import ModeloDao.CineDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

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
		//Se recupera el parametro del script para saber a que funcion esta llamando
		//En el op se encuetra que funcion ejecutaremos
		
		JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
		String op=data.get("op").getAsString();				
		
		switch(op) {
			case "allCines":
				String ciudades = new Gson().toJson(allCines());	//Convertimos la lista de cines en un json en forma de texto
		        response.setContentType("application/json");//indicamos que es lo que devolvemos
		        response.setCharacterEncoding("UTF-8");		//El encode
		        response.getWriter().write(ciudades);
				break;
			case "cinePeli":
				String ciudadesCiudad = new Gson().toJson(cinesCiudad(request.getParameter("ciudad")));	//Convertimos la lista de cines en un json en forma de texto
		        response.setContentType("application/json");//indicamos que es lo que devolvemos
		        response.setCharacterEncoding("UTF-8");		//El encode
		        response.getWriter().write(ciudadesCiudad);
				break;						
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}
		
	public List<CineBO> allCines(){
		List<CineBO> cines=null;
		try {
			cines = new CineDao().getAllCines();//Recupera todos los cines 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Problema al recuperar los cines en el servlet");
		}
		return cines;
	}
	public List<CineBO> cinesCiudad(String ciudad ){
		List<CineBO> cines=null;
		try {
			cines = new CineDao().getCinesPorCiudad(ciudad);//Recupera todos los cines 
		} catch (Exception e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Problema al recuperar los cines en el servlet");
		}
		return cines;
	}
	

}
