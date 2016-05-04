package action;

import org.apache.struts2.convention.annotation.ParentPackage;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Scope;
import com.opensymphony.xwork2.inject.Scoped;

import service.SocioService;

/**
 * <strong>SocioAction</strong> <br>
 * Clase controladora del Socio.
 * 
 * @author CruzadoJ
 *
 */
@Scoped(Scope.SESSION)
@ParentPackage("pit")
public class SocioAction extends ActionSupport {

	private static final long serialVersionUID = 3827705983890342206L;

	private SocioService service;
	private String accion;
	
	public SocioAction() {
		inicializarVariables();
	}
	
	private void inicializarVariables() {
		service = new SocioService();
	}

	public SocioService getService() {
		return service;
	}

	public void setService(SocioService service) {
		this.service = service;
	}

	public String getAccion() {
		return accion;
	}

	public void setAccion(String accion) {
		this.accion = accion;
	}

}
