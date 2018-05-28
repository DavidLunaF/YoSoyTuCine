package ModeloBO;
import java.util.*;

public class CineSesionPeliculaBO {
	
	private int idcine;
	private int idpelicula;
	private Date fecha;
	private String hora;
	private CineBO cine;
	private SesionBO sesion;
	private CinesysesionesBO cineSesion;
	public CineSesionPeliculaBO(int idcine, int idpelicula, Date fecha, String hora, CineBO cine,
			SesionBO sesion,CinesysesionesBO cineSesion) {
		super();
		this.idcine = idcine;
		this.idpelicula = idpelicula;
		this.fecha = fecha;
		this.hora = hora;
		this.cine = cine;
		this.sesion = sesion;
		this.cineSesion=cineSesion;
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
	public CineBO getPelicula() {
		return cine;
	}
	public void setPelicula(CineBO cine) {
		this.cine = cine;
	}
	public SesionBO getSesion() {
		return sesion;
	}
	public void setSesion(SesionBO sesion) {
		this.sesion = sesion;
	}
	
	public CinesysesionesBO getCineSesion() {
		return cineSesion;
	}
	public void setCineSesion(CinesysesionesBO cineSesion) {
		this.cineSesion = cineSesion;
	}
	public CineSesionPeliculaBO() {
		
	}
	
}
