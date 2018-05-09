package ModeloDao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import ModeloBO.CinesysesionesBO;
import ModeloBO.EmpresaBO;

public class EmpresaDao {
	Statement miStattement=null;
	ResultSet miResulset=null;
	
	//Metodo que devuelve todos los cinesysesiones
	public List<EmpresaBO> getAllEmpresa() throws Exception{
		//Establecemos las variables que vamos a utilizar
		List<EmpresaBO> empresas=new ArrayList<>();
		
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select * from empresa";
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idEmpresa=miResulset.getInt("idempresa");
			String nombre=miResulset.getString("nombre");
			String logo=miResulset.getString("logo");

			//Se crea un objeto temporal del cinesysesiones con todos los campos recuperados de la tabla
			EmpresaBO empresa=new EmpresaBO(idEmpresa, nombre, logo);
			//Se a�ade el cine al array list de cinesysesiones
			empresas.add(empresa);
			
		}
		
		//devolvemos el array de los cinesysesiones
		miConexion.close();
		return empresas;
		
	}	
}
