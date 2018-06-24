CREATE TABLE users(
    id BIGINT not null primary key
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1)
    , role varchar(200) not null
    , name varchar(200) not null
    , login varchar(20) not null
    , passwordHash BIGINT not null
);

CREATE TABLE DOCTOR (
  doctor_id BIGINT not null primary key
  GENERATED ALWAYS AS IDENTITY
  (START WITH 1, INCREMENT BY 1),
  NAME VARCHAR(200) NOT NULL,
  specialization_id BIGINT,
  FOREIGN KEY (specialization_id) REFERENCES SPECIALIZATION
);

CREATE TABLE MEDICAL_APPOINTMENT (
  appointment_id BIGINT not null primary key
  GENERATED ALWAYS AS IDENTITY
  (START WITH 1, INCREMENT BY 1),
  DATE_APPOINTMENT DATE,
  DOCTOR_ID BIGINT,
  ID BIGINT,
  FOREIGN KEY(DOCTOR_ID) REFERENCES DOCTOR,
  FOREIGN KEY(ID) REFERENCES USERS
);


