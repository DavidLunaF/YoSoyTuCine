package ModeloBO;
import java.util.*;

public class CineSesionPeliculaBO {
	
	private int idcine;
	private int idpelicula;
	private Date fecha;
	private String hora;
	
	public CineSesionPeliculaBO() {
		
	}
	public CineSesionPeliculaBO(int idcine, int idpelicula, Date fecha, String hora) {
		super();
		this.idcine = idcine;
		this.idpelicula = idpelicula;
		this.fecha = fecha;
		this.hora = hora;
	}
	public int getIdcine() {
		return idcine;
	}
	public void setIdcine(int idcine) {
		this.idcine = idcine;
	}
	public int getIdpelicula() {
		return idpelicula;
	}
	public void setIdpelicula(int idpelicula) {
		this.idpelicula = idpelicula;
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
	
}
