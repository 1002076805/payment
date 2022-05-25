package by.bsu.web.Command.User;

import by.bsu.web.entity.Card;
import by.bsu.web.util.Command;
import by.bsu.web.dao.UserDao;
import by.bsu.web.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class UserListCommand implements Command {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ClassNotFoundException {
        UserDao dao = new UserDao();
        String account=req.getParameter("account");
        String isadmin=req.getParameter("isadmin");
        if(account==null&&isadmin==null){
            List<User> users =dao.findAll();
            req.setAttribute("users",users);
        }
        else if(isadmin.equals("2") ){
            List<User> users =dao.findAll();
            req.setAttribute("users",users);
        }
        else {
            List<User> users =dao.findAllBy(account,isadmin);
            req.setAttribute("users",users);
        }
        return "WEB-INF/jsp/user-list.jsp";
    }
}
