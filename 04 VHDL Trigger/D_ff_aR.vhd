library IEEE;
use IEEE.std_logic_1164.all;
entity D_ff_aR is
port (D: in STD_LOGIC;
C: in STD_LOGIC;
R: in STD_LOGIC;
Q: out STD_LOGIC);
end D_ff_aR;
architecture D_ff_aR of D_ff_aR is
begin
process (C, R)
begin
if R='1' then --асинхроний сброс в 0

Q <= '0';

elsif (C'event and C='1') then --синхроний запис Q за переднім фронту
- передній фронт описаний за допомогою атрибута event (подія) і C = '1'
Q <= D;
end if;
end process;
end D_ff_aR;