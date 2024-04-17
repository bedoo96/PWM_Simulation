----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2024 09:43:20 PM
-- Design Name: 
-- Module Name: example01 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity example01 is
--  Port ( );
Port (
        clk : in STD_LOGIC;
        pwm_out : out STD_LOGIC;
        duty_cycle : in INTEGER range 0 to 100
    );
end example01;

architecture Behavioral of example01 is
 signal counter : integer range 0 to 100 := 0;
begin
 process(clk)
    begin
        if rising_edge(clk) then
            if counter < duty_cycle then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
            counter <= counter + 1;
            if counter = 100 then
                counter <= 0;
            end if;
        end if;
    end process;

end Behavioral;
