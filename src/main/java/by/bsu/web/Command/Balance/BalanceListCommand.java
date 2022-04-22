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
        List<Balance> balances =dao.findAll();
        req.setAttribute("balances",balances);
        return "WEB-INF/jsp/balance-list.jsp";
    }
}