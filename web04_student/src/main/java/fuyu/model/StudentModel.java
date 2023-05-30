package fuyu.model;


import fuyu.domain.Student;
import fuyu.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;


import java.sql.SQLException;
import java.util.List;

/**
 * 处理数据的Java类
 * @author jt
 *
 */
public class StudentModel {
	// 查询所有学生信息的方法：
	public List<Student> findAll() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		List<Student> list = queryRunner.query("select *from student", new BeanListHandler<Student>(Student.class));
		return list;
	}

}
