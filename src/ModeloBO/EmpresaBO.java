package ModeloBO;

public class EmpresaBO {
	private int idEmpresa;
	private String nombre;
	private String logo;
	
	//Constructor vacio

	public EmpresaBO(){
		
	}
	//Constructor no vacio xd

	public EmpresaBO(int idEmpresa, String nombre, String logo) {
		super();
		this.idEmpresa = idEmpresa;
		this.nombre = nombre;
		this.logo = logo;
	}
	
	public int getIdEmpresa() {
		return idEmpresa;
	}
	//Este de set supongo que no pero bueno ya se quitará
	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	
}
