package dao;

import com.mysql.jdbc.Statement;
import entity.ProductEntity;
import util.Jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {
    public void savaProduct() throws SQLException, ClassNotFoundException {
        Connection conn = Jdbc.connect();
        Statement state = null;
        state = (Statement) conn.createStatement();
        state.executeQuery("insert into ");
    }
}
