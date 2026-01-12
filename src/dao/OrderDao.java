package dao;

import model.Order;
import model.OrderItem;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;
import utils.DBUtil;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class OrderDao {
    public void insertOrder(Connection con, Order order) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "insert into `order`(total,amount,status,paytype,name,phone,address,datetime,user_id) values(?,?,?,?,?,?,?,?,?)";
        r.update(con, sql,
                order.getTotal(), order.getAmount(), order.getStatus(),
                order.getPaytype(), order.getName(), order.getPhone(),
                order.getAddress(), order.getDatetime(), order.getUser().getId());
    }

    public int getLastInsertId(Connection con) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "select last_insert_id()";
        BigInteger bi = r.query(con, sql, new ScalarHandler<BigInteger>());
        return Integer.parseInt(bi.toString());
    }

    public void insertOrderItem(Connection con, OrderItem item) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "insert into orderitem(price,amount,goods_id,order_id) values(?,?,?,?)";
        r.update(con, sql, item.getPrice(), item.getAmount(), item.getGoods().getId(), item.getOrder().getId());
    }

    public List<Order> selectAll(int userid) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from `order` where user_id=? order by datetime desc";
        List<Order> list = r.query(conn, sql, new BeanListHandler<Order>(Order.class), userid);
        conn.close();
        return list;
    }

    public List<OrderItem> selectAllItem(int orderid) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select i.id,i.price,i.amount,g.name from orderitem i,goods g where order_id=? and i.goods_id=g.id";
        List<OrderItem> list = r.query(conn, sql, new BeanListHandler<OrderItem>(OrderItem.class), orderid);
        conn.close();
        return list;
    }

    public int getOrderCount(int status) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "";
        if (status == 0) {
            sql = "select count(*) from `order`";
            int count = r.query(conn, sql, new ScalarHandler<Long>()).intValue();
            conn.close();
            return count;
        } else {
            sql = "select count(*) from `order` where status=?";
            int count = r.query(conn, sql, new ScalarHandler<Long>(), status).intValue();
            conn.close();
            return count;
        }
    }

    public List<Order> selectOrderList(int status, int pageNumber, int pageSize) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        if (status == 0) {
            String sql = "select o.id,o.total,o.amount,o.status,o.paytype,o.name,o.phone,o.address,o.datetime,u.username from `order` o,user u where o.user_id=u.id order by o.datetime desc limit ?,?";
            List<Order> list = r.query(conn, sql, new BeanListHandler<Order>(Order.class), (pageNumber - 1) * pageSize, pageSize);
            conn.close();
            return list;
        } else {
            String sql = "select o.id,o.total,o.amount,o.status,o.paytype,o.name,o.phone,o.address,o.datetime,u.username from `order` o,user u where o.user_id=u.id and o.status=? order by o.datetime desc limit ?,?";
            List<Order> list = r.query(conn, sql, new BeanListHandler<Order>(Order.class), status, (pageNumber - 1) * pageSize, pageSize);
            conn.close();
            return list;
        }
    }

    public void updateStatus(int id, int status) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "update `order` set status=? where id = ?";
        r.update(conn, sql, status, id);
        conn.close();
    }

    public void deleteOrder(Connection con, int id) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "delete from `order` where id = ?";
        r.update(con, sql, id);
    }

    public void deleteOrderItem(Connection con, int id) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "delete from orderitem where order_id=?";
        r.update(con, sql, id);
    }
}
