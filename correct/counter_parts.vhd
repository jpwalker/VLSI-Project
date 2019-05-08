PACKAGE CounterParts IS
	COMPONENT counter IS
	PORT(data_pass : IN BIT;
			msg_rdy : OUT BIT);
	END COMPONENT;

END PACKAGE;