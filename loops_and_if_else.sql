DECLARE 

  i number (0)
  j number (2)
  
 BEGIN 
    FOR i IN 1..4 LOOP
      FOR j IN 1..4 LOOP 
        i := i + j
        IF i = 8 THEN 
          dbms_output.put_line(' i is equal to: ' || i)
      END loop inner_loop
    END loop outer_loop
 END;
