package dao;

import model.Goods;
import model.Recommend;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;
import utils.DBUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class GoodsDao {
    //select g.id,g.name,g.cover,g.price,t.name typename from recommend r,goods g,type t where type=2 and r.goods_id=g.id and g.type_id=t.id
    public List<Map<String,Object>> getGoodsList(int recommendType) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql="select g.id,g.name,g.cover,g.price,t.name typename from recommend r,goods g,type t where type=? and r.goods_id=g.id and g.type_id=t.id";
        List<Map<String, Object>> list = r.query(conn, sql, new MapListHandler(),recommendType);
        conn.close();
        return list;
    }

    public Map<String,Object> getScrollGood()throws SQLException{
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql="select g.id,g.name,g.cover,g.price  from recommend r,goods g where type=1 and r.goods_id=g.id";
        Map<String, Object> map = r.query(conn, sql, new MapHandler());
        conn.close();
        return map;
    }
    public List<Goods> selectGoodsByTypeID(int typeID,int pageNumber,int pageSize) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        if(typeID==0)
        {
            String sql="select * from goods limit ? , ?";
            List<Goods> list = r.query(conn, sql, new BeanListHandler<Goods>(Goods.class),(pageNumber-1)*pageSize,pageSize);
            conn.close();
            return list;
        }
        else
        {
            String sql="select * from goods where type_id=? limit ? , ?";
            List<Goods> list = r.query(conn, sql, new BeanListHandler<Goods>(Goods.class),typeID,(pageNumber-1)*pageSize,pageSize);
            conn.close();
            return list;
        }
    }
    public int getCountOfGoodsByTypeID(int typeID) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql="";
        if(typeID==0)
        {
            sql="select count(*) from goods";
            int count = r.query(conn, sql, new ScalarHandler<Long>()).intValue();
            conn.close();
            return count;
        }
        else
        {
            sql="select count(*) from goods where type_id=?";
            int count = r.query(conn, sql, new ScalarHandler<Long>(),typeID).intValue();
            conn.close();
            return count;
        }
    }
    public List<Goods> selectGoodsbyRecommend(int type,int pageNumber,int pageSize) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        if(type==0) {
            //当不添加推荐类型限制的时候
            String sql = " select g.id,g.name,g.cover,g.image1,g.image2,g.intro,g.price,g.stock,t.name typename from goods g,type t where g.type_id=t.id order by g.id limit ?,?";
            List<Goods> list = r.query(conn, sql, new BeanListHandler<Goods>(Goods.class),(pageNumber-1)*pageSize,pageSize);
            conn.close();
            return list;
        }

        String sql = " select g.id,g.name,g.cover,g.image1,g.image2,g.intro,g.price,g.stock,t.name typename from goods g,recommend r,type t where g.id=r.goods_id and g.type_id=t.id and r.type=? order by g.id limit ?,?";
        List<Goods> list = r.query(conn, sql, new BeanListHandler<Goods>(Goods.class),type,(pageNumber-1)*pageSize,pageSize);
        conn.close();
        return list;
    }
    public int getRecommendCountOfGoodsByTypeID(int type) throws SQLException {
        if(type==0)return getCountOfGoodsByTypeID(0);
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select count(*) from recommend where type=?";
        int count = r.query(conn, sql, new ScalarHandler<Long>(),type).intValue();
        conn.close();
        return count;
    }
    public Goods getGoodsById(int id) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select g.id,g.name,g.cover,g.image1,g.image2,g.price,g.intro,g.stock,t.id typeid,t.name typename from goods g,type t where g.id = ? and g.type_id=t.id";
        Goods goods = r.query(conn, sql, new BeanHandler<Goods>(Goods.class),id);
        conn.close();
        return goods;
    }
    public int getSearchCount(String keyword) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select count(*) from goods where name like ?";
        int count = r.query(conn, sql, new ScalarHandler<Long>(),"%"+keyword+"%").intValue();
        conn.close();
        return count;
    }
    public List<Goods> selectSearchGoods(String keyword, int pageNumber, int pageSize) throws SQLException{
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from goods where name like ? limit ?,?";
        List<Goods> list = r.query(conn, sql, new BeanListHandler<Goods>(Goods.class),"%"+keyword+"%",(pageNumber-1)*pageSize,pageSize);
        conn.close();
        return list;
    }
    public boolean isScroll(Goods g) throws SQLException {
        return isRecommend(g, 1);
    }
    public boolean isHot(Goods g) throws SQLException {
        return isRecommend(g, 2);
    }
    public boolean isNew(Goods g) throws SQLException {
        return isRecommend(g, 3);
    }
    private boolean isRecommend(Goods g,int type) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "select * from recommend where type=? and goods_id=?";
        Recommend recommend = r.query(conn, sql, new BeanHandler<Recommend>(Recommend.class),type,g.getId());
        conn.close();
        return recommend!=null;
    }
    public void addRecommend(int id,int type) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "insert into recommend(type,goods_id) values(?,?)";
        r.update(conn, sql,type,id);
        conn.close();
    }
    public void removeRecommend(int id,int type) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "delete from recommend where type=? and goods_id=?";
        r.update(conn, sql,type,id);
        conn.close();
    }
    public void insert(Goods g) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "insert into goods(name,cover,image1,image2,price,intro,stock,type_id) values(?,?,?,?,?,?,?,?)";
        r.update(conn, sql,g.getName(),g.getCover(),g.getImage1(),g.getImage2(),g.getPrice(),g.getIntro(),g.getStock(),g.getType().getId());
        conn.close();
    }
    public void update(Goods g) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "update goods set name=?,cover=?,image1=?,image2=?,price=?,intro=?,stock=?,type_id=? where id=?";
        r.update(conn, sql,g.getName(),g.getCover(),g.getImage1(),g.getImage2(),g.getPrice(),g.getIntro(),g.getStock(),g.getType().getId(),g.getId());
        conn.close();
    }
    public void delete(int id) throws SQLException {
        Connection conn = DBUtil.getConnection();
        QueryRunner r = new QueryRunner();
        String sql = "delete from goods where id = ?";
        r.update(conn, sql,id);
        conn.close();
    }
}
