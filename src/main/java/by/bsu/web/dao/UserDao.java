package by.bsu.web.dao;


import by.bsu.web.entity.Card;
import by.bsu.web.entity.User;
import by.bsu.web.util.ConnectionFactory;

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
                    resultSet.getString("name"),
                    resultSet.getString("ACOUNT_ID"),
                    resultSet.getString("PASSWORD"),
                    resultSet.getString("ID_NUMBER"),
                    resultSet.getString("GENDER"),
                    resultSet.getString("TELEPHONE"),
                    resultSet.getString("ADDRESS"),
                    resultSet.getInt("isadmin"));
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

    public List<User> findAllBy(String account,String isadmin) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select * from user_info where ACOUNT_ID like '%"+account+"%' and isAdmin like '%"+isadmin+"%' ORDER BY isAdmin desc");
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }


    public List<User> map(ResultSet resultSet) throws SQLException {
        List<User> users = new ArrayList<>();
        while (resultSet.next()) {
            Integer id = resultSet.getInt("id");
            String account = resultSet.getString("ACOUNT_ID");
            String name = resultSet.getString("name");
            String password = resultSet.getString("password");
            String idNumber = resultSet.getString("ID_NUMBER");
            String gender = resultSet.getString("gender");
            String tel = resultSet.getString("TELEPHONE");
            String address = resultSet.getString("address");
            Integer isadmin = resultSet.getInt("isadmin");
            User user = new User(id,account,name,password,idNumber,gender,tel,address,isadmin);
            users.add(user);
        }
        return users;
    }

    public User findById(Integer id) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        try(Connection connection =factory.create()) {
            PreparedStatement statement = connection.prepareStatement("select * from user_info where id =? ");
            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();
            List<User> users = map(resultSet);
            return  users.size()==1 ? users.get(0):null;
        }
    }

    public void updateUser(User user) throws SQLException, ClassNotFoundException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("update user_info set name = ?,ACOUNT_ID =?,PASSWORD =?,ID_NUMBER =?,GENDER=? ,TELEPHONE =?,ADDRESS = ?,isadmin=? where id =?");
        statement.setString(1,user.getName());
        statement.setString(2,user.getAccount());
        statement.setString(3,user.getPassword());
        statement.setString(4,user.getIdNumber());
        statement.setString(5,user.getGender());
        statement.setString(6,user.getTel());
        statement.setString(7,user.getAddress());
        statement.setInt(8,user.getIsadmin());
        statement.setInt(9,user.getId());
        statement.executeUpdate();
    }

    public void deleteUser(Integer id) throws SQLException, ClassNotFoundException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("delete   from user_info where id =?");
        statement.setInt(1,id);
        statement.executeUpdate();
    }

}
