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

entity reconstruct_scalar_data_s_axi is
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
    atomLocationsSize     :out  STD_LOGIC_VECTOR(31 downto 0);
    projShape0            :out  STD_LOGIC_VECTOR(31 downto 0);
    projShape1            :out  STD_LOGIC_VECTOR(31 downto 0);
    psfSupersample        :out  STD_LOGIC_VECTOR(31 downto 0);
    imageProjectionSize   :out  STD_LOGIC_VECTOR(31 downto 0);
    fullImage_rows        :out  STD_LOGIC_VECTOR(31 downto 0);
    fullImage_cols        :out  STD_LOGIC_VECTOR(31 downto 0);
    emission_cnt          :in   STD_LOGIC_VECTOR(31 downto 0);
    emission_cnt_ap_vld   :in   STD_LOGIC
);
end entity reconstruct_scalar_data_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_none
--
-- 0x00 : reserved
-- 0x04 : reserved
-- 0x08 : reserved
-- 0x0c : reserved
-- 0x10 : Data signal of atomLocationsSize
--        bit 31~0 - atomLocationsSize[31:0] (Read/Write)
-- 0x14 : reserved
-- 0x18 : Data signal of projShape0
--        bit 31~0 - projShape0[31:0] (Read/Write)
-- 0x1c : reserved
-- 0x20 : Data signal of projShape1
--        bit 31~0 - projShape1[31:0] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of psfSupersample
--        bit 31~0 - psfSupersample[31:0] (Read/Write)
-- 0x2c : reserved
-- 0x30 : Data signal of imageProjectionSize
--        bit 31~0 - imageProjectionSize[31:0] (Read/Write)
-- 0x34 : reserved
-- 0x38 : Data signal of fullImage_rows
--        bit 31~0 - fullImage_rows[31:0] (Read/Write)
-- 0x3c : reserved
-- 0x40 : Data signal of fullImage_cols
--        bit 31~0 - fullImage_cols[31:0] (Read/Write)
-- 0x44 : reserved
-- 0x48 : Data signal of emission_cnt
--        bit 31~0 - emission_cnt[31:0] (Read)
-- 0x4c : Control signal of emission_cnt
--        bit 0  - emission_cnt_ap_vld (Read/COR)
--        others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of reconstruct_scalar_data_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_ATOMLOCATIONSSIZE_DATA_0   : INTEGER := 16#10#;
    constant ADDR_ATOMLOCATIONSSIZE_CTRL     : INTEGER := 16#14#;
    constant ADDR_PROJSHAPE0_DATA_0          : INTEGER := 16#18#;
    constant ADDR_PROJSHAPE0_CTRL            : INTEGER := 16#1c#;
    constant ADDR_PROJSHAPE1_DATA_0          : INTEGER := 16#20#;
    constant ADDR_PROJSHAPE1_CTRL            : INTEGER := 16#24#;
    constant ADDR_PSFSUPERSAMPLE_DATA_0      : INTEGER := 16#28#;
    constant ADDR_PSFSUPERSAMPLE_CTRL        : INTEGER := 16#2c#;
    constant ADDR_IMAGEPROJECTIONSIZE_DATA_0 : INTEGER := 16#30#;
    constant ADDR_IMAGEPROJECTIONSIZE_CTRL   : INTEGER := 16#34#;
    constant ADDR_FULLIMAGE_ROWS_DATA_0      : INTEGER := 16#38#;
    constant ADDR_FULLIMAGE_ROWS_CTRL        : INTEGER := 16#3c#;
    constant ADDR_FULLIMAGE_COLS_DATA_0      : INTEGER := 16#40#;
    constant ADDR_FULLIMAGE_COLS_CTRL        : INTEGER := 16#44#;
    constant ADDR_EMISSION_CNT_DATA_0        : INTEGER := 16#48#;
    constant ADDR_EMISSION_CNT_CTRL          : INTEGER := 16#4c#;
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
    signal int_atomLocationsSize : UNSIGNED(31 downto 0) := (others => '0');
    signal int_projShape0      : UNSIGNED(31 downto 0) := (others => '0');
    signal int_projShape1      : UNSIGNED(31 downto 0) := (others => '0');
    signal int_psfSupersample  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_imageProjectionSize : UNSIGNED(31 downto 0) := (others => '0');
    signal int_fullImage_rows  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_fullImage_cols  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_emission_cnt_ap_vld : STD_LOGIC;
    signal int_emission_cnt    : UNSIGNED(31 downto 0) := (others => '0');


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
                    when ADDR_ATOMLOCATIONSSIZE_DATA_0 =>
                        rdata_data <= RESIZE(int_atomLocationsSize(31 downto 0), 32);
                    when ADDR_PROJSHAPE0_DATA_0 =>
                        rdata_data <= RESIZE(int_projShape0(31 downto 0), 32);
                    when ADDR_PROJSHAPE1_DATA_0 =>
                        rdata_data <= RESIZE(int_projShape1(31 downto 0), 32);
                    when ADDR_PSFSUPERSAMPLE_DATA_0 =>
                        rdata_data <= RESIZE(int_psfSupersample(31 downto 0), 32);
                    when ADDR_IMAGEPROJECTIONSIZE_DATA_0 =>
                        rdata_data <= RESIZE(int_imageProjectionSize(31 downto 0), 32);
                    when ADDR_FULLIMAGE_ROWS_DATA_0 =>
                        rdata_data <= RESIZE(int_fullImage_rows(31 downto 0), 32);
                    when ADDR_FULLIMAGE_COLS_DATA_0 =>
                        rdata_data <= RESIZE(int_fullImage_cols(31 downto 0), 32);
                    when ADDR_EMISSION_CNT_DATA_0 =>
                        rdata_data <= RESIZE(int_emission_cnt(31 downto 0), 32);
                    when ADDR_EMISSION_CNT_CTRL =>
                        rdata_data(0) <= int_emission_cnt_ap_vld;
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    atomLocationsSize    <= STD_LOGIC_VECTOR(int_atomLocationsSize);
    projShape0           <= STD_LOGIC_VECTOR(int_projShape0);
    projShape1           <= STD_LOGIC_VECTOR(int_projShape1);
    psfSupersample       <= STD_LOGIC_VECTOR(int_psfSupersample);
    imageProjectionSize  <= STD_LOGIC_VECTOR(int_imageProjectionSize);
    fullImage_rows       <= STD_LOGIC_VECTOR(int_fullImage_rows);
    fullImage_cols       <= STD_LOGIC_VECTOR(int_fullImage_cols);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_atomLocationsSize(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ATOMLOCATIONSSIZE_DATA_0) then
                    int_atomLocationsSize(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_atomLocationsSize(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_projShape0(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PROJSHAPE0_DATA_0) then
                    int_projShape0(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_projShape0(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_projShape1(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PROJSHAPE1_DATA_0) then
                    int_projShape1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_projShape1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_psfSupersample(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PSFSUPERSAMPLE_DATA_0) then
                    int_psfSupersample(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_psfSupersample(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_imageProjectionSize(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IMAGEPROJECTIONSIZE_DATA_0) then
                    int_imageProjectionSize(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_imageProjectionSize(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_fullImage_rows(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FULLIMAGE_ROWS_DATA_0) then
                    int_fullImage_rows(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_fullImage_rows(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_fullImage_cols(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FULLIMAGE_COLS_DATA_0) then
                    int_fullImage_cols(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_fullImage_cols(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_emission_cnt <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (emission_cnt_ap_vld = '1') then
                    int_emission_cnt <= UNSIGNED(emission_cnt);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_emission_cnt_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (emission_cnt_ap_vld = '1') then
                    int_emission_cnt_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_EMISSION_CNT_CTRL) then
                    int_emission_cnt_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
