
 add_fsm_encoding \
       {design_1_gmii_to_rgmii_0_0_resets.idelay_reset_cnt} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1000 1000} {1001 1001} {1010 1010} {1011 1011} {1100 1100} {1101 1101} {1110 1110} }

 add_fsm_encoding \
       {MDIO_INTERFACE.STATE} \
       { }  \
       {{0000 00000000001} {0001 00000000010} {0010 00000000100} {0011 00000001000} {0100 00000010000} {0101 00000100000} {0110 00001000000} {0111 00010000000} {1000 00100000000} {1001 01000000000} {1010 10000000000} }
