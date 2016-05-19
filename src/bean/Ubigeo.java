package bean;

import java.io.Serializable;
import java.util.List;

public class Ubigeo implements Serializable{
	
	private int idUbigeo;
	private String codDepartamento;
	private String codProvincia;
	private String codDistrito;
	private String departamento;
	private String provincia;
	private String distrito;
	
	
	private List<Establecimiento> establecimientos;

	public int getIdUbigeo() {
		return idUbigeo;
	}

	public void setIdUbigeo(int idUbigeo) {
		this.idUbigeo = idUbigeo;
	}

	public String getCodDepartamento() {
		return codDepartamento;
	}

	public void setCodDepartamento(String codDepartamento) {
		this.codDepartamento = codDepartamento;
	}

	public String getCodProvincia() {
		return codProvincia;
	}

	public void setCodProvincia(String codProvincia) {
		this.codProvincia = codProvincia;
	}

	public String getCodDistrito() {
		return codDistrito;
	}

	public void setCodDistrito(String codDistrito) {
		this.codDistrito = codDistrito;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getDistrito() {
		return distrito;
	}

	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}

	public List<Establecimiento> getEstablecimientos() {
		return establecimientos;
	}

	public void setEstablecimientos(List<Establecimiento> establecimientos) {
		this.establecimientos = establecimientos;
	}
	
	

}
