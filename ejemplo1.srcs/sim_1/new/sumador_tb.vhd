
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY sumador_tb IS
    --  Port ( );
END sumador_tb;

ARCHITECTURE Behavioral OF sumador_tb IS

    COMPONENT sumador
        PORT (
            num1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --Puertos de entrada/salida
            num2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            numout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)

        );
    END COMPONENT;

    SIGNAL num1, num2, numout : STD_LOGIC_VECTOR(3 DOWNTO 0);
    CONSTANT period : TIME := 10 ns;
BEGIN

    DUT : sumador
    PORT MAP(
        num1 => num1,
        num2 => num2,
        numout => numout

    );

    data_process : PROCESS
    BEGIN
        num1 <= "0010";
        num2 <= "0101";
        WAIT FOR period;
        num2 <= "1101";
        WAIT FOR period;
        num2 <= "1111";
        WAIT FOR period;
        num2 <= "0100";
        WAIT FOR period;
        FINISH;

    END PROCESS;
END Behavioral;