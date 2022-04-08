package by.bsu.web.Command;

import by.bsu.web.entity.Payment;
import by.bsu.web.dao.PaymentDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

public class AddPostMainCommand implements Command{
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ClassNotFoundException {
        PaymentDao dao =new PaymentDao();
        String name=req.getParameter("name");
        Payment book =new Payment(null,name);
        dao.save(book);
        return "WEB-INF/jsp/main.jsp";
    }
}
