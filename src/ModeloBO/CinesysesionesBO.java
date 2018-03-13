package ModeloBO;

import java.util.Date;

public class CinesysesionesBO {
	
	private int idCine;
	private Date fecha;
	private String hora;
	private float precio;
	
	
	//Constructor vacio
	public CinesysesionesBO() {
		idCine=0;
		fecha=null;
		hora="";
		precio=0;
	}
	
	//Constructo completo
	public CinesysesionesBO(int idCine, Date fecha, String hora,float precio) {
		
		this.idCine = idCine;
		this.fecha = fecha;
		this.hora = hora;
		this.precio = precio;
	
	}
	
	//Si es necesario se pueden crear mas constructores en funcion de lo que se solicite a la base de datos
	
	
	
	
	
	//Geters and Seters   *ver si hace falta quitar los seters de algunas propiedades como la clave*
	public int getIdCine() {
		return idCine;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}

	
	
	//ToString   *se puede dejar mas bonito si hiciera falta
	
	
	public String toString() {
		return "Sesion [idCine=" + idCine + ", fecha=" + fecha + ", hora=" + hora + ", precio=" + precio+ "]";
	}
	
	
	
	
	
	
}