package by.bsu.web.Command;

import by.bsu.web.dao.UserDao;

import by.bsu.web.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

public class RegisterMain implements Command{
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ClassNotFoundException {
        UserDao dao = new UserDao();
        int isadmin =0;
        String name=req.getParameter("username");
        String account=req.getParameter("account");
        String password=req.getParameter("password");
        String idNumber=req.getParameter("idNumber");
        String gender=req.getParameter("gender");
        String tel=req.getParameter("tel");
        String address=req.getParameter("address");
        User user = new User(null,isadmin,account,name,password,idNumber,gender,tel,address);
        dao.register(user);
        return "index.jsp";
    }
}