library IEEE;
use IEEE.std_logic_1164.all;
entity JK_tr is
port (J, K, C, R: in STD_LOGIC;
Q: out STD_LOGIC);
end JK_tr;
architecture JK_tr of JK_tr is
begin
process(C, R) is
variable Qint: STD_LOGIC;
begin
if (rising_edge(C)) then --синхроний записс Qint по задньому фронту
if (R ='0') then Qint:='0'; --асинхроний сброс в 0 (R - інверсний)
elsif (J='1' and K='1') then Qint := not(Qint);
elsif (J='0' and K='0') then Qint:=Qint;
elsif (J='1' and K='0') then Qint:='1';
elsif (J='0' and K='1') then Qint:='0';
end if;
- передній фронт описаний за допомогою функції rising_edge (C)
end if;
Q<=Qint;
end process;
end JK_tr;