library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_2_to_1 is
    Port ( A, B : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end mux_2_to_1;

architecture Behavioral of mux_2_to_1 is
begin
    process (A, B, S)
    begin
        if S = '0' then
            Y <= A;
        else
            Y <= B;
        end if;
    end process;

end Behavioral;
