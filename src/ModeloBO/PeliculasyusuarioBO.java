package ModeloBO;

import java.util.Date;

public class PeliculasyusuarioBO {
	private int idpelicula;
	private int iduser;
	private int valoracion;
	private String comentario;
	
	
	
	//Constructor vacio
	public PeliculasyusuarioBO() {
		
		idpelicula=0;
		iduser=0;
		valoracion=0;
		comentario="";
		
	}
	
	//Constructo completo
	public PeliculasyusuarioBO(int idpelicula,int iduser,int valoracion, String comentario) {
		
		
		this.idpelicula = idpelicula;
		this.iduser = iduser;
		this.valoracion = valoracion;
		this.comentario = comentario;
		
	
	}
	
	//Si es necesario se pueden crear mas constructores en funcion de lo que se solicite a la base de datos

	
	//Geters and Seters   *ver si hace falta quitar los seters de algunas propiedades como la clave*


	public int getValoracion() {
		return valoracion;
	}

	public void setValoracion(int valoracion) {
		this.valoracion = valoracion;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public int getIdpelicula() {
		return idpelicula;
	}

	public int getIduser() {
		return iduser;
	}

	
	//ToString   *se puede dejar mas bonito si hiciera falta
	
	
	public String toString() {
		return "La pelicula [pelicula=" + idpelicula + ", user=" + iduser + ", valoracion=" + valoracion+ ", comentario=" + comentario + "]";
	}


	
	
	
	
	
	
}