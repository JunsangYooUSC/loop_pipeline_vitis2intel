	component loop_pipeline is
		port (
			clock                : in  std_logic                     := 'X';             -- clk
			resetn               : in  std_logic                     := 'X';             -- reset_n
			start                : in  std_logic                     := 'X';             -- valid
			busy                 : out std_logic;                                        -- stall
			done                 : out std_logic;                                        -- valid
			stall                : in  std_logic                     := 'X';             -- stall
			returndata           : out std_logic_vector(19 downto 0);                    -- data
			A                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address    : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read       : out std_logic;                                        -- read
			avmm_0_rw_readdata   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write      : out std_logic;                                        -- write
			avmm_0_rw_writedata  : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component loop_pipeline;

	u0 : component loop_pipeline
		port map (
			clock                => CONNECTED_TO_clock,                --      clock.clk
			resetn               => CONNECTED_TO_resetn,               --      reset.reset_n
			start                => CONNECTED_TO_start,                --       call.valid
			busy                 => CONNECTED_TO_busy,                 --           .stall
			done                 => CONNECTED_TO_done,                 --     return.valid
			stall                => CONNECTED_TO_stall,                --           .stall
			returndata           => CONNECTED_TO_returndata,           -- returndata.data
			A                    => CONNECTED_TO_A,                    --          A.data
			avmm_0_rw_address    => CONNECTED_TO_avmm_0_rw_address,    --  avmm_0_rw.address
			avmm_0_rw_byteenable => CONNECTED_TO_avmm_0_rw_byteenable, --           .byteenable
			avmm_0_rw_read       => CONNECTED_TO_avmm_0_rw_read,       --           .read
			avmm_0_rw_readdata   => CONNECTED_TO_avmm_0_rw_readdata,   --           .readdata
			avmm_0_rw_write      => CONNECTED_TO_avmm_0_rw_write,      --           .write
			avmm_0_rw_writedata  => CONNECTED_TO_avmm_0_rw_writedata   --           .writedata
		);

