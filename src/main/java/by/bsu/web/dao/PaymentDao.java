package by.bsu.web.dao;

import by.bsu.web.entity.Payment;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

public class PaymentDao {

    public  Payment findById(int id) throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        try(Connection connection =factory.create()) {
            PreparedStatement statement = connection.prepareStatement("select id,name from post where id =?");
            ResultSet resultSet = statement.executeQuery();
            List<Payment> payment = map(resultSet);
            return  payment.size() == 1? payment.get(0):null;
        }
    }


    public  List<Payment> findAll() throws SQLException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("select id,name from post");
        ResultSet resultSet = statement.executeQuery();
        return  map(resultSet);

    }


    public List<Payment> map(ResultSet resultSet) throws SQLException {
        List<Payment> payments = new ArrayList<>();
        while (resultSet.next()) {
            Integer id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            Payment payment = new Payment(id, name);
            payments.add(payment);
        }
        return payments;
    }

    public void save(Payment book) throws SQLException, ClassNotFoundException {
        ConnectionFactory factory =new ConnectionFactory();
        Connection connection =factory.create();
        PreparedStatement statement = connection.prepareStatement("insert into post(name) values (?) ");
        statement.setString(1,book.getName());
        statement.executeUpdate();
    }
}
