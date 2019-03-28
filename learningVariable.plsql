DECLARE 

	studentID CONSTANT integer  := 932899
	addr students.address%type;

BEGIN 

	INSERT INTO STUDENTS (ID, ADDRESS) VALUES (studentID, addr);

	SELECT address
	FROM students
	WHERE id = studentID
	dbms_output.put_line
	( 'Student’s address is: ' || addr );

END;
