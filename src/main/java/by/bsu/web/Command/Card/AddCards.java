package by.bsu.web.Command.Card;

import by.bsu.web.util.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;


public class AddCards implements Command {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, ClassNotFoundException {
        return "WEB-INF/jsp/addCards.jsp";
    }
}
