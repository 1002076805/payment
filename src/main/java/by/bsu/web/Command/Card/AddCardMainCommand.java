package by.bsu.web.Command.Card;

import by.bsu.web.util.Command;
import by.bsu.web.entity.Card;
import by.bsu.web.dao.CardDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class AddCardMainCommand implements Command {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ClassNotFoundException, ServletException, IOException {
        CardDao dao =new CardDao();
        String cardnumber=req.getParameter("cardnumber");
        String password=req.getParameter("password");
        String name=req.getParameter("name");
        String tel=req.getParameter("tel");
        String email=req.getParameter("email");
        Card card =new Card(null,cardnumber,password,name,tel,email);
        dao.save(card);
        req.setAttribute("message", "Update Success");
        req.getRequestDispatcher("controller?command=Main").forward(req, resp);
        return null;
    }
}
