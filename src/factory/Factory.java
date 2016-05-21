package factory;

import mybatis.interfaces.EstablecimientoMapper;
import mybatis.interfaces.SocioMapper;
import mybatis.interfaces.UbigeoMapper;


/**
 * <strong>Factory</strong> <br>
 * Clase Fábrica DAO
 * 
 * @author CruzadoJ
 *
 */
public abstract class Factory {

	public static final int MYSQL = 1;
	public static final int SQL = 2;
	public static final int ORACLE = 3;

	//public abstract RolMapper getRolMapper();
	//public abstract SeguridadMapper getSeguridadMapper();
	public abstract SocioMapper getSocioMapper();
	//public abstract TipoDocumentoMapper getTipoDocumentoMapper();
	//public abstract UsuarioMapper getUsuarioMapper();
	//public abstract PersonaMapper getPersonaMapper();
	//public abstract TelefonoMapper getTelefonoMapper();
	public abstract EstablecimientoMapper getEstablecimientoMapper();
	//public abstract SolicitudModificacionMapper getSolicitudModificacionMapper();
	public abstract UbigeoMapper getUbigeoMapper();

	public static Factory getFactory(Integer database) {

		switch (database) {
			case MYSQL:
				return new MySqlDAOFactory();
			case SQL:
				// TODO: return new SqlDAOFactory();
			case ORACLE:
				// TODO: return new OracleDAOFactory();
		}

		return null;
	}
}
