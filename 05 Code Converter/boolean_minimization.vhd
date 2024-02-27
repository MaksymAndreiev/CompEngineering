library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity boolean_minimization is
    Port ( x1, x2, x3, x4 : in STD_LOGIC;
           y : out STD_LOGIC);
end boolean_minimization;

architecture Behavioral of boolean_minimization is
begin
    -- Опис логічної функції по МДНФ
    process (x1, x2, x3, x4)
    begin
        y <= (x1 and not x2 and x3 and x4) or (not x1 and x2 and not x3 and x4);
    end process;

end Behavioral;
