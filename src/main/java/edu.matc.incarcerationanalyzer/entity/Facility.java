package edu.matc.incarcerationanalyzer.entity;

import javax.persistence.*;

@Entity
@Table(name="facility")
public class Facility {
    private int facilityid;
    private String name;
    private Integer population;
    private Agepop agepop;
    private Ethnicitypop ethnicitypop;

    @Id
    @Column(name = "facilityid", nullable = false)
    public int getFacilityid() {
        return facilityid;
    }

    public void setFacilityid(int facilityid) {
        this.facilityid = facilityid;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 30)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "population", nullable = true)
    public Integer getPopulation() {
        return population;
    }

    public void setPopulation(Integer population) {
        this.population = population;
    }

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "facility", cascade = CascadeType.ALL)
    public Agepop getAgepop() {
        return this.agepop;
    }

    public void setAgepop(Agepop agepop) {
        this.agepop = agepop;
    }

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "facility", cascade = CascadeType.ALL)
    public Ethnicitypop getEthnicitypop() {
        return this.ethnicitypop;
    }

    public void setEthnicitypop(Ethnicitypop ethnicitypop) {
        this.ethnicitypop = ethnicitypop;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Facility facility = (Facility) o;

        if (facilityid != facility.facilityid) return false;
        if (name != null ? !name.equals(facility.name) : facility.name != null) return false;
        if (population != null ? !population.equals(facility.population) : facility.population != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = facilityid;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (population != null ? population.hashCode() : 0);
        return result;
    }
}