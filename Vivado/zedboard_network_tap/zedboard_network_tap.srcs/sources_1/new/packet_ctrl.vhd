----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/26/2016 01:55:20 PM
-- Design Name: 
-- Module Name: packet_ctrl - Behavioral
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

entity packet_ctrl is
Generic( gRX_BUF_DEPTH : integer := 1024;  
         gRX_BUF_WIDTH : integer := 8
); 
Port(   I_clk100      : in  STD_LOGIC;
        I_clk125      : in  STD_LOGIC; 
        I_clk200      : in  STD_LOGIC; 
        I_gmii_rx_clk : in  STD_LOGIC; -- rx clock from gmii 
        I_gmii_rxd    : in  STD_LOGIC_VECTOR(gRX_BUF_WIDTH-1 downto 0); 
        I_gmii_rx_dv  : in  STD_LOGIC; 
        I_gmii_rx_err : in  STD_LOGIC
);
end packet_ctrl;
----------------------------------------------------------------------------------------
architecture Behavioral of packet_ctrl is

  component fifo_generator_0
    port (
      clk   : in STD_LOGIC;
      srst  : in STD_LOGIC;
      din   : in STD_LOGIC_VECTOR(7 DOWNTO 0);
      wr_en : in STD_LOGIC;
      rd_en : in STD_LOGIC;
      dout  : out STD_LOGIC_VECTOR(7 DOWNTO 0);
      full  : out STD_LOGIC;
      empty : out STD_LOGIC
    );
  end component; 
  signal U1_rst : STD_LOGIC := '0';
  signal U1_data_out : STD_LOGIC_VECTOR (gRX_BUF_WIDTH-1 downto 0) := (others => '0');
  signal U1_empty : STD_LOGIC := '0';
  signal U1_full : STD_LOGIC := '0';
  signal U2_rst : STD_LOGIC := '0';
  signal U2_data_out : STD_LOGIC_VECTOR (gRX_BUF_WIDTH-1 downto 0) := (others => '0');
  signal U2_empty : STD_LOGIC := '0';
  signal U2_full : STD_LOGIC := '0';

  --type state_type is (sIDLE);
  --signal current_state, next_state : state_type; 

  signal L_RxFifo_wr_en : STD_LOGIC := '0'; 
  signal L_RxFifo_rd_en : STD_LOGIC := '0';
  signal L_rx_buf_en : STD_LOGIC := '0';

  signal L_SFD_detected : STD_LOGIC := '0';
  signal L_PRE_detected : STD_LOGIC := '0';

begin --------------------------------------------------------------------------------

--
-- RX data FIFO 
U1_RxFifo: fifo_generator_0
  PORT MAP (
    clk => I_clk200,
    srst => U1_rst,
    din => I_gmii_rxd,
    wr_en => L_RxFifo_wr_en,
    rd_en => L_RxFifo_rd_en,
    dout => U1_data_out,
    full => U1_full,
    empty => U1_empty
  );
L_SFD_detected <= '1' when I_gmii_rxd = x"D5" else '0';
L_PRE_detected <= '1' when I_gmii_rxd = x"55" else '0';

L_rx_buf_en<= '1' when (L_SFD_detected = '1' 
                        AND U1_full = '0' 
                        AND I_gmii_rx_dv = '1')
                  else '0';



--
-- Buffers GMII data on rising edge of rx clock
-- if GMII data is valid and buffer not full
RxBuffer: process(I_gmii_rx_clk)
begin
  if rising_edge(I_gmii_rx_clk) then
    if (L_rx_buf_en = '1' AND U1_full = '0') then
      L_RxFifo_wr_en <= '1';
    else
      L_RxFifo_wr_en <= '0';
    end if;
  end if; 
end process;


    --if (I_gmii_rx_dv = '1' AND I_gmii_rx_err = '0') then



--------------- FSM --------------------------

--StateUpdate: process(I_clk125)
--begin
--	if rising_edge(I_clk125) then
--		current_state <= next_state;
--	end if;
--end process;
--
--
--StateMachine: process(current_state)
--begin 
--
--  -- Set default state logic signals
--  next_state <= current_state; 
--
--  
--  case current_state is
--    when sIDLE => 
--      next_state <= current_state; 
--  
--    when others => 
--      next_state <= current_state; 
--  end case; 
--
--end process; 


end Behavioral;
