package database;

import resource.Usuario;

public class UsuarioDao extends GenericDao<Usuario, Long> {
    public UsuarioDao() {
        super(Usuario.class);
    }
}
