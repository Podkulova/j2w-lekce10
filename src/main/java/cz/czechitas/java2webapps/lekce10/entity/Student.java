package cz.czechitas.java2webapps.lekce10.entity;

import jakarta.persistence.*;

import java.util.List;

/**
 *
 */
@Entity
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String jmeno;
    private String prijmeni;

    @ManyToOne
    private Trida trida;
    @ManyToMany(mappedBy = "deti")
    @OrderBy("prijmeni, jmeno")
    private List<Rodic> rodice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public Trida getTrida() {
        return trida;
    }

    public void setTrida(Trida trida) {
        this.trida = trida;
    }

    public List<Rodic> getRodice() {
        return rodice;
    }

    public void setRodice(List<Rodic> rodice) {
        this.rodice = rodice;
    }

    public String getCeleJmeno() {
        return jmeno + " " + prijmeni;
    }

    @Override
    public String toString() {
        return String.format("%s %s [%d]", jmeno, prijmeni, id);
    }
}
