package database;

import resource.Alergia;

public class AlergiaDao extends GenericDao<Alergia, Long> {
    public AlergiaDao() {
        super(Alergia.class);
    }
}
