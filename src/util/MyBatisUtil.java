package util;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * <strong>MyBatisUtil</strong> <br>
 * Clase que permite la conexión MyBatis.
 * 
 * @author CruzadoJ
 *
 */
public class MyBatisUtil {

	protected static SqlSessionFactory FACTORY;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis/config/mybatis-config.xml");
			FACTORY = new SqlSessionFactoryBuilder().build(reader, "mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * <strong>Get SqlSessionFactory</strong>
	 * Retorna la sesión actual de MyBatis.
	 * 
	 * @author CruzadoJ
	 * 
	 * @return {@link SqlSessionFactory} FACTORY
	 */
	public static SqlSessionFactory getSqlSessionFactory() {
		return FACTORY;
	}

}
