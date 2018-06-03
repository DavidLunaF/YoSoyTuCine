package ModeloDao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import ModeloBO.CineBO;
import ModeloBO.CineSesionPeliculaBO;
import ModeloBO.CinesysesionesBO;
import ModeloBO.SesionBO;

public class CineSesionPeliculaDao {
	Statement miStattement=null;
	ResultSet miResulset=null;
	
	//Metodo que devuelve todos los cinesysesiones
	public List<CineSesionPeliculaBO> getAllCinesSesionesPeliculas(int idPeli) throws Exception{
		//Establecemos las variables que vamos a utilizar
		List<CineSesionPeliculaBO> cinesesionpeliculas=new ArrayList<>();
		
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select distinct * from cines,empresas,cinesysesionesypeliculas, cinesysesiones where cinesysesionesypeliculas.idpelicula="+idPeli+" and cinesysesionesypeliculas.idcine= cinesysesiones.idcine and cines.idcine = cinesysesiones.idcine and cines.idempresa = empresas.idempresa and cinesysesiones.hora = cinesysesionesypeliculas.hora order by cines.idCine,cinesysesiones.hora";
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idCine=miResulset.getInt("idcine");
			int idPelicula=miResulset.getInt("idpelicula");
			
			
			//Precio
			int precio=miResulset.getInt("precio");
			
			//Info del cine			
			int idEmpresa=miResulset.getInt("idempresa");
			String nombre=miResulset.getString("nombre");
			double latitud=miResulset.getDouble("latitud");
			double longitud=miResulset.getDouble("longitud");
			String direccion=miResulset.getString("direccion");
			int codigoPostal=miResulset.getInt("cp");
			String ciudad=miResulset.getString("ciudad");
			int telefono=miResulset.getInt("telefono");
			float valoracion=miResulset.getFloat("valoracion");
			String url=miResulset.getString("url");
			String logo=miResulset.getString("logo");
			//Info sesion
			Date fecha=miResulset.getDate("fecha");
			String hora=miResulset.getString("hora");
			
			SesionBO sesion=new SesionBO(fecha, hora);
			CineBO cine= new CineBO(idCine, idEmpresa, nombre, latitud, longitud, direccion, codigoPostal, ciudad, telefono, valoracion, url, logo);
			CinesysesionesBO cineSesion = new CinesysesionesBO(idCine, fecha, hora, precio);
			//Se crea un objeto temporal del cinesysesiones con todos los campos recuperados de la tabla
			CineSesionPeliculaBO cinesesionpelicula=new CineSesionPeliculaBO(idCine,idPelicula,fecha,hora,cine,sesion,cineSesion );
			//Se a�ade el cine al array list de cinesysesiones
			cinesesionpeliculas.add(cinesesionpelicula);
			
			
		}
		
		//devolvemos el array de los cinesysesiones
		miConexion.close();
		return cinesesionpeliculas;
		
	}

	public List<CineSesionPeliculaBO> getCinePeli(int idPeli, int id) throws Exception{
		List<CineSesionPeliculaBO> cinesesionpeliculas=new ArrayList<>();
		
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select distinct * from cines,empresas,cinesysesionesypeliculas, cinesysesiones where cinesysesionesypeliculas.idpelicula="+idPeli+" and cinesysesiones.idcine= "+id+" and cinesysesionesypeliculas.idcine= cinesysesiones.idcine and  cines.idcine = cinesysesiones.idcine and cines.idempresa = empresas.idempresa and cinesysesiones.hora = cinesysesionesypeliculas.hora order by cines.idCine,cinesysesiones.hora";
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idCine=miResulset.getInt("idcine");
			int idPelicula=miResulset.getInt("idpelicula");
			
			
			//Precio
			int precio=miResulset.getInt("precio");
			
			//Info del cine			
			int idEmpresa=miResulset.getInt("idempresa");
			String nombre=miResulset.getString("nombre");
			double latitud=miResulset.getDouble("latitud");
			double longitud=miResulset.getDouble("longitud");
			String direccion=miResulset.getString("direccion");
			int codigoPostal=miResulset.getInt("cp");
			String ciudad=miResulset.getString("ciudad");
			int telefono=miResulset.getInt("telefono");
			float valoracion=miResulset.getFloat("valoracion");
			String url=miResulset.getString("url");
			String logo=miResulset.getString("logo");
			//Info sesion
			Date fecha=miResulset.getDate("fecha");
			String hora=miResulset.getString("hora");
			
			SesionBO sesion=new SesionBO(fecha, hora);
			CineBO cine= new CineBO(idCine, idEmpresa, nombre, latitud, longitud, direccion, codigoPostal, ciudad, telefono, valoracion, url, logo);
			CinesysesionesBO cineSesion = new CinesysesionesBO(idCine, fecha, hora, precio);
			//Se crea un objeto temporal del cinesysesiones con todos los campos recuperados de la tabla
			CineSesionPeliculaBO cinesesionpelicula=new CineSesionPeliculaBO(idCine,idPelicula,fecha,hora,cine,sesion,cineSesion );
			//Se a�ade el cine al array list de cinesysesiones
			cinesesionpeliculas.add(cinesesionpelicula);
			
			
		}
		
		//devolvemos el array de los cinesysesiones
		miConexion.close();
		return cinesesionpeliculas;
	}	
	
}
