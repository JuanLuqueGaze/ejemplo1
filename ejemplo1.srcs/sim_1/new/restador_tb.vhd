
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY restador_tb IS
    --  Port ( );
END restador_tb;

ARCHITECTURE Behavioral OF restador_tb IS

    COMPONENT restador
        PORT (
            num3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --Puertos de entrada/salida
            num4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            numoutr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)

        );
    END COMPONENT;

    SIGNAL num3, num4, numoutr : STD_LOGIC_VECTOR(3 DOWNTO 0);
    CONSTANT speriod : TIME := 10 ns;
BEGIN

    DUT : restador
    PORT MAP(
        num3 => num3,
        num4 => num4,
        numoutr => numoutr

    );

    data_process : PROCESS
    BEGIN
        num3 <= "0010";
        num4 <= "0101";
        WAIT FOR speriod;
        num4 <= "1101";
        WAIT FOR speriod;
        num4 <= "1111";
        WAIT FOR speriod;
        num4 <= "0100";
        WAIT FOR speriod;
        FINISH;

    END PROCESS;
END Behavioral;