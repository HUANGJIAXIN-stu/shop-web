package dao;

import model.Type;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.DBUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class TypeDao
{
    public List<Type> GetAllType() throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from type";
        List<Type> list = r.query(conn, sql, new BeanListHandler<Type>(Type.class));
        conn.close();
        return list;
    }
    public Type selectTypeNameByID(int typeid) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from type where id=?";
        Type type = r.query(conn, sql, new BeanHandler<Type>(Type.class), typeid);
        conn.close();
        return type;
    }
    public Type select(int id) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from type where id = ?";
        Type type = r.query(conn, sql, new BeanHandler<Type>(Type.class), id);
        conn.close();
        return type;
    }
    public void insert(Type t) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "insert into type(name) values(?)";
        r.update(conn, sql, t.getName());
        conn.close();
    }
    public void update(Type t) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "update type set name=? where id = ?";
        r.update(conn, sql, t.getName(), t.getId());
        conn.close();
    }
    public void delete(int id) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "delete from type where id = ?";
        r.update(conn, sql, id);
        conn.close();
    }
}
