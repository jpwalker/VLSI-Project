ENTITY counter IS
	PORT(data_pass : IN BIT;
			msg_rdy : OUT BIT);
END counter;

ARCHITECTURE count OF counter IS
BEGIN
	PROCESS(data_pass)
	VARIABLE msg: integer :=0;
	BEGIN
		IF msg = 0
		THEN msg_rdy <='0';
		END IF;
			IF (data_pass = '1')
			THEN
			msg := msg+1;
			ELSE NULL;
			END IF;
		IF msg = 4
		THEN
	   msg_rdy <='1';
		msg := 0;
		END IF;		
	END PROCESS;
END count;
