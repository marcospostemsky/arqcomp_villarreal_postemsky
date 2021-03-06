-- Se realiza un banco de registros, con las siguientes entradas A_i, B_i, C_i y W_c_i
-- Salidas: R_a_o y R_b_o.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY bank_reg IS
  GENERIC(
    n_reg : integer := 32;  -- cantidad de bits registros
    bit_dir_reg : integer := 4);  -- cantidad de registros
    PORT(
      A_i : IN     std_logic_vector(n-1 downto 0);
      B_i : IN     std_logic_vector(n-1 downto 0);
      C_i : IN     std_logic_vector(n-1 downto 0);    
      R_W_i: IN		std_logic;
      CLK_i : IN     std_logic;
      W_c_i : IN     std_logic_vector(n-1 downto 0);
      R_a_o : OUT    std_logic_vector(n-1 downto 0);
      R_b_o : OUT    std_logic_vector(n-1 downto 0))
END ENTITY bank_reg;

ARCHITECTURE Behavioral OF bank_reg IS
 -- put declarations here.
 -- Declaramos una matriz como memoria       
TYPE ram_memory IS ARRAY ( 2**bit_dir_reg-1 downto 0 ) OF std_logic_vector(n_reg-1 downto 0);
signal Memoria_ram: ram_memory;

BEGIN

Registros : PROCESS (CLK_i, rst) IS
  -- Put constant and variable declarations here.
BEGIN
  IF (rst = '1') THEN
    -- Put reset assignments here.
  ELSIF (rising_edge(CLK_i))  THEN
    -- Put clocked assignments here. 
    
    
    
  END IF;
END PROCESS Registros;

 
 
  -- put concurrent statements here.
END ARCHITECTURE Behavioral; -- Of entity bank_reg

 
