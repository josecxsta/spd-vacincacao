package servelet;

import database.AlergiaDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Alergia", value = "/Alergia")
public class Alergia extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("alergia");

        resource.Alergia alergia = new resource.Alergia();
        alergia.setNome(nome);

        AlergiaDao ad = new AlergiaDao();
        ad.salvar(alergia);

        RequestDispatcher rd = request.getRequestDispatcher("/");
        rd.forward(request, response);
    }
}
