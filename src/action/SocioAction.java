package action;

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
public class SocioAction extends ActionSupport {

	private static final long serialVersionUID = 3827705983890342206L;

	private SocioService servicio;
	private String accion;

	public SocioService getServicio() {
		return servicio;
	}

	public void setServicio(SocioService servicio) {
		this.servicio = servicio;
	}

	public String getAccion() {
		return accion;
	}

	public void setAccion(String accion) {
		this.accion = accion;
	}

}
