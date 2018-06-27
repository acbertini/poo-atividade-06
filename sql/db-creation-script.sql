CREATE TABLE users(
    id BIGINT not null primary key
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1)
    , role varchar(200) not null
    , name varchar(200) not null
    , login varchar(20) not null
    , passwordHash BIGINT not null
);

CREATE TABLE MEDICAL_APPOINTMENT (
  appointment_id BIGINT not null primary key
  GENERATED ALWAYS AS IDENTITY
  (START WITH 1, INCREMENT BY 1),
  DATE_APPOINTMENT DATE,
  ID BIGINT,
  FOREIGN KEY(ID) REFERENCES USERS
);