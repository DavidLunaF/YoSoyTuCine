package Controladores;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import ModeloBO.PeliculaBO;
import ModeloDao.PeliculasDao;

/**
 * Servlet implementation class CarteleraServlet
 */
@WebServlet("/CarteleraServlet")
public class CarteleraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarteleraServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
		String op=data.get("op").getAsString();				
		
		switch(op) {
			case "allPelis":
				String mispelis = new Gson().toJson(allPelis());	//Convertimos la lista de cines en un json en forma de texto
		        response.setContentType("application/json");//indicamos que es lo que devolvemos
		        response.setCharacterEncoding("UTF-8");		//El encode
		        response.getWriter().write(mispelis);
				break;
			case "pelisCine":
				int idCine=data.get("idCine").getAsInt();
				String pelisCine = new Gson().toJson(pelisCine(idCine));//Recupera las pelis que solo se emiten en ese cine
				response.setContentType("application/json");//indicamos que es lo que devolvemos
		        response.setCharacterEncoding("UTF-8");		//El encode
		        response.getWriter().write(pelisCine);
				break;
			default://por defecto devolvemos todas las pelis
				String mispelisDefault = new Gson().toJson(allPelis());	//Convertimos la lista de cines en un json en forma de texto
		        response.setContentType("application/json");//indicamos que es lo que devolvemos
		        response.setCharacterEncoding("UTF-8");		//El encode
		        response.getWriter().write(mispelisDefault);
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
	
	public List<PeliculaBO> allPelis(){
		List<PeliculaBO> pelis=null;
		try {
			pelis = new PeliculasDao().getAllPeliculas();//Recupera todos los pelis 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Problema al recuperar los cines en el servlet");
		}
		return pelis;
	}
	public List<PeliculaBO> pelisCine(int id){
		List<PeliculaBO> pelis=null;
		try {
			pelis = new PeliculasDao().getAllPeliculasCine(id);//Recupera todos los pelis 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Problema al recuperar las pelisCine en el servlet");
		}
		return pelis;
	}
}
