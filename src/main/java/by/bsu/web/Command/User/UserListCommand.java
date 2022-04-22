package by.bsu.web.Command.User;

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
        List<User> users =dao.findAll();
        req.setAttribute("users",users);
        return "WEB-INF/jsp/user-list.jsp";
    }
}
