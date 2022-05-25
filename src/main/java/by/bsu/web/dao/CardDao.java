package by.bsu.web.dao;

import by.bsu.web.entity.Card;
import by.bsu.web.util.ConnectionFactory;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

public class CardDao {

    public  Card findById(Integer id) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        try(Connection connection =factory.create()) {
            PreparedStatement statement = connection.prepareStatement("select * from account_info where id =? ");
            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();
            List<Card> cards = map(resultSet);
           return  cards.size()==1 ? cards.get(0):null;
        }
    }


    public  List<Card> findAllBy(String cardNumber) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select * from account_info where cardnumber like '%"+cardNumber+"%'");
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }

    public  List<Card> findAllByNameIsadmin(String cardNumber,String cardName) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select * from account_info where cardnumber like '%"+cardNumber+"%' and NAME = ?");
        statement.setString(1,cardName);
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }

    public  List<Card> findAll() throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select * from account_info ");
        ResultSet resultSet = statement.executeQuery();
        System.out.println("222");
        return  map(resultSet);

    }

    public  List<Card> findAllByName(String cardName) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select * from account_info where NAME = ?");
        statement.setString(1,cardName);
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }


    public List<Card> map(ResultSet resultSet) throws SQLException {
        List<Card> cards = new ArrayList<>();
        while (resultSet.next()) {
            Integer id = resultSet.getInt("id");
            String cardnumber = resultSet.getString("cardnumber");
            String name = resultSet.getString("name");
            String tel = resultSet.getString("tel");
            String email = resultSet.getString("email");
            String password = resultSet.getString("password");
            Card card = new Card(id,cardnumber,password,name,tel,email);
            cards.add(card);
        }
        return cards;
    }

    public void save(Card card) throws SQLException, ClassNotFoundException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("insert into account_info(cardnumber,password,name,tel,email) values (?,?,?,?,?) ");
        statement.setString(1,card.getCardnumber());
        statement.setString(2,card.getPassword());
        statement.setString(3,card.getName());
        statement.setString(4,card.getTel());
        statement.setString(5,card.getEmail());
        statement.executeUpdate();
    }

    public void deleteRecord(Integer id) throws SQLException, ClassNotFoundException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("delete   from account_info where id =?");
        statement.setInt(1,id);
        statement.executeUpdate();
    }

    public void updateCard(Card card) throws SQLException, ClassNotFoundException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("update account_info set password = ?,name =?,tel =?,EMAIL =?,cardnumber=? where id =?");
        statement.setString(1,card.getPassword());
        statement.setString(2,card.getName());
        statement.setString(3,card.getTel());
        statement.setString(4,card.getEmail());
        statement.setString(5,card.getCardnumber());
        statement.setInt(6,card.getId());
        statement.executeUpdate();
    }

}
