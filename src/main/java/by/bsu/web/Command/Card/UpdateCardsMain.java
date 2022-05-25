package by.bsu.web.Command.Card;

import by.bsu.web.util.Command;
import by.bsu.web.dao.CardDao;
import by.bsu.web.entity.Card;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


public class UpdateCardsMain implements Command {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, ClassNotFoundException, ServletException, IOException {

        CardDao dao =new CardDao();
        String id2 = req.getParameter("id");
        int id = Integer.parseInt(id2);
        String cardnumber = req.getParameter("cardnumber");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String tel = req.getParameter("tel");
        String email = req.getParameter("email");
        Card card =new Card(id,cardnumber,password,name,tel,email);
        dao.updateCard(card);
        List<Card> cards =dao.findAll();
        req.setAttribute("cards",cards);
        req.getRequestDispatcher("controller?command=Main").forward(req, resp);
        return null;
    }
}
