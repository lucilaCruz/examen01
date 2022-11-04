package cruzllaguento.dominio;

public class Propiedades {
	private int id;
	private String nombre;
	private String caracteristicas;
	private String direccion;
	private String estado;
	private Double precioalquiler;
	
	public Propiedades() {
	}

	public Propiedades(int id, String nombre,String direccion,String caracteristicas,String estado,Double precioalquiler) {
		this.id = id;
		this.nombre = nombre;
		this.caracteristicas=caracteristicas;
		this.estado=estado;
		this.precioalquiler=precioalquiler;
		this.direccion=direccion;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCaracteristicas() {
		return caracteristicas;
	}

	public void setCaracteristicas(String caracteristicas) {
		this.caracteristicas = caracteristicas;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Double getPrecioalquiler() {
		return precioalquiler;
	}

	public void setPrecioalquiler(Double precioalquiler) {
		this.precioalquiler = precioalquiler;
	}
	
	
}
