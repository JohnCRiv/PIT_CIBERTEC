package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bean.Socio;
import mybatis.interfaces.SocioMapper;
import util.MyBatisUtil;

public class SocioService implements SocioMapper {

	@Override
	public void registrar(Socio socio) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		SocioMapper socioMapper = session.getMapper(SocioMapper.class);
		socioMapper.registrar(socio);
		session.commit();
		session.close();
	}

	@Override
	public void eliminar(String codigo) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		SocioMapper socioMapper = session.getMapper(SocioMapper.class);
		socioMapper.eliminar(codigo);
		session.commit();
		session.close();
	}

	@Override
	public List<Socio> listar() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		SocioMapper socioMapper = session.getMapper(SocioMapper.class);
		List<Socio> lista = socioMapper.listar();
		session.close();
		return lista;
	}

}
