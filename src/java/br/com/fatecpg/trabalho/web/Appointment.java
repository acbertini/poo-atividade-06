package br.com.fatecpg.trabalho.web;

import java.sql.Date;
import java.util.ArrayList;

public class Appointment {

    private long id;
    private Date date_appointment;
    private long doctor_id;

    public Appointment(long id, Date date_appointment, long doctor_id) {
        this.id = id;
        this.date_appointment = date_appointment;
        this.doctor_id = doctor_id;
    }

    public Appointment(long id, Date date_appointment) {
        this.id = id;
        this.date_appointment = date_appointment;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getDate_appointment() {
        return date_appointment;
    }

    public void setDate_appointment(Date date_appointment) {
        this.date_appointment = date_appointment;
    }

    public long getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(long doctor_id) {
        this.doctor_id = doctor_id;
    }

    public static void addAvailableAppointment(Date date, long doctorID) throws Exception {
        String SQL = "INSERT INTO MEDICAL_APPOINTMENT VALUES(default, ?, ?)";
        Object[] parameters = {date, doctorID};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static void removeAppointment(long id) throws Exception {
        String SQL = "DELETE FROM MEDICAL_APPOINTMENT WHERE ID=?";
        Object[] parameters = {id};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static ArrayList<Appointment> getAllAppointments(long doctorID) throws Exception {
        String SQL = "SELECT M.APPOINTMENT_ID, M.DATE_APPOINTMENT, U.NAME\n"
                + "FROM MEDICAL_APPOINTMENT AS M, USERS AS U\n"
                + "WHERE M.ID = U.ID\n"
                + "AND M.ID ="+doctorID+"";
        ArrayList<Appointment> appointments = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, new Object[]{});
        for (int i = 0; i < list.size(); i++) {
            Object row[] = list.get(i);
            Appointment ap = new Appointment(
                    (long) row[0],
                    (Date) row[1]);
            appointments.add(ap);
        }
        return appointments;
    }

    public static ArrayList<Appointment> getTakenAppointments(long doctorID) throws Exception {
        String SQL = "SELECT * FROM MEDICAL_APPOINTMENT WHERE ID=" + doctorID + " ORDER BY DATE_APPOINTMENT ASC";
        ArrayList<Appointment> appointments = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, new Object[]{});
        for (int i = 0; i < list.size(); i++) {
            Object row[] = list.get(i);
            Appointment ap = new Appointment(
                    (long) row[0],
                    (Date) row[1],
                    (long) row[2]);
            appointments.add(ap);
        }
        return appointments;
    }
}
