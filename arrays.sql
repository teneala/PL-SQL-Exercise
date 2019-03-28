DECLARE

type namesArr IS VARRAY(3) OF VARCHAR2(10);
type grades IS VARRAY(3) OF INTEGER;

names namesArr;
marks grades;
total integer;

CURSOR s_students is 
SELECT name FROM STUDENTS;
type student_list is varray(4) of students.name%type;
name_list student_list := student_list();
counter integer := 0;

BEGIN
  names := namesArr('Teneala', 'Necole', 'Spencer')
  marks := grades('100', '99', '100')
  total := names.count;
  
  FOR i in 1..total LOOP
    dbms_output.put_line('Student: ' || names(i) || ' Marks: ' || marks(i));
  END LOOP;
  
  
  FOR j IN s_students LOOP
    counter := counter + 1;
    name_list.extend;
    name_list(counter) := j.name;
    dbms_output.putline('Student Name: ' || counter || name_list(counter));
 END LOOP; 
  
END;
