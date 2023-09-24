----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.09.2023 17:37:02
-- Design Name: 
-- Module Name: sumador - Behavioral
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY sumador IS
      PORT (
            num1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --Puertos de entrada/salida
            num2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            numout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)

      );
END sumador;

ARCHITECTURE Behavioral OF sumador IS
      SIGNAL num1u : unsigned(3 DOWNTO 0);
      SIGNAL num2u : unsigned(3 DOWNTO 0);
      SIGNAL numoutu : unsigned(3 DOWNTO 0);

BEGIN
      num1u <= unsigned(num1);
      num2u <= unsigned(num2);
      numout <= STD_LOGIC_VECTOR(numoutu);
      numoutu <= num1u + num2u;
END Behavioral;