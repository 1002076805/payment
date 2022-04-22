package by.bsu.web.Command.Card;

import by.bsu.web.util.Command;
import by.bsu.web.entity.Card;
import by.bsu.web.dao.CardDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class CradListCommand implements Command {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ClassNotFoundException {
        CardDao dao = new CardDao();
        List<Card> cards =dao.findAll();
        req.setAttribute("cards",cards);
        return "WEB-INF/jsp/payment-list.jsp";
    }
}
