import redis.clients.jedis.Jedis;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Project：linux_99Score
 * Date：2021/12/28
 * Time：16:18
 * Description：TODO
 *
 * @author lmk
 * @version 1.0
 */
public class ConnSQL {
    private static Connection getConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("驱动类加载失败。");
        }
        String url = "jdbc:mysql://127.0.0.1/linux_final";
        String username = "root";
        String password = "Aa123456..";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }


    public List<Book> getBk(String sql) throws SQLException {
        List<Book> lb = new ArrayList<Book>();


        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);



            while (rs.next()) {
                    Book bk = new Book();
                    bk.setId(rs.getInt("id"));
                    bk.setName(rs.getString("name"));
                    bk.setFromPlace(rs.getString("fromPlace"));
                    bk.setAuthor(rs.getString("author"));
                    lb.add(bk);

                }


        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return lb;
    }


    public boolean updateBk(String sql) throws SQLException {
        //获取数据库连接对象
        Connection conn = getConn();
        try {
            //连接对象调用createStatement()方法，创建一个执行SQL语句的对象
            Statement st = conn.createStatement();
            //执行SQL语句的对象st，调用executeUpdate()方法执行SQL语句，执行结果为int类型，表示受到影响的记录条数
            //executeUpdate( )方法可以执行增删改DML语句和创建表、删除表等DDL语句
            int cnt = st.executeUpdate(sql);
            return cnt>0; //如果有记录受到影响，则表示更新操作成功
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }finally {
            if (conn!=null) {
                conn.close();
            }
        }
    }

}
