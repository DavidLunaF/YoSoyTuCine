package ModeloDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import ModeloBO.CineBO;
import ModeloBO.PeliculaBO;

public class PeliculasDao {
	
	Statement miStattement=null;
	ResultSet miResulset=null;
	

	//Metodo que devuelve todos los cines
		public List<PeliculaBO> getAllPeliculas() throws Exception{
			//Establecemos las variables que vamos a utilizar
			List<PeliculaBO> peliculas=new ArrayList<>();
			
			//Establecer la conexion
			//Crear una clase conexion y obtiene la conexion a la base de datos
			Conexion connexion=new Conexion();
			Connection miConexion= connexion.getConexion();
			
			//Crear sentencia SQL y statement
			String miQuery="select * from peliculas";
			miStattement=miConexion.createStatement();
			//Ejecutar sentecia sql 
			miResulset=miStattement.executeQuery(miQuery);
			//Recorrer el resulset obtenido
			while(miResulset.next()) {
				//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
				int idPelicula=miResulset.getInt("idpelicula");
				String nombre=miResulset.getString("nombre");
				String genero=miResulset.getString("genero");
				String edadRecomendada=miResulset.getString("edadrecomendada");
				String duracion=miResulset.getString("duracion");
				String sinopsis=miResulset.getString("sinopsis");
				String director=miResulset.getString("director");
				Date fechaEstreno=miResulset.getDate("fechaestreno");
				String cartel=miResulset.getString("cartel");
				float valoracion=miResulset.getFloat("valoracion");
				String actores=miResulset.getString("actores");
				
				//Se crea un objeto temporal del cine con todos los campos recuperados de la tabla
				PeliculaBO pelicula=new PeliculaBO(idPelicula, nombre, genero, edadRecomendada, duracion, sinopsis, director, fechaEstreno, cartel, valoracion, actores);
				//Se añade el cine al array list de cines
				peliculas.add(pelicula);
				
				
			}
			
			//devolvemos el array de los cines
			miConexion.close();
			return peliculas;
			
		}

}
