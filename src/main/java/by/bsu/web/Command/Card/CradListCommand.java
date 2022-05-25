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
        String cardNumber=req.getParameter("cardnumber");
        String  cardName = req.getParameter("cardName");
        String  isadmin = req.getParameter("isadmin");
        System.out.println("cardName:"+cardName);
        System.out.println("isadmin:"+isadmin);
        System.out.println("cardNumber:"+cardNumber);
        if(isadmin.equals("1")){
            if(cardNumber==null){
                System.out.println("11");
                List<Card> cards =dao.findAll();
                req.setAttribute("cards",cards);
            }
            else {
                List<Card> cards =dao.findAllBy(cardNumber);
                req.setAttribute("cards",cards);
            }
        }
        else if(isadmin.equals("0")){
            if(cardNumber==null){
                System.out.println("33");
                List<Card> cards =dao.findAllByName(cardName);
                req.setAttribute("cards",cards);
            }
            else {
                List<Card> cards =dao.findAllByNameIsadmin(cardNumber,cardName);
                req.setAttribute("cards",cards);
            }
        }


        return "WEB-INF/jsp/card-list.jsp";
    }
}
