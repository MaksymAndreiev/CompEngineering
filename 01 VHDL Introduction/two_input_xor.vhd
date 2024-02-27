library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity two_input_xor is
    Port ( a0, a1, a2 : in STD_LOGIC;
           o1, o2 : out STD_LOGIC);
end two_input_xor;

architecture Behavioral of two_input_xor is
    signal temp : STD_LOGIC;
begin
    -- Опис логічної функції
    process (a0, a1, a2)
    begin
        temp <= (a1 and a2) xor a0;
        o1 <= not (a1 and a2) and temp;
        o2 <= (a1 and a2) and temp;
    end process;

end Behavioral;
