package by.bsu.web.Command.Card;

import by.bsu.web.util.Command;
import by.bsu.web.dao.CardDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


public class DeleteRecord implements Command {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, ClassNotFoundException, ServletException, IOException {
        String id2 = req.getParameter("id");
        int id = Integer.parseInt(id2);
        CardDao dao = new CardDao();
        dao.deleteRecord(id);
        req.setAttribute("message", "delete Success");
        req.getRequestDispatcher("controller?command=Main").forward(req, resp);
        return null;
    }
}
