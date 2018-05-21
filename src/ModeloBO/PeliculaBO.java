package ModeloBO;

import java.util.Date;

public class PeliculaBO {
	
	private int idPelicula;
	private String nombre;
	private String genero;
	private String edadRecomendada;
	private String duracion;
	private String sinopsis;
	private String director;
	private Date fechaEstreno;
	private String cartel;
	private float valoracion;
	private String actores;

	
	//Constructor vacio
	public PeliculaBO() {
		
	}
	
	//Constructo completo
	public PeliculaBO(int idPelicula, String nombre, String genero, String edadRecomendada, String duracion,
			String sinopsis, String director, Date fechaEstreno, String cartel, float valoracion, String actores) {
		
		this.idPelicula = idPelicula;
		this.nombre = nombre;
		this.genero = genero;
		this.edadRecomendada = edadRecomendada;
		this.duracion = duracion;
		this.sinopsis = sinopsis;
		this.director = director;
		this.fechaEstreno = fechaEstreno;
		this.cartel = cartel;
		this.fechaEstreno = fechaEstreno;
		this.valoracion = valoracion;
		this.actores = actores;
	}
	
	//Si es necesario se pueden crear mas constructores en funcion de lo que se solicite a la base de datos
	
	
	
	
	
	//Geters and Seters   *ver si hace falta quitar los seters de algunas propiedades como la clave*
	

	public int getIdPelicula() {
		return idPelicula;
	}

	public void setIdPelicula(int idPelicula) {
		this.idPelicula = idPelicula;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getEdadRecomendada() {
		return edadRecomendada;
	}

	public void setEdadRecomendada(String edadRecomendada) {
		this.edadRecomendada = edadRecomendada;
	}

	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}

	public String getSinopsis() {
		return sinopsis;
	}

	public void setSinopsis(String sinopsis) {
		this.sinopsis = sinopsis;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public Date getFechaEstreno() {
		return fechaEstreno;
	}

	public void setFechaEstreno(Date fechaEstreno) {
		this.fechaEstreno = fechaEstreno;
	}

	public String getCartel() {
		return cartel;
	}

	public void setCartel(String cartel) {
		this.cartel = cartel;
	}

	public float getValoracion() {
		return valoracion;
	}

	public void setValoracion(float valoracion) {
		this.valoracion = valoracion;
	}

	public String getActores() {
		return actores;
	}

	public void setActores(String actores) {
		this.actores = actores;
	}
	
	
	
	
	//ToString   *se puede dejar mas bonito si hiciera falta
	@Override
	public String toString() {
		return "Pelicula [idPelicula=" + idPelicula + ", nombre=" + nombre + ", genero=" + genero + ", edadrecomendada=" + edadRecomendada
				+ ", duracion=" + duracion + ", sinopsis=" + sinopsis + ", director=" + director + ", fechaestreno="
				+ fechaEstreno + ", cartel=" + cartel + ", valoracion=" + valoracion + ", actores=" + actores + "]";
	}

	
	
	
	
	
	
	
}
