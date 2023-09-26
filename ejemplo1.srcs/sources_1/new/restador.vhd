
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY restador IS
    PORT (
        num3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        num4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        numoutr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)

    );
END restador;

ARCHITECTURE Behavioral OF restador IS
    SIGNAL num3u : signed(3 DOWNTO 0);
    SIGNAL num4u : signed(3 DOWNTO 0);
    SIGNAL numoutur : signed(3 DOWNTO 0);

BEGIN
    num3u <= signed(num3);
    num4u <= signed(num4);
    numoutr <= STD_LOGIC_VECTOR(numoutur);
    numoutur <= num3u - num4u;
END Behavioral;