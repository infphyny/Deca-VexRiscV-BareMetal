//`default_nettype none

module DecaTopLevelSim(
  input wire i_clk,
  input wire i_rst,

  input wire [7:0] i_gpioA,
  output wire [7:0] o_gpioA,
  output wire [7:0] o_gpioA_oe,
  input wire  [7:0] i_gpioB,
  output wire [7:0] o_gpioB,
  output wire [7:0] o_gpioB_oe,
  output wire [7:0] LEDS,
  input wire uart_0_rx,
  output wire uart_0_tx,
  input wire i2c_0_scl_i,
  output wire i2c_0_scl_o,
  output wire i2c_0_scl_oe,
  input wire i2c_0_sda_i,
  output wire i2c_0_sda_o,
  output wire i2c_0_sda_oe,
  input wire CAP_SENSE_I2C_SCL_i,
  output wire CAP_SENSE_I2C_SCL_o,
  output wire CAP_SENSE_I2C_SCL_oe,
  input wire CAP_SENSE_I2C_SDA_i,
  output wire CAP_SENSE_I2C_SDA_o,
  output wire CAP_SENSE_I2C_SDA_oe,
  input wire LIGHT_I2C_SCL_i,
  output wire LIGHT_I2C_SCL_o,
  output wire LIGHT_I2C_SCL_oe,
  input wire LIGHT_I2C_SDA_i,
  output wire LIGHT_I2C_SDA_o,
  output wire LIGHT_I2C_SDA_oe,
  input wire RH_TEMP_I2C_SDA_i,
  output wire RH_TEMP_I2C_SDA_o,
  output wire RH_TEMP_I2C_SDA_oe,
  input wire RH_TEMP_I2C_SCL_i,
  output wire RH_TEMP_I2C_SCL_o,
  output wire RH_TEMP_I2C_SCL_oe,
  input wire RH_TEMP_DRDY_n,

  input wire TEMP_SI,
  output wire TEMP_SO,
  output wire TEMP_SO_oe,
  output wire TEMP_SC,
  output wire TEMP_CS_n,
  output wire G_SENSOR_SDI,
  input wire G_SENSOR_SDO,
  output wire G_SENSOR_SCLK,
  output wire G_SENSOR_CS_n,
  input wire PMONITOR_I2C_SCL_i,
  output wire PMONITOR_I2C_SCL_o,
  output wire PMONITOR_I2C_SCL_oe,
  input wire PMONITOR_I2C_SDA_i,
  output wire PMONITOR_I2C_SDA_o,
  output wire PMONITOR_I2C_SDA_oe

);


parameter memfile = "";
   parameter memsize = 131072;
   parameter PLL = "NONE";
   parameter sim = 1;
   parameter with_csr = 1;

 reg [1023:0] firmware_file;
   initial
     if ($value$plusargs("firmware=%s", firmware_file)) begin
	$display("Loading RAM from %0s", firmware_file);
	$readmemh(firmware_file, dut.ram.mem);
     end

/*
wire [7:0] o_gpioA;
wire [7:0] o_gpioA_oe;
wire [7:0] o_gpioB;
wire [7:0] o_gpioB_oe;
*/
/*
generate
genvar i;
   for(i = 0 ; i < 8 ; i=i+1) begin :  generate_gpio_signal
   assign gpioA[i] = o_gpioA_oe[i] ? o_gpioA[i]  : 1'bz;
   assign gpioB[i] = o_gpioB_oe[i] ? o_gpioB[i] : 1'bz;
   end
endgenerate
*/
/*
wire CAP_SENSE_I2C_SCL_oe;
wire CAP_SENSE_I2C_SCL_o;
wire CAP_SENSE_I2C_SDA_oe;
wire CAP_SENSE_I2C_SDA_o;
*/

/*
assign CAP_SENSE_I2C_SCL = CAP_SENSE_I2C_SCL_oe ?  1'bz : CAP_SENSE_I2C_SCL_o;
assign CAP_SENSE_I2C_SDA = CAP_SENSE_I2C_SDA_oe ?  1'bz : CAP_SENSE_I2C_SDA_o;
*/
/*
wire LIGHT_I2C_SCL_oe;
wire LIGHT_I2C_SCL_o;
wire LIGHT_I2C_SDA_oe;
wire LIGHT_I2C_SDA_o;
*/
/*
assign LIGHT_I2C_SCL = LIGHT_I2C_SCL_oe ?  1'bz : LIGHT_I2C_SCL_o;
assign LIGHT_I2C_SDA = LIGHT_I2C_SDA_oe ?  1'bz : LIGHT_I2C_SDA_o;
*/

/*
wire RH_TEMP_I2C_SDA_oe;
wire RH_TEMP_I2C_SDA_o;
wire RH_TEMP_I2C_SCL_oe;
wire RH_TEMP_I2C_SCL_o;
*/
//assign RH_TEMP_I2C_SCL = RH_TEMP_I2C_SCL_oe ? RH_TEMP_I2C_SCL_o : 1'bz;
//assign RH_TEMP_I2C_SDA = RH_TEMP_I2C_SDA_oe ? RH_TEMP_I2C_SDA_o : 1'bz;

/*
assign RH_TEMP_I2C_SCL = RH_TEMP_I2C_SCL_oe ?  1'bz : RH_TEMP_I2C_SCL_o;
assign RH_TEMP_I2C_SDA = RH_TEMP_I2C_SDA_oe ?  1'bz : RH_TEMP_I2C_SDA_o;
*/
/*
wire TEMP_SO;
wire TEMP_SO_oe;

assign TEMP_SIO = TEMP_SO_oe ? TEMP_SO : 1'bz;
*/
//assign test_temp_sc = TEMP_SC;
//assign test_temp_si = TEMP_SIO;
//assign test_temp_so = TEMP_SO;
//assign test_temp_soe = TEMP_SO_oe;
//assign test_temp_cs_n = TEMP_CS_n;
/*
wire PMONITOR_I2C_SCL_oe;
wire PMONITOR_I2C_SCL_o;
*/
//assign PMONITOR_I2C_SCL = PMONITOR_I2C_SCL_oe ? 1'bz : PMONITOR_I2C_SCL_o;
/*
wire PMONITOR_I2C_SDA_oe;
wire PMONITOR_I2C_SDA_o;
*/
//assign PMONITOR_I2C_SDA = PMONITOR_I2C_SDA_oe ? 1'bz : PMONITOR_I2C_SDA_o;





DecaSoc #(
    .memfile(memfile),
    .memsize(memsize),
    .PLL(PLL),
    .sim(sim),
    .with_csr(with_csr)
) dut(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_gpioA(i_gpioA),
    .o_gpioA(o_gpioA),
    .o_gpioA_oe(o_gpioA_oe),
    .i_gpioB(i_gpioB),
    .o_gpioB(o_gpioB),
    .o_gpioB_oe(o_gpioB_oe),
    .LEDS(LEDS),
    .uart_0_rx(uart_0_rx),
    .uart_0_tx(uart_0_tx),
    .i2c_0_scl_i(i2c_0_scl),
    .i2c_0_scl_o(i2c_0_scl_o),
    .i2c_0_scl_oe(i2c_0_scl_oe),
    .i2c_0_sda_i(i2c_0_sda),
    .i2c_0_sda_o(i2c_0_sda_o),
    .i2c_0_sda_oe(i2c_0_sda_oe),
    .CAP_SENSE_I2C_SCL_i(CAP_SENSE_I2C_SCL_i),
    .CAP_SENSE_I2C_SCL_o(CAP_SENSE_I2C_SCL_o),
    .CAP_SENSE_I2C_SCL_oe(CAP_SENSE_I2C_SCL_oe),
    .CAP_SENSE_I2C_SDA_i(CAP_SENSE_I2C_SDA_i),
    .CAP_SENSE_I2C_SDA_o(CAP_SENSE_I2C_SDA_o),
    .CAP_SENSE_I2C_SDA_oe(CAP_SENSE_I2C_SDA_oe),
    .LIGHT_I2C_SCL_i(LIGHT_I2C_SCL_i),
    .LIGHT_I2C_SCL_o(LIGHT_I2C_SCL_o),
    .LIGHT_I2C_SCL_oe(LIGHT_I2C_SCL_oe),
    .LIGHT_I2C_SDA_i(LIGHT_I2C_SDA_i),
    .LIGHT_I2C_SDA_o(LIGHT_I2C_SDA_o),
    .LIGHT_I2C_SDA_oe(LIGHT_I2C_SDA_oe),
    .RH_TEMP_I2C_SCL_i(RH_TEMP_I2C_SCL_i),
    .RH_TEMP_I2C_SCL_o(RH_TEMP_I2C_SCL_o),
    .RH_TEMP_I2C_SCL_oe(RH_TEMP_I2C_SCL_oe),
    .RH_TEMP_I2C_SDA_i(RH_TEMP_I2C_SDA_i),
    .RH_TEMP_I2C_SDA_o(RH_TEMP_I2C_SDA_o),
    .RH_TEMP_I2C_SDA_oe(RH_TEMP_I2C_SDA_oe),
    .RH_TEMP_DRDY_n(RH_TEMP_DRDY_n),
    .TEMP_SI(TEMP_SI),
    .TEMP_SO(TEMP_SO),
    .TEMP_SO_oe(TEMP_SO_oe),
    .TEMP_SC(TEMP_SC),
    .TEMP_CS_n(TEMP_CS_n),
    .G_SENSOR_SDI(G_SENSOR_SDI),
    .G_SENSOR_SDO(G_SENSOR_SDO),
    .G_SENSOR_SCLK(G_SENSOR_SCLK),
    .G_SENSOR_CS_n(G_SENSOR_CS_n),
    .PMONITOR_I2C_SCL_i(PMONITOR_I2C_SCL_i),
    .PMONITOR_I2C_SCL_o(PMONITOR_I2C_SCL_o),
    .PMONITOR_I2C_SCL_oe(PMONITOR_I2C_SCL_oe),
    .PMONITOR_I2C_SDA_i(PMONITOR_I2C_SDA_i),
    .PMONITOR_I2C_SDA_o(PMONITOR_I2C_SDA_o),
    .PMONITOR_I2C_SDA_oe(PMONITOR_I2C_SDA_oe)

);


endmodule
