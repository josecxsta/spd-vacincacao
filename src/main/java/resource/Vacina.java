package resource;

import javax.persistence.*;
import java.util.Set;

enum Periodicidade{

    dia("dia"), semanas("semanas"), meses("meses"), anos("anos");

    private String label;

    private Periodicidade(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}

@Entity
@Table(name = "vacinas")
@Embeddable
public class Vacina {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    @Column(name = "titulo")
    String titulo;

    @Column(name = "descricao")
    String descricao;

    @Column(name = "doses")
    int doses;

    public int getDoses() {
        return doses;
    }

    public void setDoses(int doses) {
        this.doses = doses;
    }

    public Periodicidade getPeriodicidade() {
        return periodicidade;
    }

    public void setPeriodicidade(Periodicidade periodicidade) {
        this.periodicidade = periodicidade;
    }

    public Set<Agenda> getAgendas() {
        return agendas;
    }

    public void setAgendas(Set<Agenda> agendas) {
        this.agendas = agendas;
    }

    @Column(name = "periodicidade")
    @Enumerated(EnumType.STRING)
    Periodicidade periodicidade;

    @Column(name = "intervalo")
    int intervalo;

    @OneToMany(mappedBy="vacina")
    private Set<Agenda> agendas;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getIntervalo() {
        return intervalo;
    }

    public void setIntervalo(int intervalo) {
        this.intervalo = intervalo;
    }

}
