package database;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FabricaDeConexao {

    private static String config = "jdbc:mariadb://localhost:3306/vacinacao";
    private static String usuario = "root";
    //private static String senha = "";
    private static String senha = "abc1234";

    public static Connection obterConexao() throws SQLException {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            return DriverManager.getConnection(config, usuario, senha);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static EntityManager obterGerenciadorDeEntidades() {
        EntityManagerFactory entityManagerFactory
                = Persistence.createEntityManagerFactory("default");
        return entityManagerFactory.createEntityManager();
    }

}
