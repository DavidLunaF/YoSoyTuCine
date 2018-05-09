package ModeloDao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import ModeloBO.CineSesionPeliculaBO;

public class CineSesionPeliculaDao {
	Statement miStattement=null;
	ResultSet miResulset=null;
	
	//Metodo que devuelve todos los cinesysesiones
	public List<CineSesionPeliculaBO> getAllCinesSesionesPeliculas() throws Exception{
		//Establecemos las variables que vamos a utilizar
		List<CineSesionPeliculaBO> cinesesionpeliculas=new ArrayList<>();
		
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select * from cinesesionpelicula";
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idCine=miResulset.getInt("idcine");
			int idPelicula=miResulset.getInt("idpelicula");
			Date fecha = miResulset.getDate("idpelicula");
			String hora=miResulset.getString("hora");
			
			//Se crea un objeto temporal del cinesysesiones con todos los campos recuperados de la tabla
			CineSesionPeliculaBO cinesesionpelicula=new CineSesionPeliculaBO(idCine,idPelicula,fecha,hora );
			//Se a�ade el cine al array list de cinesysesiones
			cinesesionpeliculas.add(cinesesionpelicula);
			
			
		}
		
		//devolvemos el array de los cinesysesiones
		miConexion.close();
		return cinesesionpeliculas;
		
	}	
	
}
