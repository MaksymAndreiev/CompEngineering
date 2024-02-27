library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mdnf_implementation is
    Port ( x1, x2, x3, x4 : in STD_LOGIC;
           f : out STD_LOGIC);
end mdnf_implementation;

architecture Behavioral of mdnf_implementation is
begin
    -- Опис логічної функції по МДНФ
    process (x1, x2, x3, x4)
    begin
        f <= (not x2 and x4) or (not x2 and x3) or (not x1 and x2 and not x3) or (x1 and not x2);
    end process;

end Behavioral;
