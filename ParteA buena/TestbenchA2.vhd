architecture behavior of combinacional is
component combinacional
port( sw1,sw2 : in std_logic;
led :out std_logic);
end component;
signal sw1t : std_logic :='0';
signal sw2t : std_logic :='0';
signal ledt : std_logic;
begin 
uut: combinacional port map (sw1 => sw1t,
sw2  => sw2t,
led => ledt);
estimulos:process 
begin 
sw1t <= '0' ; sw2t <= '0'; wait for 10ns;
sw1t <= '0' ; sw2t <= '1'; wait for 10ns;
sw1t <= '1' ; sw2t <= '0'; wait for 10ns;
sw1t <= '1' ; sw2t <= '1'; wait for 10ns;
wait;
end process;
END;