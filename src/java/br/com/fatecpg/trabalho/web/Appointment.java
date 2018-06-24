package br.com.fatecpg.trabalho.web;

import java.sql.Date;
import java.util.ArrayList;

public class Appointment {
    private long id;
    private Date date_appointment;
    private long doctor_id;
    private long user_id;

    public Appointment(long id, Date date_appointment, long doctor_id, long user_id) {
        this.id = id;
        this.date_appointment = date_appointment;
        this.doctor_id = doctor_id;
        this.user_id = user_id;
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

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }
    
    public static ArrayList<Appointment> getAppointments() throws Exception{
        String SQL = "SELECT * FROM MEDICAL_APPOINTMENT";
        ArrayList<Appointment> appointments = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.getQuery(SQL, new Object[]{});
        for(int i=0; i<list.size(); i++){
            Object row[] = list.get(i);
            Appointment ap = new Appointment(
                    (long) row[0], 
                    (Date) row[1], 
                    (long) row[2], 
                    (long) row[3]);
            appointments.add(ap);
        }
        return appointments;
    }
   
}
