package Controladores;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;
import ModeloBO.CineBO;
import ModeloBO.CineSesionPeliculaBO;
import ModeloBO.SesionBO;
import ModeloDao.CineDao;
import ModeloDao.CineSesionPeliculaDao;

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
@WebServlet("/PeliServlet")
public class PeliServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PeliServlet() {
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
		int idPeli=0;
		int idCine=0;
		switch(op) {
			case "allCines":
				idPeli=data.get("idPeli").getAsInt();
				String ciudades = new Gson().toJson(allCines(idPeli));	//Convertimos la lista de cines en un json en forma de texto
		        response.setContentType("application/json");//indicamos que es lo que devolvemos
		        response.setCharacterEncoding("UTF-8");		//El encode
		        response.getWriter().write(ciudades);
				break;
			case "cineSesion":
				idPeli=data.get("idPeli").getAsInt();
				idCine=data.get("idCine").getAsInt();
				String ciudadesCiudad = new Gson().toJson(getCineSesiones(idCine,idPeli));	
		        response.setContentType("application/json");//indicamos que es lo que devolvemos
		        response.setCharacterEncoding("UTF-8");		//El encode
		        response.getWriter().write(ciudadesCiudad);
				break;
			default://por defecto devolvemos todas las pelis
				
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
		
	public List<CineSesionPeliculaBO> allCines(int idPeli){
		List<CineSesionPeliculaBO> cines=null;
		try {
			cines = new CineSesionPeliculaDao().getAllCinesSesionesPeliculas(idPeli);//Recupera todos los cines 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Problema al recuperar los cines y sus sesiones por pelicula");
		}
		return cines;
	}
	public List<CineSesionPeliculaBO> getCineSesiones(int idCine,int idPeli ){
		List<CineSesionPeliculaBO> cines=null;
		try {
			cines = new CineSesionPeliculaDao().getCinePeli(idPeli,idCine);//Recupera todos los cines 
		} catch (Exception e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Problema al recuperar los cines en el servlet");
		}
		return cines;
	}
	

}
