package by.bsu.web.Command.User;

import by.bsu.web.util.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;


public class Register implements Command {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, ClassNotFoundException {
        return "WEB-INF/jsp/register.jsp";
    }
}
