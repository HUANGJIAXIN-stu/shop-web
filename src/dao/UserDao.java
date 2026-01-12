package dao;

import model.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import utils.DBUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class UserDao {
    public void addUser(User user) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "insert into user(username,email,password,name,phone,address,isadmin,isvalidate) values(?,?,?,?,?,?,?,?)";
        r.update(conn, sql, user.getUsername(), user.getEmail(), user.getPassword(), user.getName(), user.getPhone(), user.getAddress(), user.isIsadmin(), user.isIsvalidate());
        conn.close();
    }
    public boolean isUsernameExist(String username) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from user where username = ?";
        User u = r.query(conn, sql, new BeanHandler<User>(User.class),username);
        conn.close();
        return u != null;
    }
    public boolean isEmailExist(String email) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from user where email = ?";
        User u = r.query(conn, sql, new BeanHandler<User>(User.class),email);
        conn.close();
        return u != null;
    }
    public User selectByUsernamePassword(String username,String password) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from user where username=? and password=?";
        User user = r.query(conn, sql, new BeanHandler<User>(User.class),username,password);
        conn.close();
        return user;
    }
    public User selectByEmailPassword(String email,String password) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from user where email=? and password=?";
        User user = r.query(conn, sql, new BeanHandler<User>(User.class),email,password);
        conn.close();
        return user;
    }
    public User selectById(int id) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from user where id=?";
        User user = r.query(conn, sql, new BeanHandler<User>(User.class),id);
        conn.close();
        return user;
    }

    public void updateUserAddress(User user) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql ="update user set name = ?,phone=?,address=? where id = ?";
        r.update(conn, sql,user.getName(),user.getPhone(),user.getAddress(),user.getId());
        conn.close();
    }
    public void updatePwd(User user) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql ="update user set password = ? where id = ?";
        r.update(conn, sql,user.getPassword(),user.getId());
        conn.close();
    }
    public int selectUserCount() throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select count(*) from user";
        int count = r.query(conn, sql, new ScalarHandler<Long>()).intValue();
        conn.close();
        return count;
    }
    public List selectUserList(int pageNo, int pageSize) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from user limit ?,?";
        List list = r.query(conn, sql, new BeanListHandler<User>(User.class), (pageNo-1)*pageSize,pageSize );
        conn.close();
        return list;
    }
    public void delete(int id) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "delete from user where id = ?";
        r.update(conn, sql,id);
        conn.close();
    }
}
