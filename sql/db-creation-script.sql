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
  id BIGINT not null,
  specialization_id BIGINT,
  FOREIGN KEY (id) REFERENCES USERS,
  FOREIGN KEY (specialization_id) REFERENCES SPECIALIZATION
);

CREATE TABLE MEDICAL_APPOINTMENT (
  appointment_id BIGINT not null primary key
  GENERATED ALWAYS AS IDENTITY
  (START WITH 1, INCREMENT BY 1),
  DATE_APPOINTMENT DATE,
  ID BIGINT,
  FOREIGN KEY(ID) REFERENCES USERS
);

CREATE TABLE SPECIALIZATION ( 
  specialization_id BIGINT not null primary key 
  GENERATED ALWAYS AS IDENTITY 
  (START WITH 1, INCREMENT BY 1),  
  DESCRIPTION VARCHAR(100) 
); 