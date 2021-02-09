----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/15/2020 02:51:02 PM
-- Design Name: 
-- Module Name: simRisc - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity simRisc is
--  Port ( );
end simRisc;

architecture Behavioral of simRisc is

signal      Clk      : STD_LOGIC;
signal      Rst      : STD_LOGIC;
signal      AdrInstr : STD_LOGIC_VECTOR (31 downto 0);
signal      Instr    : STD_LOGIC_VECTOR (31 downto 0);
signal      Data     : STD_LOGIC_VECTOR (31 downto 0);
signal      RA       : STD_LOGIC_VECTOR (31 downto 0);
signal      RB       : STD_LOGIC_VECTOR (31 downto 0);
signal      F        : STD_LOGIC_VECTOR (31 downto 0);
signal      ZF       : STD_LOGIC;
signal      CF       : STD_LOGIC;

constant clk_period: time := 100 ns;

begin

Procesor: entity WORK.proc_RISC port map (Clk, Rst, AdrInstr, Instr, Data, RA, RB, F, ZF, Cf);

clk_gen:process
begin
    Clk <= '0';
    wait for (clk_period/2);
    Clk <= '1';
    wait for (clk_period/2);
end process clk_gen;

reset: process
begin
    rst <= '1';
    wait for CLK_PERIOD;
    rst <= '0';
    wait;
    
end process reset;



end Behavioral;
