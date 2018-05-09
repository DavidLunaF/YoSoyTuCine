package ModeloDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import ModeloBO.CineBO;

public class CineDao {
	Statement miStattement=null;
	ResultSet miResulset=null;
	
	//Metodo que devuelve todos los cines
	public List<CineBO> getAllCines() throws Exception{
		//Establecemos las variables que vamos a utilizar
		List<CineBO> cines=new ArrayList<>();
		
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select * from cines";
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idCine=miResulset.getInt("idcine");
			int idEmpresa=miResulset.getInt("idempresa");
			String nombre=miResulset.getString("nombre");
			double latitud=miResulset.getDouble("latitud");
			double longitud=miResulset.getDouble("longitud");
			String direccion=miResulset.getString("direccion");
			int codigoPostal=miResulset.getInt("cp");
			String ciudad=miResulset.getString("ciudad");
			int telefo=miResulset.getInt("telefono");
			float valoracion=miResulset.getFloat("valoracion");
			String url=miResulset.getString("url");
			
			//Se crea un objeto temporal del cine con todos los campos recuperados de la tabla
			CineBO cine=new CineBO(idCine, idEmpresa, nombre, latitud, longitud, direccion, codigoPostal, ciudad, telefo, valoracion, url);
			//Se añade el cine al array list de cines
			cines.add(cine);
			
			
		}
		
		//devolvemos el array de los cines
		miConexion.close();
		return cines;
		
	}	
	
	public List<CineBO> getCinesPorCiudad(String ciudadRec) throws Exception{
		List<CineBO> cines=new ArrayList<>();
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select * from cines where ciudad="+ciudadRec;
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idCine=miResulset.getInt("idcine");
			int idEmpresa=miResulset.getInt("idempresa");
			String nombre=miResulset.getString("nombre");
			double latitud=miResulset.getDouble("latitud");
			double longitud=miResulset.getDouble("longitud");
			String direccion=miResulset.getString("direccion");
			int codigoPostal=miResulset.getInt("cp");
			String ciudad=miResulset.getString("ciudad");
			int telefo=miResulset.getInt("telefono");
			float valoracion=miResulset.getFloat("valoracion");
			String url=miResulset.getString("url");
			
			//Se crea un objeto temporal del cine con todos los campos recuperados de la tabla
			CineBO cine=new CineBO(idCine, idEmpresa, nombre, latitud, longitud, direccion, codigoPostal, ciudad, telefo, valoracion, url);
			//Se añade el cine al array list de cines
			cines.add(cine);
			
			
		}
		
		//devolvemos el array de los cines
		miConexion.close();
		
		
		return cines;
	}
	
	
	
	

}
