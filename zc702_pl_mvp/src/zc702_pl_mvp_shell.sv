module zc702_pl_mvp_shell (
    // fixed 200 MHz LVDS clock from a SiT9102 oscillator
    input SYSCLK_P,
    input SYSCLK_N,
    // user i/o
    input GPIO_SW_N,  // SW5; logic high when pressed
    output [4-1:0] PMOD1
);
    localparam real SYSCLK_PERIOD_NS = 5;

    logic sysclk;
    logic pll200_fb, clk200;
    reg [32-1:0] u32_cnt;

    IBUFDS IBUFDS_CLK200MAP (
        .I (SYSCLK_P),
        .IB(SYSCLK_N),
        .O (sysclk)
    );

    always_ff @(posedge clk200) begin
        u32_cnt <= u32_cnt + 1;
    end

    assign PMOD1[0] = u32_cnt[31];

    PLLE2_BASE #(
        .CLKIN1_PERIOD (SYSCLK_PERIOD_NS),
        .CLKFBOUT_MULT (8),
        .CLKOUT0_DIVIDE(8)
    ) plle2_base_clk200 (
        .CLKIN1(sysclk),
        .CLKOUT0(clk200),
        .CLKFBOUT(pll200_fb),
        .CLKFBIN(pll200_fb),
        .RST(GPIO_SW_N),
        .PWRDWN(0)
    );

endmodule
