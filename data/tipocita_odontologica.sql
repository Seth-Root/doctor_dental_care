INSERT INTO doctor_appointment_type	
    (create_date, write_date, duration, name)
SELECT now(), now(), 15, 'Odontológica'
WHERE
    NOT EXISTS (
        SELECT name FROM doctor_appointment_type WHERE name='Odontológica'
    );