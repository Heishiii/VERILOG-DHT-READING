library verilog;
use verilog.vl_types.all;
entity DHT11 is
    generic(
        START           : vl_logic_vector(0 to 19) := (Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        \WAIT\          : vl_logic_vector(0 to 10) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        DHT_RESPONSE    : vl_logic_vector(0 to 11) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        DHT_DATA_TRANSMISSION: vl_logic_vector(0 to 11) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        DATA_first_bit  : vl_logic_vector(0 to 11) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        DATA_HIGH       : vl_logic_vector(0 to 10) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0);
        DATA_LOW        : vl_logic_vector(0 to 11) := (Hi1, Hi1, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi0)
    );
    port(
        data            : inout  vl_logic;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of START : constant is 1;
    attribute mti_svvh_generic_type of \WAIT\ : constant is 1;
    attribute mti_svvh_generic_type of DHT_RESPONSE : constant is 1;
    attribute mti_svvh_generic_type of DHT_DATA_TRANSMISSION : constant is 1;
    attribute mti_svvh_generic_type of DATA_first_bit : constant is 1;
    attribute mti_svvh_generic_type of DATA_HIGH : constant is 1;
    attribute mti_svvh_generic_type of DATA_LOW : constant is 1;
end DHT11;
