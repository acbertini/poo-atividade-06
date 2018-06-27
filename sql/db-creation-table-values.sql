INSERT INTO users VALUES
    (default, 'admin', 'Administrator', 'admin2', 1509442), 
    (default, 'pacient', 'Julinho', 'paciente', 1509442),
    (default, 'medico', 'Dr Medico 1', 'medico1', 1509442),
    (default, 'medico', 'Dr Medico 2', 'medico2', 1509442),
    (default, 'medico', 'Dr Medico 3', 'medico3', 1509442),
    (default, 'medico', 'Dr Medico 4', 'medico4', 1509442),
    (default, 'medico', 'Dr Medico 5', 'medico5', 1509442),
    (default, 'medico', 'Dr Medico 6', 'medico6', 1509442);


INSERT INTO SPECIALIZATION VALUES
    (default, 'Cardiologia'),
    (default, 'Clínica Geral'),
    (default, 'Dermatologia'),
    (default, 'Pediatria'),
    (default, 'Neurologia'),
    (default, 'Nutriconista');

INSERT INTO DOCTOR VALUES
    (3,1),
    (4,3),
    (5,1),
    (6,4),
    (7,5),
    (8,2),
    (9,1);

INSERT INTO MEDICAL_APPOINTMENT VALUES
    (default, CURRENT_DATE, 2);

