package by.bsu.web.dao;

import by.bsu.web.entity.Balance;
import by.bsu.web.entity.Card;
import by.bsu.web.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BalanceDao {

    public  List<Balance> findAll() throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select * from balance_info");
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }

    public  List<Balance> findAllByUser(String balanceName) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select * from balance_info where name = ?");
        statement.setString(1,balanceName);
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }

    public  List<Balance> findByNumber(String cardNumber,String balance) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        System.out.println(cardNumber);
        System.out.println(balance);
        PreparedStatement statement = connection.prepareStatement("select * from balance_info where cardnumber like '%"+cardNumber+"%' and balance like '%"+balance+"%'  ");
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }

    public  List<Balance> findByNumberUser(String cardNumber,String balance,String balanceName) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        System.out.println(cardNumber);
        System.out.println(balance);
        PreparedStatement statement = connection.prepareStatement("select * from balance_info where cardnumber like '%"+cardNumber+"%' and balance like '%"+balance+"%' and name =?");
        statement.setString(1,balanceName);
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }


    public List<Balance> map(ResultSet resultSet) throws SQLException {
        List<Balance> balances = new ArrayList<>();
        while (resultSet.next()) {
            Integer id = resultSet.getInt("id");
            String cardnumber = resultSet.getString("cardnumber");
            Double spend = resultSet.getDouble("spend");
            Double balance = resultSet.getDouble("balance");
            String time = resultSet.getString("time");
            String address = resultSet.getString("address");
            Balance balances2 = new Balance(id,cardnumber,spend,balance,time,address);
            balances.add(balances2);
        }
        return balances;
    }

}
