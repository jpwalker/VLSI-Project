


ARCHITECTURE count OF counter IS
BEGIN
	PROCESS(data_pass)
	VARIABLE msg: natural :=0;
	BEGIN
		IF (data_pass = '1') THEN
		msg := msg+1;
		ELSE NULL;
		END IF;
		
		IF (msg = 0) THEN
		msg_rdy <='0';
		ELSIF (msg = 4) THEN
	   msg_rdy <='1';
		msg := 0;
		ELSE NULL;
		END IF;		
	END PROCESS;
END count;