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
import ModeloBO.UsuarioBO;

public class UsuarioDao {
	Statement miStattement=null;
	ResultSet miResulset=null;
	
	//Metodo que devuelve todos los cinesysesiones
	public List<UsuarioBO> getAllUsuario() throws Exception{
		//Establecemos las variables que vamos a utilizar
		List<UsuarioBO> usuarios=new ArrayList<>();
		
		//Establecer la conexion
		//Crear una clase conexion y obtiene la conexion a la base de datos
		Conexion connexion=new Conexion();
		Connection miConexion= connexion.getConexion();
		
		//Crear sentencia SQL y statement
		String miQuery="select * from usuario";
		miStattement=miConexion.createStatement();
		//Ejecutar sentecia sql 
		miResulset=miStattement.executeQuery(miQuery);
		//Recorrer el resulset obtenido
		while(miResulset.next()) {
			//Recupera los campos por indices o nombres de la tabla y asi con todos los campos
			int idUser=miResulset.getInt("iduser");
			String nombre=miResulset.getString("nombre");
			String password=miResulset.getString("password");
			String avatar=miResulset.getString("avatar");
			String correo=miResulset.getString("correo");


			//Se crea un objeto temporal del cinesysesiones con todos los campos recuperados de la tabla
			UsuarioBO usuario=new UsuarioBO(idUser, nombre, password, avatar, correo);
			//Se a�ade el cine al array list de cinesysesiones
			usuarios.add(usuario);
			
		}
		
		//devolvemos el array de los cinesysesiones
		miConexion.close();
		return usuarios;
		
	}	
}
