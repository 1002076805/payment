package by.bsu.web.Command.Balance;

import by.bsu.web.util.Command;
import by.bsu.web.dao.BalanceDao;
import by.bsu.web.entity.Balance;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class BalanceListCommand implements Command {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ClassNotFoundException {
        BalanceDao dao = new BalanceDao();
        String cardNumber=req.getParameter("cardnumber");
        String balance=req.getParameter("balance");
        String isAdmin = req.getParameter("isadmin");
        String balanceName = req.getParameter("balanceName");
        if(isAdmin.equals("1")){
            if(cardNumber==null||balance ==null){
                List<Balance> balances =dao.findAll();
                req.setAttribute("balances",balances);
            }
            else {
                List<Balance> balances =dao.findByNumber(cardNumber,balance);
                req.setAttribute("balances",balances);
            }
        }
        else if(isAdmin.equals("0")){
            if(cardNumber==null||balance ==null){
                List<Balance> balances =dao.findAllByUser(balanceName);
                req.setAttribute("balances",balances);
            }
            else {
                List<Balance> balances =dao.findByNumberUser(cardNumber,balance,balanceName);
                req.setAttribute("balances",balances);
            }
        }


        return "WEB-INF/jsp/balance-list.jsp";
    }
}
