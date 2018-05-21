package ModeloBO;

public class UsuarioBO {
	
	private int idUser;
	private String nombre;
	private String password;
	private String avatar;
	private String correo;
	
	public UsuarioBO() {
		
	}
	public UsuarioBO(int idUser, String nombre, String password, String avatar, String correo) {
		super();
		this.idUser = idUser;
		this.nombre = nombre;
		this.password = password;
		this.avatar = avatar;
		this.correo = correo;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
}
