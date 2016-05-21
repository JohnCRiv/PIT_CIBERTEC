package service;

import java.util.List;

import bean.Establecimiento;
import factory.Factory;
import mybatis.interfaces.EstablecimientoMapper;
import util.Constantes;

public class EstablecimientoService implements EstablecimientoMapper {

	Factory factory = Factory.getFactory(Constantes.ORIGEN_DATOS);
	EstablecimientoMapper dao = factory.getEstablecimientoMapper();
	
	@Override
	public List<Establecimiento> listar() {
		return dao.listar();
	}

	@Override
	public void registrar(Establecimiento establecimiento) {
		dao.registrar(establecimiento);
	}

	@Override
	public Establecimiento obtener(int idEstablecimiento) {
		return dao.obtener(idEstablecimiento);
	}

	@Override
	public void actualizar(Establecimiento establecimiento) {
		dao.actualizar(establecimiento);
	}

	@Override
	public void anular(int idEstablecimiento) {
		dao.anular(idEstablecimiento);
	}

	@Override
	public void eliminar(int idEstablecimiento) {
		dao.eliminar(idEstablecimiento);
	}

	@Override
	public List<Establecimiento> buscarXdescripcion(String descripcion) {
		return dao.buscarXdescripcion(descripcion);
	}
	
}
