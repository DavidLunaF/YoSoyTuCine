package Modelo;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import javax.sql.DataSource;

import Clases.Cine;

//Clase encargada de conectar con la base de datos
public class ModeloGeneral {
		//Variable donde se almacena el pool de conexiones
		private DataSource miPool;
		
		//constructor
		public ModeloGeneral(DataSource pool) {
			this.miPool=pool;
		}
		
		//Metodo para recuperar todos los cines
		public List<Cine> getCines() throws Exception{
			
			List<Cine> cines=new ArrayList<>();
			
			Connection miConexion=null;
			Statement miStattement=null;
			ResultSet miResulset=null;
			
			// Establecer la conexion
			miConexion=miPool.getConnection();
			//Crear sentencia SQL y statement
			String miQuery="select * from cines";
			miStattement=miConexion.createStatement();
			//Ejecutar sentecia sql
			miResulset=miStattement.executeQuery(miQuery);
			//Recorrer el resulset obtenido
			while(miResulset.next()) {
				//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
				String nombreCine=miResulset.getString("nombre");
				
				//Faltan añadir mas ------------------------
				
				
				//Se crea un objeto temporal del cine con todos los campos recuperados de la tabla
				Cine tempCine=new Cine();
				//Se añade el cine al array list de cines
				cines.add(tempCine);
			}
			
			//devolvemos el array de los cines
			return cines;
			
		}
		
		
		
		
		
		
		
		
		
		
}
