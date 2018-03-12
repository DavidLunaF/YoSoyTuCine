package ModeloDao;
import java.sql.*;

public class Conexion {
    private String  maquina = "localhost";
    private String  usuario = "root";
    private String  clave = "";
    private int puerto = 3306;
    private String  servidor = "yosoytucine";
    private String  driver = "com.mysql.jdbc.Driver";
    private static Connection conexion  = null;
    
    	//CONSTRUCTOR
    public Conexion(){
        //Registrar el driver
        try {
            Class.forName(driver);		
        } catch (ClassNotFoundException e) {
            System.err.println("ERROR AL REGISTRAR EL DRIVER");
        }
 
        //Establecer la conexión con el servidor
        try {
            conexion = DriverManager.getConnection("jdbc:mysql://"+maquina+":"+puerto+"/"+servidor,usuario, clave); //Se crea la conexion con los parametros
            if(conexion!=null) { System.out.println("Conexion establecida");}
        } catch (SQLException e) {        	
            System.err.println("ERROR AL CONECTAR CON EL SERVIDOR");
        }

    }
 
    //Devuelve el objeto Connection que se usará en las clases DAO
    public static Connection getConexion() {
        return conexion;
    }
 
}


