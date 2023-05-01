-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Apr 28 18:25:24 2023
-- Host        : DESKTOP-1K6AF7C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/projects/lab6/radio_periph_lab/radio_periph_lab/vivado/radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_xpm_cdc_gen_0_0/design_1_xpm_cdc_gen_0_0_sim_netlist.vhdl
-- Design      : design_1_xpm_cdc_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 1 downto 0 );
    src_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    src_send : in STD_LOGIC;
    dest_ack : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst_in : in STD_LOGIC;
    src_arst : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dest_out_bin : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_rcv : out STD_LOGIC;
    dest_req : out STD_LOGIC;
    dest_pulse : out STD_LOGIC;
    dest_rst_out : out STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 7;
  attribute DEST_CLK_PERIOD : integer;
  attribute DEST_CLK_PERIOD of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 2500;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 1;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 2;
  attribute INIT : string;
  attribute INIT of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is "xpm_cdc_gen_v1_0_1";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 0;
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 0;
  attribute RST_USED : integer;
  attribute RST_USED of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 1;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 0;
  attribute SRC_CLK_PERIOD : integer;
  attribute SRC_CLK_PERIOD of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 5000;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 4;
  attribute VERSION : integer;
  attribute VERSION of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 : entity is 2;
end design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1;

architecture STRUCTURE of design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1 is
  signal \<const0>\ : STD_LOGIC;
  attribute DEF_VAL : string;
  attribute DEF_VAL of xsrst : label is "1'b1";
  attribute DEST_SYNC_FF of xsrst : label is 2;
  attribute INIT of xsrst : label is "1";
  attribute INIT_SYNC_FF of xsrst : label is 0;
  attribute SIM_ASSERT_CHK of xsrst : label is 1;
  attribute VERSION of xsrst : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xsrst : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xsrst : label is "TRUE";
begin
  dest_arst <= \<const0>\;
  dest_out(1) <= \<const0>\;
  dest_out(0) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
  dest_pulse <= \<const0>\;
  dest_req <= \<const0>\;
  src_rcv <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xsrst: entity work.design_1_xpm_cdc_gen_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => dest_clk,
      dest_rst => dest_rst_out,
      src_rst => src_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xpm_cdc_gen_0_0 is
  port (
    dest_clk : in STD_LOGIC;
    dest_rst_out : out STD_LOGIC;
    src_rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xpm_cdc_gen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xpm_cdc_gen_0_0 : entity is "design_1_xpm_cdc_gen_0_0,xpm_cdc_gen_v1_0_1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xpm_cdc_gen_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xpm_cdc_gen_0_0 : entity is "xpm_cdc_gen_v1_0_1,Vivado 2022.1";
end design_1_xpm_cdc_gen_0_0;

architecture STRUCTURE of design_1_xpm_cdc_gen_0_0 is
  signal NLW_inst_dest_arst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_pulse_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_src_rcv_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_dest_out_bin_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_CDC_TYPE : integer;
  attribute C_CDC_TYPE of inst : label is 7;
  attribute DEST_CLK_PERIOD : integer;
  attribute DEST_CLK_PERIOD of inst : label is 2500;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of inst : label is 1;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of inst : label is 2;
  attribute INIT : string;
  attribute INIT of inst : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of inst : label is 0;
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of inst : label is 0;
  attribute RST_USED : integer;
  attribute RST_USED of inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst : label is 1;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of inst : label is 0;
  attribute SRC_CLK_PERIOD : integer;
  attribute SRC_CLK_PERIOD of inst : label is 5000;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of inst : label is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of inst : label is 4;
  attribute VERSION : integer;
  attribute VERSION of inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of inst : label is 2;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dest_clk : signal is "xilinx.com:signal:clock:1.0 dest_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dest_clk : signal is "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk125, INSERT_VIP 0";
begin
inst: entity work.design_1_xpm_cdc_gen_0_0_xpm_cdc_gen_v1_0_1
     port map (
      dest_ack => '1',
      dest_arst => NLW_inst_dest_arst_UNCONNECTED,
      dest_clk => dest_clk,
      dest_out(1 downto 0) => NLW_inst_dest_out_UNCONNECTED(1 downto 0),
      dest_out_bin(1 downto 0) => NLW_inst_dest_out_bin_UNCONNECTED(1 downto 0),
      dest_pulse => NLW_inst_dest_pulse_UNCONNECTED,
      dest_req => NLW_inst_dest_req_UNCONNECTED,
      dest_rst_in => '1',
      dest_rst_out => dest_rst_out,
      src_arst => '1',
      src_clk => '1',
      src_in(1 downto 0) => B"01",
      src_in_bin(1 downto 0) => B"01",
      src_pulse => '1',
      src_rcv => NLW_inst_src_rcv_UNCONNECTED,
      src_rst => src_rst,
      src_send => '1'
    );
end STRUCTURE;
