import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

/**
 * Project：linux_99Score
 * Date：2021/12/28
 * Time：16:30
 * Description：TODO
 *
 * @author lmk
 * @version 1.0
 */
@WebServlet("/BkController")
public class BkController extends HttpServlet {

    // 创建数据库连接对象
    ConnSQL cs= new ConnSQL();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            // 获取页面上传过来的temp值
            String temp = req.getParameter("temp");

            if (temp== null) {
                temp = "";
            }
            switch (temp) {
                case "add":
                    // 增加操作
                    addBk(req, resp);
                    break;
                case "delete":
                    // 删除操作
                    delBk(req, resp);
                    break;
                case "update":
                    // 更新操作
                    updBK(req, resp);
                    break;
                default:
                    // 查询操作
                    searchBk(req, resp);
                    break;
            }
        } catch (Exception e) {
            System.out.println(e);

        }
    }


    private void addBk(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        //获取表单中各个输入框中的值

        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String fromPlace = req.getParameter("fromPlace");
        String author = req.getParameter("author");
        //组装SQL语句
        String sql = "insert into book(id,name,fromPlace,author) values(" + id + ",'" + name + "','" + fromPlace + "','" + author+ "')";
        //调用函数执行SQL语句
        if (cs.updateBk(sql)) {

            resp.sendRedirect("/BkController");
        } else {
            req.getRequestDispatcher("book.jsp").forward(req, resp);
        }
    }

    private void delBk(HttpServletRequest req, HttpServletResponse resp) throws IOException, SQLException {
        String id = req.getParameter("id");
        String sql = "delete from book where id = " + id;
        PrintWriter out = resp.getWriter();
        if (cs.updateBk(sql)) {
            out.println(id + "号图书删除成功");
            resp.sendRedirect("/BkController");
        } else {

            out.println(sql);
            out.println(id + "号图书删除失败");
        }
    }

    private void updBK(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {

        //获取表单中的数据
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String fromPlace = req.getParameter("fromPlace");
        String author = req.getParameter("author");
        //创建一个操作数据库的对象
        ConnSQL cs = new ConnSQL();
        //组装SQL语句
        String sql = "update book set name='" + name + "',fromPlace='" + fromPlace + "',author='" + author + "' where id=" + id;
        if (cs.updateBk(sql)) {
            resp.sendRedirect("/BkController");
        } else {
            req.getRequestDispatcher("updateBook.jsp").forward(req, resp);
        }
    }

    private void searchBk(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {

        String name = req.getParameter("name");
        String sql = null;
        if (name == null) {
            sql = "select * from book";
        } else {
            sql = "select * from book where name like '%" + name + "%'";
        }
        List<Book> lb = cs.getBk(sql);
        req.getSession().setAttribute("lb", lb);
        resp.sendRedirect("book.jsp");
    }
}

