package bean;

import java.io.File;
import java.io.Serializable;
import java.util.Date;

public class Establecimiento implements Serializable {
	
	private int idEstablecimiento;
	private String codigoEst;
	private String descripcion;
	private int idUbigeo;
	private String direccion;
	private String referencia;
	private String encargado;
	private String estado;
	private String ubicacion;
	private String codDepartamento;
	private String codProvincia;
	private String codDistrito;
	private Date fechaRegistro;
	
	private Ubigeo ubigeo;
	
	private File fiFoto;
	private String strfotoFileName;
	private String strfotoContentType;
	private byte[] byFotoBytes;
	
	
	public Date getFechaRegistro() {
		return fechaRegistro;
	}
	public void setFechaRegistro(Date fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}
	public File getFiFoto() {
		return fiFoto;
	}
	public void setFiFoto(File fiFoto) {
		this.fiFoto = fiFoto;
	}
	public String getStrfotoFileName() {
		return strfotoFileName;
	}
	public void setStrfotoFileName(String strfotoFileName) {
		this.strfotoFileName = strfotoFileName;
	}
	public String getStrfotoContentType() {
		return strfotoContentType;
	}
	public void setStrfotoContentType(String strfotoContentType) {
		this.strfotoContentType = strfotoContentType;
	}
	public byte[] getByFotoBytes() {
		return byFotoBytes;
	}
	public void setByFotoBytes(byte[] byFotoBytes) {
		this.byFotoBytes = byFotoBytes;
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
	public String getUbicacion() {
		return ubicacion;
	}
	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}
	public Ubigeo getUbigeo() {
		return ubigeo;
	}
	public void setUbigeo(Ubigeo ubigeo) {
		this.ubigeo = ubigeo;
	}
	public int getIdEstablecimiento() {
		return idEstablecimiento;
	}
	public void setIdEstablecimiento(int idEstablecimiento) {
		this.idEstablecimiento = idEstablecimiento;
	}
	public String getCodigoEst() {
		return codigoEst;
	}
	public void setCodigoEst(String codigoEst) {
		this.codigoEst = codigoEst;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getIdUbigeo() {
		return idUbigeo;
	}
	public void setIdUbigeo(int idUbigeo) {
		this.idUbigeo = idUbigeo;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getReferencia() {
		return referencia;
	}
	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}
	public String getEncargado() {
		return encargado;
	}
	public void setEncargado(String encargado) {
		this.encargado = encargado;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
}
