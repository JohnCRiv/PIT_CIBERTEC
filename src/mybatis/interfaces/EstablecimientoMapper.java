package mybatis.interfaces;

import java.util.List;

import bean.Establecimiento;

public interface EstablecimientoMapper {
	
	/**
	 * <strong>Registrar<strong> <br>
	 * M�todo que registra un establecimiento.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @param socio
	 * 			Socio a registrar.
	 * 
	 */
	public void registrar(Establecimiento establecimiento);
	
	/**
	 * <strong>Eliminar<strong> <br>
	 * M�todo que obtiene un establecimiento.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @param codigo
	 * 			C�digo del establecimiento a obtener.
	 * 
	 */
	public Establecimiento obtener(int idEstablecimiento);
	
	/**
	 * <strong>Eliminar<strong> <br>
	 * M�todo que actualiza un establecimiento.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @param Establecimiento
	 * 			Objeto que actualice al viejo Objeto.
	 * 
	 */
	public void actualizar(Establecimiento establecimiento);
	
	/**
	 * <strong>Eliminar<strong> <br>
	 * M�todo que anula un establecimiento.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @param codigo
	 * 			C�digo del establecimiento a anular.
	 * 
	 */
	public void anular(int idEstablecimiento);
	
	/**
	 * <strong>Listar<strong> <br>
	 * M�todo que lista a todos los establecimientos.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @return List<{@link Socio}>
	 */
	public List<Establecimiento> listar();
	
	/**
	 * <strong>Eliminar<strong> <br>
	 * M�todo que elimina un establecimiento.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @param Establecimiento
	 * 			id del establecimiento
	 * 
	 */
	public void eliminar(int idEstablecimiento);
	
	/**
	 * <strong>Buscar por descripcion<strong> <br>
	 * M�todo que busca un establecimiento por su descripcion.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @param Establecimiento
	 * 			id del establecimiento
	 * 
	 */
	public List<Establecimiento> buscarXdescripcion(String descripcion);

}
