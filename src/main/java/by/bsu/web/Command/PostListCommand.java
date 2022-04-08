package by.bsu.web.Command;

import by.bsu.web.entity.Payment;
import by.bsu.web.dao.PaymentDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public class PostListCommand implements Command{
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ClassNotFoundException {
        PaymentDao dao = new PaymentDao();
        List<Payment> payments =dao.findAll();
        req.setAttribute("payments",payments);
        return "WEB-INF/jsp/payment-list.jsp";
    }
}
