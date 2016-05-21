package factory.dao.mysql;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import util.MyBatisUtil;
import bean.Establecimiento;
import mybatis.interfaces.EstablecimientoMapper;

public class MySqlEstablecimientoMapperDao implements EstablecimientoMapper {

	@Override
	public void registrar(Establecimiento establecimiento) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		EstablecimientoMapper establecimientoMapper = session.getMapper(EstablecimientoMapper.class);
		establecimientoMapper.registrar(establecimiento);
		session.commit();
		session.close();
	}

	@Override
	public Establecimiento obtener(int idEstablecimiento) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		EstablecimientoMapper establecimientoMapper = session.getMapper(EstablecimientoMapper.class);
		Establecimiento establecimiento = establecimientoMapper.obtener(idEstablecimiento);
		session.close();
		return establecimiento;
	}

	@Override
	public void actualizar(Establecimiento establecimiento) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		EstablecimientoMapper establecimientoMapper = session.getMapper(EstablecimientoMapper.class);
		establecimientoMapper.actualizar(establecimiento);
		session.commit();
		session.close();
	}

	@Override
	public void anular(int idEstablecimiento) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		EstablecimientoMapper establecimientoMapper = session.getMapper(EstablecimientoMapper.class);
		establecimientoMapper.anular(idEstablecimiento);
		session.commit();
		session.close();
	}

	@Override
	public List<Establecimiento> listar() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		EstablecimientoMapper establecimientoMapper = session.getMapper(EstablecimientoMapper.class);
		List<Establecimiento> lista =  establecimientoMapper.listar();
		session.close();
		return lista;
	}

	@Override
	public void eliminar(int idEstablecimiento) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		EstablecimientoMapper establecimientoMapper = session.getMapper(EstablecimientoMapper.class);
		establecimientoMapper.eliminar(idEstablecimiento);
		session.commit();
		session.close();
	}

	@Override
	public List<Establecimiento> buscarXdescripcion(String descripcion) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		EstablecimientoMapper establecimientoMapper = session.getMapper(EstablecimientoMapper.class);
		List<Establecimiento> lista =  establecimientoMapper.buscarXdescripcion(descripcion);
		session.close();
		return lista;
	}

}
