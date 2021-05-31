package database;

import resource.Agenda;
import resource.Usuario;

public class AgendaDao extends GenericDao<Agenda, Long> {
    public AgendaDao() {
        super(Agenda.class);
    }
}