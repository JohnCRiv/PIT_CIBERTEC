package factory;

import factory.dao.mysql.MySqlEstablecimientoMapperDao;
import factory.dao.mysql.MySqlSocioMapperDAO;
import factory.dao.mysql.MySqlUbigeoMapper;
import mybatis.interfaces.EstablecimientoMapper;
import mybatis.interfaces.SocioMapper;
import mybatis.interfaces.UbigeoMapper;


public class MySqlDAOFactory extends Factory {


	@Override
	public SocioMapper getSocioMapper() {
		return new MySqlSocioMapperDAO();
	}
	@Override
	public EstablecimientoMapper getEstablecimientoMapper() {
		return new MySqlEstablecimientoMapperDao();
	}
	@Override
	public UbigeoMapper getUbigeoMapper() {
		return new MySqlUbigeoMapper();
	}

}
