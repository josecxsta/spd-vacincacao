package database;

import resource.Vacina;

public class VacinaDao extends GenericDao<Vacina, Long> {
    public VacinaDao() {
        super(Vacina.class);
    }
}
