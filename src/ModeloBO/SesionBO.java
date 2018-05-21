package ModeloBO;

import java.util.Date;

public class SesionBO {
	
	private Date fecha;
	private String hora;
	
	
	
	//Constructor vacio
	public SesionBO() {
		
		fecha=null;
		hora="";
		
	}
	
	//Constructo completo
	public SesionBO(Date fecha, String hora) {
		
		
		this.fecha = fecha;
		this.hora = hora;
		
	
	}
	
	//Si es necesario se pueden crear mas constructores en funcion de lo que se solicite a la base de datos
	
	
	
	
	
	//Geters and Seters   *ver si hace falta quitar los seters de algunas propiedades como la clave*

	public Date getFecha() {
		return fecha;
	}

	/*public void setFecha(Date fecha) {
		this.fecha = fecha;
	}*/

	public String getHora() {
		return hora;
	}

	/*public void setHora(String hora) {
		this.hora = hora;
	}*/

	

	
	//ToString   *se puede dejar mas bonito si hiciera falta
	
	
	public String toString() {
		return "Sesion [fecha=" + fecha + ", hora=" + hora + "]";
	}
	
	
	
	
	
	
}