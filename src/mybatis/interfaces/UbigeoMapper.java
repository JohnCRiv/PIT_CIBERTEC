package mybatis.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.Ubigeo;


public interface UbigeoMapper {

	/**
	 * <strong>Listar<strong> <br>
	 * Método que lista a todos los departamentos.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @return List<{@link Socio}>
	 */
	public List<Ubigeo> listarDepartamento();
	/**
	 * <strong>Listar<strong> <br>
	 * Método que lista a todas las provincias por departamento.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @return List<{@link Socio}>
	 */
	public List<Ubigeo> listarProvinciaXdepartamento(String codDepartamento);
	/**
	 * <strong>Listar<strong> <br>
	 * Método que lista a todos los distritos por provincia.
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @return List<{@link Socio}>
	 */
	public List<Ubigeo> listarDistritoxProvincia(@Param("codDepartamento") String codDepartamento,@Param("codProvincia") String codProvincia);
	
	/**
	 * <strong>Listar<strong> <br>
	 * Método que obtiene el id de ubigeo
	 * 
	 * @author NicolasHidalgo
	 * 
	 * @return List<{@link Socio}>
	 */
	public Ubigeo obtenerIdUbigeo(@Param("codDepartamento") String codDepartamento,
			@Param("codProvincia") String codProvincia,@Param("codDistrito") String codDistrito);
	
}
