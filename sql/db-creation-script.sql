CREATE TABLE users(
    id BIGINT not null primary key
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1)
    , role varchar(200) not null
    , name varchar(200) not null
    , login varchar(20) not null
    , passwordHash BIGINT not null
);
INSERT INTO users VALUES
    (default, 'ADMIN', 'Admin', 'admin', 1509442);