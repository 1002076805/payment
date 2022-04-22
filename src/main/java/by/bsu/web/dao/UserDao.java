package by.bsu.web.dao;


import by.bsu.web.entity.Card;
import by.bsu.web.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public void register(User register) throws SQLException, ClassNotFoundException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("insert into user_info(NAME,ACOUNT_ID,PASSWORD,ID_NUMBER,GENDER,TELEPHONE,ADDRESS,isadmin) VALUES(?,?,?,?,?,?,?,0)");
        statement.setString(1,register.getName());
        statement.setString(2,register.getAccount());
        statement.setString(3,register.getPassword());
        statement.setString(4,register.getIdNumber());
        statement.setString(5,register.getGender());
        statement.setString(6,register.getTel());
        statement.setString(7,register.getAddress());
        statement.executeUpdate();
    }

    public User login(String account, String password) throws SQLException, ClassNotFoundException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();

        PreparedStatement statement = connection.prepareStatement("select * from user_info  where ACOUNT_ID =? and PASSWORD =?"  ) ;
        statement.setString(1,account);
        statement.setString(2,password);
        ResultSet resultSet = statement.executeQuery();
        if(resultSet.next()){
            return new User(resultSet.getInt("id"),
                    resultSet.getInt("isadmin"),
                    resultSet.getString("NAME"),
                    resultSet.getString("ACOUNT_ID"),
                    resultSet.getString("PASSWORD"),
                    resultSet.getString("ID_NUMBER"),
                    resultSet.getString("GENDER"),
                    resultSet.getString("TELEPHONE"),
                    resultSet.getString("ADDRESS"));
        }
        return  null;

    }

    public List<User> findAll() throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select * from user_info ORDER BY isAdmin desc");
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }


    public List<User> map(ResultSet resultSet) throws SQLException {
        List<User> users = new ArrayList<>();
        while (resultSet.next()) {
            Integer id = resultSet.getInt("id");
            Integer isadmin = resultSet.getInt("isadmin");
            String account = resultSet.getString("ACOUNT_ID");
            String name = resultSet.getString("name");
            String password = resultSet.getString("password");
            String idNumber = resultSet.getString("ID_NUMBER");
            String gender = resultSet.getString("gender");
            String tel = resultSet.getString("TELEPHONE");
            String address = resultSet.getString("address");
            User user = new User(id,isadmin,account,name,password,idNumber,gender,tel,address);
            users.add(user);
        }
        return users;
    }
}
