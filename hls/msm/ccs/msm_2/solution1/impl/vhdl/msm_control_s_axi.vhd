-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
-- Tool Version Limit: 2024.11
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- 
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity msm_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 7;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    x_array               :out  STD_LOGIC_VECTOR(63 downto 0);
    y_array               :out  STD_LOGIC_VECTOR(63 downto 0);
    z_array               :out  STD_LOGIC_VECTOR(63 downto 0);
    t_array               :out  STD_LOGIC_VECTOR(63 downto 0);
    result_x              :out  STD_LOGIC_VECTOR(63 downto 0);
    result_y              :out  STD_LOGIC_VECTOR(63 downto 0);
    result_z              :out  STD_LOGIC_VECTOR(63 downto 0);
    result_t              :out  STD_LOGIC_VECTOR(63 downto 0)
);
end entity msm_control_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_none
--
-- 0x00 : reserved
-- 0x04 : reserved
-- 0x08 : reserved
-- 0x0c : reserved
-- 0x10 : Data signal of x_array
--        bit 31~0 - x_array[31:0] (Read/Write)
-- 0x14 : Data signal of x_array
--        bit 31~0 - x_array[63:32] (Read/Write)
-- 0x18 : reserved
-- 0x1c : Data signal of y_array
--        bit 31~0 - y_array[31:0] (Read/Write)
-- 0x20 : Data signal of y_array
--        bit 31~0 - y_array[63:32] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of z_array
--        bit 31~0 - z_array[31:0] (Read/Write)
-- 0x2c : Data signal of z_array
--        bit 31~0 - z_array[63:32] (Read/Write)
-- 0x30 : reserved
-- 0x34 : Data signal of t_array
--        bit 31~0 - t_array[31:0] (Read/Write)
-- 0x38 : Data signal of t_array
--        bit 31~0 - t_array[63:32] (Read/Write)
-- 0x3c : reserved
-- 0x40 : Data signal of result_x
--        bit 31~0 - result_x[31:0] (Read/Write)
-- 0x44 : Data signal of result_x
--        bit 31~0 - result_x[63:32] (Read/Write)
-- 0x48 : reserved
-- 0x4c : Data signal of result_y
--        bit 31~0 - result_y[31:0] (Read/Write)
-- 0x50 : Data signal of result_y
--        bit 31~0 - result_y[63:32] (Read/Write)
-- 0x54 : reserved
-- 0x58 : Data signal of result_z
--        bit 31~0 - result_z[31:0] (Read/Write)
-- 0x5c : Data signal of result_z
--        bit 31~0 - result_z[63:32] (Read/Write)
-- 0x60 : reserved
-- 0x64 : Data signal of result_t
--        bit 31~0 - result_t[31:0] (Read/Write)
-- 0x68 : Data signal of result_t
--        bit 31~0 - result_t[63:32] (Read/Write)
-- 0x6c : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of msm_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_X_ARRAY_DATA_0  : INTEGER := 16#10#;
    constant ADDR_X_ARRAY_DATA_1  : INTEGER := 16#14#;
    constant ADDR_X_ARRAY_CTRL    : INTEGER := 16#18#;
    constant ADDR_Y_ARRAY_DATA_0  : INTEGER := 16#1c#;
    constant ADDR_Y_ARRAY_DATA_1  : INTEGER := 16#20#;
    constant ADDR_Y_ARRAY_CTRL    : INTEGER := 16#24#;
    constant ADDR_Z_ARRAY_DATA_0  : INTEGER := 16#28#;
    constant ADDR_Z_ARRAY_DATA_1  : INTEGER := 16#2c#;
    constant ADDR_Z_ARRAY_CTRL    : INTEGER := 16#30#;
    constant ADDR_T_ARRAY_DATA_0  : INTEGER := 16#34#;
    constant ADDR_T_ARRAY_DATA_1  : INTEGER := 16#38#;
    constant ADDR_T_ARRAY_CTRL    : INTEGER := 16#3c#;
    constant ADDR_RESULT_X_DATA_0 : INTEGER := 16#40#;
    constant ADDR_RESULT_X_DATA_1 : INTEGER := 16#44#;
    constant ADDR_RESULT_X_CTRL   : INTEGER := 16#48#;
    constant ADDR_RESULT_Y_DATA_0 : INTEGER := 16#4c#;
    constant ADDR_RESULT_Y_DATA_1 : INTEGER := 16#50#;
    constant ADDR_RESULT_Y_CTRL   : INTEGER := 16#54#;
    constant ADDR_RESULT_Z_DATA_0 : INTEGER := 16#58#;
    constant ADDR_RESULT_Z_DATA_1 : INTEGER := 16#5c#;
    constant ADDR_RESULT_Z_CTRL   : INTEGER := 16#60#;
    constant ADDR_RESULT_T_DATA_0 : INTEGER := 16#64#;
    constant ADDR_RESULT_T_DATA_1 : INTEGER := 16#68#;
    constant ADDR_RESULT_T_CTRL   : INTEGER := 16#6c#;
    constant ADDR_BITS         : INTEGER := 7;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_x_array         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_y_array         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_z_array         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_t_array         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_result_x        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_result_y        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_result_z        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_result_t        : UNSIGNED(63 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 2) & (1 downto 0 => '0'));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_X_ARRAY_DATA_0 =>
                        rdata_data <= RESIZE(int_x_array(31 downto 0), 32);
                    when ADDR_X_ARRAY_DATA_1 =>
                        rdata_data <= RESIZE(int_x_array(63 downto 32), 32);
                    when ADDR_Y_ARRAY_DATA_0 =>
                        rdata_data <= RESIZE(int_y_array(31 downto 0), 32);
                    when ADDR_Y_ARRAY_DATA_1 =>
                        rdata_data <= RESIZE(int_y_array(63 downto 32), 32);
                    when ADDR_Z_ARRAY_DATA_0 =>
                        rdata_data <= RESIZE(int_z_array(31 downto 0), 32);
                    when ADDR_Z_ARRAY_DATA_1 =>
                        rdata_data <= RESIZE(int_z_array(63 downto 32), 32);
                    when ADDR_T_ARRAY_DATA_0 =>
                        rdata_data <= RESIZE(int_t_array(31 downto 0), 32);
                    when ADDR_T_ARRAY_DATA_1 =>
                        rdata_data <= RESIZE(int_t_array(63 downto 32), 32);
                    when ADDR_RESULT_X_DATA_0 =>
                        rdata_data <= RESIZE(int_result_x(31 downto 0), 32);
                    when ADDR_RESULT_X_DATA_1 =>
                        rdata_data <= RESIZE(int_result_x(63 downto 32), 32);
                    when ADDR_RESULT_Y_DATA_0 =>
                        rdata_data <= RESIZE(int_result_y(31 downto 0), 32);
                    when ADDR_RESULT_Y_DATA_1 =>
                        rdata_data <= RESIZE(int_result_y(63 downto 32), 32);
                    when ADDR_RESULT_Z_DATA_0 =>
                        rdata_data <= RESIZE(int_result_z(31 downto 0), 32);
                    when ADDR_RESULT_Z_DATA_1 =>
                        rdata_data <= RESIZE(int_result_z(63 downto 32), 32);
                    when ADDR_RESULT_T_DATA_0 =>
                        rdata_data <= RESIZE(int_result_t(31 downto 0), 32);
                    when ADDR_RESULT_T_DATA_1 =>
                        rdata_data <= RESIZE(int_result_t(63 downto 32), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    x_array              <= STD_LOGIC_VECTOR(int_x_array);
    y_array              <= STD_LOGIC_VECTOR(int_y_array);
    z_array              <= STD_LOGIC_VECTOR(int_z_array);
    t_array              <= STD_LOGIC_VECTOR(int_t_array);
    result_x             <= STD_LOGIC_VECTOR(int_result_x);
    result_y             <= STD_LOGIC_VECTOR(int_result_y);
    result_z             <= STD_LOGIC_VECTOR(int_result_z);
    result_t             <= STD_LOGIC_VECTOR(int_result_t);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_x_array(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_X_ARRAY_DATA_0) then
                    int_x_array(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_x_array(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_x_array(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_X_ARRAY_DATA_1) then
                    int_x_array(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_x_array(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_y_array(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_Y_ARRAY_DATA_0) then
                    int_y_array(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_y_array(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_y_array(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_Y_ARRAY_DATA_1) then
                    int_y_array(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_y_array(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_z_array(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_Z_ARRAY_DATA_0) then
                    int_z_array(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_z_array(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_z_array(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_Z_ARRAY_DATA_1) then
                    int_z_array(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_z_array(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_t_array(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_T_ARRAY_DATA_0) then
                    int_t_array(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_t_array(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_t_array(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_T_ARRAY_DATA_1) then
                    int_t_array(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_t_array(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_x(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESULT_X_DATA_0) then
                    int_result_x(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_result_x(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_x(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESULT_X_DATA_1) then
                    int_result_x(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_result_x(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_y(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESULT_Y_DATA_0) then
                    int_result_y(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_result_y(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_y(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESULT_Y_DATA_1) then
                    int_result_y(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_result_y(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_z(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESULT_Z_DATA_0) then
                    int_result_z(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_result_z(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_z(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESULT_Z_DATA_1) then
                    int_result_z(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_result_z(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_t(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESULT_T_DATA_0) then
                    int_result_t(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_result_t(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_t(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RESULT_T_DATA_1) then
                    int_result_t(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_result_t(63 downto 32));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
