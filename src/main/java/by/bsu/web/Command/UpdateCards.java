package by.bsu.web.Command;

import by.bsu.web.dao.CardDao;
import by.bsu.web.entity.Card;
import by.bsu.web.entity.Payment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;


public class UpdateCards implements Command{

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, ClassNotFoundException {
        int id=Integer.parseInt(req.getParameter("id"));
        System.out.println(id);
        CardDao dao = new CardDao();
        Card card = dao.findById(id);
        req.setAttribute("card",card);
        return "WEB-INF/jsp/updateCards.jsp";
    }
}
