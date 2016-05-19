package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import util.MyBatisUtil;
import bean.Ubigeo;
import mybatis.interfaces.UbigeoMapper;

public class UbigeoService implements UbigeoMapper {

	@Override
	public List<Ubigeo> listarDepartamento() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		UbigeoMapper ubigeoMapper = session.getMapper(UbigeoMapper.class);
		List<Ubigeo> lista =  ubigeoMapper.listarDepartamento();
		session.close();
		return lista;
	}

	@Override
	public List<Ubigeo> listarProvinciaXdepartamento(String codDepartamento) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		UbigeoMapper ubigeoMapper = session.getMapper(UbigeoMapper.class);
		List<Ubigeo> lista =  ubigeoMapper.listarProvinciaXdepartamento(codDepartamento);
		session.close();
		return lista;
	}

	@Override
	public List<Ubigeo> listarDistritoxProvincia(String codDepartamento, String codProvincia) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		UbigeoMapper ubigeoMapper = session.getMapper(UbigeoMapper.class);
		List<Ubigeo> lista =  ubigeoMapper.listarDistritoxProvincia(codDepartamento, codProvincia);
		session.close();
		return lista;
	}

	@Override
	public Ubigeo obtenerIdUbigeo(String codDepartamento, String codProvincia,
			String codDistrito) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		UbigeoMapper ubigeoMapper = session.getMapper(UbigeoMapper.class);
		Ubigeo ubigeo = ubigeoMapper.obtenerIdUbigeo(codDepartamento, codProvincia, codDistrito);
		session.close();
		return ubigeo;
	}




}
