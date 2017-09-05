package dao;

import com.mysql.jdbc.Statement;
import entity.ProductEntity;
import util.Jdbc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {
    ResultSet rs = null;
    ArrayList<ProductEntity> products = new ArrayList<ProductEntity>();
    public ArrayList<ProductEntity> getProductPic(String id) throws SQLException, ClassNotFoundException {
        Connection conn = Jdbc.connect();
        Statement state = null;
        state = (Statement) conn.createStatement();
        rs = state.executeQuery("SELECT * FROM product");
        while (rs.next()) {
            ProductEntity product = new ProductEntity();
            product.setId(rs.getString("id"));
            product.setImg(rs.getString("img"));
            products.add(product);
        }
        rs.close();
        Jdbc.close(state,conn);
        return products;
    }
}
