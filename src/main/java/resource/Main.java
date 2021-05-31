package resource;

import database.FabricaDeConexao;
import database.UsuarioDao;

import javax.persistence.EntityManager;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        System.out.println('1');

        EntityManager entityManager = FabricaDeConexao.obterGerenciadorDeEntidades();

        Vacina vacina = new Vacina();
        vacina.setTitulo("Coronavac");

        Usuario u1 = new Usuario();

        Alergia a2 = new Alergia();

        u1.setNome("Zé");

        a2.setNome("AS");

        u1.alergias.add(a2);



        entityManager.getTransaction().begin();
        entityManager.persist(a2);
        entityManager.persist(u1);
        entityManager.getTransaction().commit();

        entityManager.close();


        UsuarioDao ud = new UsuarioDao();
        List<Usuario> usuarios =  ud.getList();

        for (Usuario user: usuarios) {
            System.out.println(user.getNome());
        }


    }
}
