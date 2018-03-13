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

public class CinesysesionesDao {
	Statement miStattement=null;
	ResultSet miResulset=null;
	
	//Metodo que devuelve todos los cinesysesiones
	public List<CinesysesionesBO> getAllcinesysesiones() throws Exception{
		//Establecemos las variables que vamos a utilizar
		List<CinesysesionesBO> cinesysesiones=new ArrayList<>();
		
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select * from cinesysesiones";
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idCine=miResulset.getInt("idcine");
			Date fecha=miResulset.getDate("fecha");
			String hora=miResulset.getString("hora");
			float precio=miResulset.getFloat("precio");
			
			//Se crea un objeto temporal del cinesysesiones con todos los campos recuperados de la tabla
			CinesysesionesBO cineysesion=new CinesysesionesBO(idCine, fecha, hora, precio);
			//Se añade el cine al array list de cinesysesiones
			cinesysesiones.add(cineysesion);
			
			
		}
		
		//devolvemos el array de los cinesysesiones
		miConexion.close();
		return cinesysesiones;
		
	}	
	
	//AQUI IRIA OTRO METODO IGUAL QUE EL DE ARRIBA PERO CON OTRA QUERY QUE NO SEA SELECT * , osea crearimos un metodo x cada query
	

}
