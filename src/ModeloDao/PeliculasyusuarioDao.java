package ModeloDao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Clases.Cine;
import ModeloBO.CinesysesionesBO;
import ModeloBO.PeliculasyusuarioBO;

public class PeliculasyusuarioDao {
	Statement miStattement=null;
	ResultSet miResulset=null;
	
	//Metodo que devuelve todos los cinesysesiones
	public List<PeliculasyusuarioBO> getAllpeliculasyusuario() throws Exception{
		//Establecemos las variables que vamos a utilizar
		List<PeliculasyusuarioBO> peliculasyusuario=new ArrayList<>();
		
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select * from peliculasyusuarios";
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idPelicula=miResulset.getInt("idpelicula");
			int idUser=miResulset.getInt("iduser");
			int valoracion=miResulset.getInt("valoracion");
			String comentario=miResulset.getString("comentario");
			
			//Se crea un objeto temporal del cinesysesiones con todos los campos recuperados de la tabla
			PeliculasyusuarioBO peliculayusuario=new PeliculasyusuarioBO(idPelicula, idUser, valoracion, comentario);
			//Se añade el cine al array list de cinesysesiones
			peliculasyusuario.add(peliculayusuario);
			
			
		}
		
		//devolvemos el array de los cinesysesiones
		miConexion.close();
		return peliculasyusuario;
		
	}	
	
	//AQUI IRIA OTRO METODO IGUAL QUE EL DE ARRIBA PERO CON OTRA QUERY QUE NO SEA SELECT * , osea crearimos un metodo x cada query
	

}
