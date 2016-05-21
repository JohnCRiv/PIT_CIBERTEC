package service;

import java.util.List;

import bean.Socio;
import factory.Factory;
import mybatis.interfaces.SocioMapper;
import util.Constantes;

public class SocioService implements SocioMapper {

	Factory factory = Factory.getFactory(Constantes.ORIGEN_DATOS);
	SocioMapper dao = factory.getSocioMapper();
	
	@Override
	public void registrar(Socio socio) {
		dao.registrar(socio);
	}

	@Override
	public void eliminar(String codigo) {
		dao.eliminar(codigo);
	}

	@Override
	public List<Socio> listar() {
		return dao.listar();
	}

}
