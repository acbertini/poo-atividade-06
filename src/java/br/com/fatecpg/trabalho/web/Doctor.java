package br.com.fatecpg.trabalho.web;

import java.util.ArrayList;

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

    public static ArrayList<Doctor> getDoctors() throws Exception {
        String SQL = "SELECT * FROM DOCTOR";
        ArrayList<Doctor> doctors = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, new Object[]{});
        for (int i = 0; i < list.size(); i++) {
            Object row[] = list.get(i);
            Doctor doc = new Doctor(
                    (long) row[0],
                    (String) row[1],
                    (int) row[2]);
            doctors.add(doc);
        }
        return doctors;
    }

    public static void addDoctor(String name, int specialization) throws Exception {
        String SQL = "INSERT INTO DOCTOR VALUES (default, ?, ?)";
        Object[] parameters = {name, specialization};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static void removeDoctor(long id) throws Exception {
        String SQL = "DELETE FROM DOCTOR WHERE ID=?";
        Object[] parameters = {id};
        DatabaseConnector.execute(SQL, parameters);
    }
}
