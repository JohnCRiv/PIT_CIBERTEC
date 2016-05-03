package mybatis.mapper;

import java.util.List;

import bean.Socio;

public interface SocioMapper {
	
	/**
	 * <strong>Registrar<strong> <br>
	 * Método que registra un socio.
	 * 
	 * @author CruzadoJ
	 * 
	 * @param socio
	 * 			Socio a registrar.
	 * 
	 */
	public void registrar(Socio socio);
	
	/**
	 * <strong>Eliminar<strong> <br>
	 * Método que elimina un socio.
	 * 
	 * @author CruzadoJ
	 * 
	 * @param codigo
	 * 			Código del socio a eliminar.
	 * 
	 */
	public void eliminar(String codigo);
	
	/**
	 * <strong>Listar<strong> <br>
	 * Método que lista a todos los socio.
	 * 
	 * @author CruzadoJ
	 * 
	 * @return List<{@link Socio}>
	 */
	public List<Socio> listar();
	
}
