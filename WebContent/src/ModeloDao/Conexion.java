package ModeloDao;
import java.sql.*;

public class Conexion {
    private String  maquina = "localhost";
    private String  usuario = "root";
    private String  clave = "";
    private String  driver = "com.mysql.jdbc.Driver";
    private int puerto = 3306;
    private String  servidor = "jdbc:mysql://localhost:3306/yosoytucine";
    private static Connection conexion  = null;
    
    //CONSTRUCTOR
    //Recibe el nombre de la base de datos
    Conexion(String baseDatos){
        
 
        //Registrar el driver
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
        	
            System.err.println("ERROR AL REGISTRAR EL DRIVER");
            
        }
 
        //Establecer la conexión con el servidor
        try {
            conexion = DriverManager.getConnection(this.servidor,this.usuario, this.clave);
            if(conexion!=null) { System.out.println("Conexion establecida");}
        } catch (SQLException e) {
        	
            System.err.println("ERROR AL CONECTAR CON EL SERVIDOR");
            
        }
        
        
    }
 
    //Devuelve el objeto Connection que se usará en la clase Controller
    public static Connection getConexion() {
        return conexion;
    }
 
}


