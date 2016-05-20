package action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import service.EstablecimientoService;
import service.UbigeoService;
import bean.Establecimiento;
import bean.Ubigeo;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Scope;
import com.opensymphony.xwork2.inject.Scoped;

@Scoped(Scope.SESSION)
@ParentPackage("pit")
public class EstablecimientoAction extends ActionSupport {
	private Establecimiento establecimiento;
	private List<Establecimiento> lstEstablecimiento;
	private List<Ubigeo> lstDepartamento, lstProvincia, lstDistrito;
	private Ubigeo ubigeo;
	
	//nombre para los combitos
	private String depa,prov, dist;

	@Action(value="/registrarEstablecimiento",results={
			@Result(name="registrar",location="/pages/core/crud-establecimiento/listado-establecimiento.jsp")})
	public String registrarEstablecimiento(){
		if(!dist.equals("-1")){
			ubigeo = new UbigeoService().obtenerIdUbigeo(depa, prov, dist);
			//System.out.println(ubigeo.getIdUbigeo());
		}
		File file = establecimiento.getFiFoto();
		try {
			establecimiento.setByFotoBytes(util.Constantes.getBytesFromFile(file));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		establecimiento.setIdUbigeo(ubigeo.getIdUbigeo());
		Date fechaSistema = new Date();
		establecimiento.setFechaRegistro(fechaSistema);
		establecimiento.setEstado("Habilitado");

		new EstablecimientoService().registrar(establecimiento);
		listar();
		return "registrar";
	}
	@Action(value="/actualizarEstablecimiento",results={@Result
			(name="actualizar",location="/pages/core/crud-establecimiento/listado-establecimiento.jsp")})
	public String actualizarEmpleado(){
		if(!dist.equals("-1")){
			ubigeo = new UbigeoService().obtenerIdUbigeo(depa, prov, dist);
			//System.out.println(ubigeo.getIdUbigeo());
		}
		
		File file = establecimiento.getFiFoto();
		try {
			establecimiento.setByFotoBytes(util.Constantes.getBytesFromFile(file));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		establecimiento.setIdUbigeo(ubigeo.getIdUbigeo());
		new EstablecimientoService().actualizar(establecimiento);
		listar();
		return "actualizar";
	}
	@Action(value="/anularEstablecimiento",results={@Result(name="anular",location="/pages/core/crud-establecimiento/listado-establecimiento.jsp")})
	public String anularEstablecimiento(){
		establecimiento.setEstado("Inhabilitado");
		new EstablecimientoService().anular(establecimiento.getIdEstablecimiento());
		System.out.println(establecimiento.getIdEstablecimiento());
		listar();
		return "anular";
	}
	@Action(value="/eliminarEstablecimiento",results={@Result(name="eliminar",location="/pages/core/crud-establecimiento/listado-establecimiento.jsp")})
	public String eliminarEstablecimiento(){
		new EstablecimientoService().eliminar(establecimiento.getIdEstablecimiento());
		System.out.println(establecimiento.getIdEstablecimiento());
		listar();
		return "eliminar";
	}
	
	@Action(value="/listarEstablecimiento",results={
			@Result(name="listarEst",location="/listado-establecimiento.jsp")})
	public String listarEmpleado(){
		listar();
		return "listarEst";
	}	
	//método que permite llenar el objeto lstEmpleado
	public void listar(){
		lstEstablecimiento = new EstablecimientoService().listar();
	}
	@Action(value="/buscarXdescripcion",results={
			@Result(name="buscarEst",location="/pages/core/crud-establecimiento/listado-establecimiento.jsp")})
	public String buscarXdescripcion(){
		if(!establecimiento.getDesBuscar().equals("")){
			lstEstablecimiento = new EstablecimientoService().buscarXdescripcion(establecimiento.getDesBuscar());
		}else {
			lstEstablecimiento = new EstablecimientoService().listar();
		}
		return "buscarEst";
	}	
	
	@Action(value="/listarUbigeo",results={
			@Result(name="listarUbigeo",type="json")})
	public String listarUbigeo(){
		lstDepartamento = new UbigeoService().listarDepartamento();
		if (depa!=null && !depa.equalsIgnoreCase("")) {
			lstProvincia = new UbigeoService().listarProvinciaXdepartamento(depa);
			if (prov!=null && !prov.equalsIgnoreCase("")) {
				lstDistrito = new UbigeoService().listarDistritoxProvincia(depa, prov);
				
			}
		}	
		return "listarUbigeo";
	}
	@Action(value="/obtenerEstablecimiento",results={@Result(name="obtener",location="/pages/core/crud-establecimiento/establecimiento-editar.jsp")})
	public String obtenerEstablecimiento(){
		establecimiento=new EstablecimientoService().obtener(establecimiento.getIdEstablecimiento());
		setDepa(establecimiento.getCodDepartamento());
		setProv(establecimiento.getCodProvincia());
		setDist(establecimiento.getCodDistrito());
		
		establecimiento.setFiFoto(util.Constantes.getFileFromBytes(
		establecimiento.getByFotoBytes(),"C:/Users/Nico/Desktop/ps"));
		
		
		//System.out.println(depa+prov+dist);
		return "obtener";
	}
	
	
	public List<Establecimiento> getLstEstablecimiento() {
		return lstEstablecimiento;
	}
	public void setLstEstablecimiento(List<Establecimiento> lstEstablecimiento) {
		this.lstEstablecimiento = lstEstablecimiento;
	}
	public Establecimiento getEstablecimiento() {
		return establecimiento;
	}
	public void setEstablecimiento(Establecimiento establecimiento) {
		this.establecimiento = establecimiento;
	}

	public Ubigeo getUbigeo() {
		return ubigeo;
	}

	public void setUbigeo(Ubigeo ubigeo) {
		this.ubigeo = ubigeo;
	}

	public String getDepa() {
		return depa;
	}

	public void setDepa(String depa) {
		this.depa = depa;
	}

	public String getProv() {
		return prov;
	}

	public void setProv(String prov) {
		this.prov = prov;
	}

	public String getDist() {
		return dist;
	}

	public void setDist(String dist) {
		this.dist = dist;
	}

	public List<Ubigeo> getLstDepartamento() {
		return lstDepartamento;
	}

	public void setLstDepartamento(List<Ubigeo> lstDepartamento) {
		this.lstDepartamento = lstDepartamento;
	}

	public List<Ubigeo> getLstProvincia() {
		return lstProvincia;
	}

	public void setLstProvincia(List<Ubigeo> lstProvincia) {
		this.lstProvincia = lstProvincia;
	}

	public List<Ubigeo> getLstDistrito() {
		return lstDistrito;
	}

	public void setLstDistrito(List<Ubigeo> lstDistrito) {
		this.lstDistrito = lstDistrito;
	}
	
	
	
	
}
