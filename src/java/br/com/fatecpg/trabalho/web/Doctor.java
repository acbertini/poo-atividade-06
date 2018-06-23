package br.com.fatecpg.trabalho.web;

public class Doctor {
    private long id;
    private String name;
    private long specialization_id;

    public Doctor(long id, String name, long specialization_id) {
        this.id = id;
        this.name = name;
        this.specialization_id = specialization_id;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getSpecialization_id() {
        return specialization_id;
    }

    public void setSpecialization_id(long specialization_id) {
        this.specialization_id = specialization_id;
    }
    
    
}
