package servelet;

import database.FabricaDeConexao;
import database.UsuarioDao;
import resource.Vacina;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Home")
public class Home extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EntityManager entityManager = FabricaDeConexao.obterGerenciadorDeEntidades();

        Vacina vacina = new Vacina();
        vacina.setTitulo("Coronavac");

        entityManager.getTransaction().begin();
        entityManager.persist(vacina);
        entityManager.getTransaction().commit();

        entityManager.close();
        

        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }
}
