package ModeloBO;

public class CineBO {
	
	private int idCine;
	private int idEmpresa;
	private String nombre;
	private double latitud;
	private double longitud;
	private String direccion;
	private int codigoPostal;
	private String ciudad;
	private int telefono;
	private float valoracion;
	private String url;
	private String logo;
	

	

	//Constructor vacio
	public CineBO() {
		
	}
	
	//Constructo completo
	public CineBO(int idCine, int idEmpresa, String nombre, double latitud, double longitud, String direccion,
			int codigoPostal, String ciudad, int telefo, float valoracion, String url) {
		
		this.idCine = idCine;
		this.idEmpresa = idEmpresa;
		this.nombre = nombre;
		this.latitud = latitud;
		this.longitud = longitud;
		this.direccion = direccion;
		this.codigoPostal = codigoPostal;
		this.ciudad = ciudad;
		this.telefono = telefo;
		this.valoracion = valoracion;
		this.url = url;
	}
	
	public CineBO(int idCine, int idEmpresa, String nombre, double latitud, double longitud, String direccion,
			int codigoPostal, String ciudad, int telefono, float valoracion, String url, String logo) {
		super();
		this.idCine = idCine;
		this.idEmpresa = idEmpresa;
		this.nombre = nombre;
		this.latitud = latitud;
		this.longitud = longitud;
		this.direccion = direccion;
		this.codigoPostal = codigoPostal;
		this.ciudad = ciudad;
		this.telefono = telefono;
		this.valoracion = valoracion;
		this.url = url;
		this.logo = logo;
	}
	//Si es necesario se pueden crear mas constructores en funcion de lo que se solicite a la base de datos
	
	
	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	
	//Geters and Seters   *ver si hace falta quitar los seters de algunas propiedades como la clave*
	public int getIdCine() {
		return idCine;
	}

	public void setIdCine(int idCine) {
		this.idCine = idCine;
	}

	public int getIdEmpresa() {
		return idEmpresa;
	}

	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getLatitud() {
		return latitud;
	}

	public void setLatitud(double latitud) {
		this.latitud = latitud;
	}

	public double getLongitud() {
		return longitud;
	}

	public void setLongitud(double longitud) {
		this.longitud = longitud;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getCodigoPostal() {
		return codigoPostal;
	}

	public void setCodigoPostal(int codigoPostal) {
		this.codigoPostal = codigoPostal;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public int getTelefo() {
		return telefono;
	}

	public void setTelefo(int telefo) {
		this.telefono = telefo;
	}

	public float getValoracion() {
		return valoracion;
	}

	public void setValoracion(float valoracion) {
		this.valoracion = valoracion;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	
	
	
	//ToString   *se puede dejar mas bonito si hiciera falta
	@Override
	public String toString() {
		return "Cine [idCine=" + idCine + ", idEmpresa=" + idEmpresa + ", nombre=" + nombre + ", latitud=" + latitud
				+ ", longitud=" + longitud + ", direccion=" + direccion + ", codigoPostal=" + codigoPostal + ", ciudad="
				+ ciudad + ", telefo=" + telefono + ", valoracion=" + valoracion + ", url=" + url + "]";
	}
	
	
	
	
	
	
	
}
