-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity axi_interfaces is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    d_o_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    d_o_TVALID : OUT STD_LOGIC;
    d_o_TREADY : IN STD_LOGIC;
    d_i_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    d_i_TVALID : IN STD_LOGIC;
    d_i_TREADY : OUT STD_LOGIC );
end;


architecture behav of axi_interfaces is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "axi_interfaces,hls_ip_2016_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2,HLS_SYN_LUT=5}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_18 : BOOLEAN;
    signal d_o_TDATA_blk_n : STD_LOGIC;
    signal d_i_TDATA_blk_n : STD_LOGIC;
    signal ap_sig_37 : BOOLEAN;
    signal ap_sig_ioackin_d_o_TREADY : STD_LOGIC;
    signal ap_reg_ioackin_d_o_TREADY : STD_LOGIC := '0';
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_61 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_ioackin_d_o_TREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ioackin_d_o_TREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) then
                    if (not((ap_sig_37 or (ap_const_logic_0 = ap_sig_ioackin_d_o_TREADY)))) then 
                        ap_reg_ioackin_d_o_TREADY <= ap_const_logic_0;
                    elsif (ap_sig_61) then 
                        ap_reg_ioackin_d_o_TREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_sig_37, ap_sig_ioackin_d_o_TREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    ap_done_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_37, ap_sig_ioackin_d_o_TREADY)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_sig_37 or (ap_const_logic_0 = ap_sig_ioackin_d_o_TREADY))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_37, ap_sig_ioackin_d_o_TREADY)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_sig_37 or (ap_const_logic_0 = ap_sig_ioackin_d_o_TREADY))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    ap_sig_18_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_18 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_37_assign_proc : process(ap_start, d_i_TVALID)
    begin
                ap_sig_37 <= ((d_i_TVALID = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    ap_sig_61_assign_proc : process(d_o_TREADY, ap_sig_37)
    begin
                ap_sig_61 <= (not(ap_sig_37) and (ap_const_logic_1 = d_o_TREADY));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_18)
    begin
        if (ap_sig_18) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_d_o_TREADY_assign_proc : process(d_o_TREADY, ap_reg_ioackin_d_o_TREADY)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_d_o_TREADY)) then 
            ap_sig_ioackin_d_o_TREADY <= d_o_TREADY;
        else 
            ap_sig_ioackin_d_o_TREADY <= ap_const_logic_1;
        end if; 
    end process;


    d_i_TDATA_blk_n_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, d_i_TVALID)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) then 
            d_i_TDATA_blk_n <= d_i_TVALID;
        else 
            d_i_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    d_i_TREADY_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_37, ap_sig_ioackin_d_o_TREADY)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_sig_37 or (ap_const_logic_0 = ap_sig_ioackin_d_o_TREADY))))) then 
            d_i_TREADY <= ap_const_logic_1;
        else 
            d_i_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    d_o_TDATA <= d_i_TDATA;

    d_o_TDATA_blk_n_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, d_o_TREADY)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) then 
            d_o_TDATA_blk_n <= d_o_TREADY;
        else 
            d_o_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    d_o_TVALID_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_37, ap_reg_ioackin_d_o_TREADY)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_37) and (ap_const_logic_0 = ap_reg_ioackin_d_o_TREADY))) then 
            d_o_TVALID <= ap_const_logic_1;
        else 
            d_o_TVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
