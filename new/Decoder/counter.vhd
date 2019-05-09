ENTITY counter IS
	PORT(count : IN BIT;
			msg_rdy : OUT BIT);
END counter;

ARCHITECTURE proc OF counter IS
  type states is ('0', '1', '2', '3');
  signal curr_state : states; --next_state : states;
BEGIN
  process (count)
  BEGIN
    --if rst = '1' then
     -- curr_state <= '0';
      --next_state <= '0';
    --else
      if (count'event and count = '1') then
        case curr_state is
          when '0' => curr_state <= '1';
          when '1' => curr_state <= '2';
          when '2' => curr_state <= '3';
          when '3' => curr_state <= '1';
        end case;
      --elsif (count'event and count = '0') then
        --curr_state <= next_state;
      end if;
   -- end if;
  END PROCESS;
  msg_rdy <= '1' when curr_state = '3' else
             '0';
END architecture;
