package dao;

import com.mysql.jdbc.Statement;
import entity.ProductEntity;
import util.Jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {
    ResultSet rs = null;
    ArrayList<ProductEntity> products = new ArrayList<ProductEntity>();
    public ArrayList<ProductEntity> getProductPic(int id) throws SQLException, ClassNotFoundException {
        Connection conn = Jdbc.connect();
        PreparedStatement state = null;
        state = conn.prepareStatement("SELECT * FROM product WHERE `type`=?");
        state.setInt(1,id);
        rs = state.executeQuery();
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
