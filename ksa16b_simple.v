module ksa16b_simple (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);
  wire [15:0] g, p;
  wire [15:0] g1, p1, g2, p2, g3, p3, g4, p4;
  wire [15:0] c;

  // Generate and Propagate
  assign g = a & b;
  assign p = a ^ b;

  // Stage 1
  assign g1[0] = g[0];
  assign p1[0] = p[0];
  assign g1[1] = g[1] | (p[1] & g[0]);
  assign p1[1] = p[1] & p[0];
  assign g1[2] = g[2] | (p[2] & g[1]);
  assign p1[2] = p[2] & p[1];
  assign g1[3] = g[3] | (p[3] & g[2]);
  assign p1[3] = p[3] & p[2];
  assign g1[4] = g[4] | (p[4] & g[3]);
  assign p1[4] = p[4] & p[3];
  assign g1[5] = g[5] | (p[5] & g[4]);
  assign p1[5] = p[5] & p[4];
  assign g1[6] = g[6] | (p[6] & g[5]);
  assign p1[6] = p[6] & p[5];
  assign g1[7] = g[7] | (p[7] & g[6]);
  assign p1[7] = p[7] & p[6];
  assign g1[8] = g[8] | (p[8] & g[7]);
  assign p1[8] = p[8] & p[7];
  assign g1[9] = g[9] | (p[9] & g[8]);
  assign p1[9] = p[9] & p[8];
  assign g1[10] = g[10] | (p[10] & g[9]);
  assign p1[10] = p[10] & p[9];
  assign g1[11] = g[11] | (p[11] & g[10]);
  assign p1[11] = p[11] & p[10];
  assign g1[12] = g[12] | (p[12] & g[11]);
  assign p1[12] = p[12] & p[11];
  assign g1[13] = g[13] | (p[13] & g[12]);
  assign p1[13] = p[13] & p[12];
  assign g1[14] = g[14] | (p[14] & g[13]);
  assign p1[14] = p[14] & p[13];
  assign g1[15] = g[15] | (p[15] & g[14]);
  assign p1[15] = p[15] & p[14];

  // Stage 2
  assign g2[0] = g1[0];
  assign p2[0] = p1[0];
  assign g2[1] = g1[1];
  assign p2[1] = p1[1];
  assign g2[2] = g1[2] | (p1[2] & g1[0]);
  assign p2[2] = p1[2] & p1[0];
  assign g2[3] = g1[3] | (p1[3] & g1[1]);
  assign p2[3] = p1[3] & p1[1];
  assign g2[4] = g1[4] | (p1[4] & g1[2]);
  assign p2[4] = p1[4] & p1[2];
  assign g2[5] = g1[5] | (p1[5] & g1[3]);
  assign p2[5] = p1[5] & p1[3];
  assign g2[6] = g1[6] | (p1[6] & g1[4]);
  assign p2[6] = p1[6] & p1[4];
  assign g2[7] = g1[7] | (p1[7] & g1[5]);
  assign p2[7] = p1[7] & p1[5];
  assign g2[8] = g1[8] | (p1[8] & g1[6]);
  assign p2[8] = p1[8] & p1[6];
  assign g2[9] = g1[9] | (p1[9] & g1[7]);
  assign p2[9] = p1[9] & p1[7];
  assign g2[10] = g1[10] | (p1[10] & g1[8]);
  assign p2[10] = p1[10] & p1[8];
  assign g2[11] = g1[11] | (p1[11] & g1[9]);
  assign p2[11] = p1[11] & p1[9];
  assign g2[12] = g1[12] | (p1[12] & g1[10]);
  assign p2[12] = p1[12] & p1[10];
  assign g2[13] = g1[13] | (p1[13] & g1[11]);
  assign p2[13] = p1[13] & p1[11];
  assign g2[14] = g1[14] | (p1[14] & g1[12]);
  assign p2[14] = p1[14] & p1[12];
  assign g2[15] = g1[15] | (p1[15] & g1[13]);
  assign p2[15] = p1[15] & p1[13];

  // Stage 3
  assign g3[0] = g2[0];
  assign p3[0] = p2[0];
  assign g3[1] = g2[1];
  assign p3[1] = p2[1];
  assign g3[2] = g2[2];
  assign p3[2] = p2[2];
  assign g3[3] = g2[3];
  assign p3[3] = p2[3];
  assign g3[4] = g2[4] | (p2[4] & g2[0]);
  assign p3[4] = p2[4] & p2[0];
  assign g3[5] = g2[5] | (p2[5] & g2[1]);
  assign p3[5] = p2[5] & p2[1];
  assign g3[6] = g2[6] | (p2[6] & g2[2]);
  assign p3[6] = p2[6] & p2[2];
  assign g3[7] = g2[7] | (p2[7] & g2[3]);
  assign p3[7] = p2[7] & p2[3];
  assign g3[8] = g2[8] | (p2[8] & g2[4]);
  assign p3[8] = p2[8] & p2[4];
  assign g3[9] = g2[9] | (p2[9] & g2[5]);
  assign p3[9] = p2[9] & p2[5];
  assign g3[10] = g2[10] | (p2[10] & g2[6]);
  assign p3[10] = p2[10] & p2[6];
  assign g3[11] = g2[11] | (p2[11] & g2[7]);
  assign p3[11] = p2[11] & p2[7];
  assign g3[12] = g2[12] | (p2[12] & g2[8]);
  assign p3[12] = p2[12] & p2[8];
  assign g3[13] = g2[13] | (p2[13] & g2[9]);
  assign p3[13] = p2[13] & p2[9];
  assign g3[14] = g2[14] | (p2[14] & g2[10]);
  assign p3[14] = p2[14] & p2[10];
  assign g3[15] = g2[15] | (p2[15] & g2[11]);
  assign p3[15] = p2[15] & p2[11];

  // Stage 4
  assign g4[0] = g3[0];
  assign p4[0] = p3[0];
  assign g4[1] = g3[1];
  assign p4[1] = p3[1];
  assign g4[2] = g3[2];
  assign p4[2] = p3[2];
  assign g4[3] = g3[3];
  assign p4[3] = p3[3];
  assign g4[4] = g3[4];
  assign p4[4] = p3[4];
  assign g4[5] = g3[5];
  assign p4[5] = p3[5];
  assign g4[6] = g3[6];
  assign p4[6] = p3[6];
  assign g4[7] = g3[7];
  assign p4[7] = p3[7];
  assign g4[8] = g3[8] | (p3[8] & g3[0]);
  assign p4[8] = p3[8] & p3[0];
  assign g4[9] = g3[9] | (p3[9] & g3[1]);
  assign p4[9] = p3[9] & p3[1];
  assign g4[10] = g3[10] | (p3[10] & g3[2]);
  assign p4[10] = p3[10] & p3[2];
  assign g4[11] = g3[11] | (p3[11] & g3[3]);
  assign p4[11] = p3[11] & p3[3];
  assign g4[12] = g3[12] | (p3[12] & g3[4]);
  assign p4[12] = p3[12] & p3[4];
  assign g4[13] = g3[13] | (p3[13] & g3[5]);
  assign p4[13] = p3[13] & p3[5];
  assign g4[14] = g3[14] | (p3[14] & g3[6]);
  assign p4[14] = p3[14] & p3[6];
  assign g4[15] = g3[15] | (p3[15] & g3[7]);
  assign p4[15] = p3[15] & p3[7];

  // Carry
  assign c[0] = cin;
  assign c[1] = g4[0] | (p4[0] & cin);
  assign c[2] = g4[1] | (p4[1] & c[1]);
  assign c[3] = g4[2] | (p4[2] & c[2]);
  assign c[4] = g4[3] | (p4[3] & c[3]);
  assign c[5] = g4[4] | (p4[4] & c[4]);
  assign c[6] = g4[5] | (p4[5] & c[5]);
  assign c[7] = g4[6] | (p4[6] & c[6]);
  assign c[8] = g4[7] | (p4[7] & c[7]);
  assign c[9] = g4[8] | (p4[8] & c[8]);
  assign c[10] = g4[9] | (p4[9] & c[9]);
  assign c[11] = g4[10] | (p4[10] & c[10]);
  assign c[12] = g4[11] | (p4[11] & c[11]);
  assign c[13] = g4[12] | (p4[12] & c[12]);
  assign c[14] = g4[13] | (p4[13] & c[13]);
  assign c[15] = g4[14] | (p4[14] & c[14]);
  assign cout = g4[15] | (p4[15] & c[15]);

  // Sum
  assign sum = p ^ c;

endmodule

