package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import factory.Factory;
import util.Constantes;
import util.MyBatisUtil;
import bean.Ubigeo;
import mybatis.interfaces.EstablecimientoMapper;
import mybatis.interfaces.UbigeoMapper;

public class UbigeoService implements UbigeoMapper {

	Factory factory = Factory.getFactory(Constantes.ORIGEN_DATOS);
	UbigeoMapper dao = factory.getUbigeoMapper();
	
	@Override
	public List<Ubigeo> listarDepartamento() {
		return dao.listarDepartamento();
	}

	@Override
	public List<Ubigeo> listarProvinciaXdepartamento(String codDepartamento) {
		return dao.listarProvinciaXdepartamento(codDepartamento);
	}

	@Override
	public List<Ubigeo> listarDistritoxProvincia(String codDepartamento, String codProvincia) {
		return dao.listarDistritoxProvincia(codDepartamento, codProvincia);
	}

	@Override
	public Ubigeo obtenerIdUbigeo(String codDepartamento, String codProvincia,
			String codDistrito) {
		return dao.obtenerIdUbigeo(codDepartamento, codProvincia, codDistrito);
	}




}
