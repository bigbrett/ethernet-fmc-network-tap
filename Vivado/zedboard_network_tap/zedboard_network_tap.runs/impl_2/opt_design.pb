
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.05 . Memory (MB): peak = 1809.176 ; gain = 64.023 ; free physical = 20926 ; free virtual = 575772default:defaulth px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2;
'design_1_gmii_to_rgmii_1_0_rgmii_rx_clk2default:default2�
�/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_clocks.xdc2default:default2
72default:default8@Z18-483h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default20
gmii_to_rgmii_0_rgmii_rx_clk2default:default2�
�/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii2axis_0_0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_clocks.xdc2default:default2
72default:default8@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2i
U/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/ip_repo/gmii2axis_1.02default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2�
r/home/brett/workspace/Vivado_WS/HLS_Tutorials/2016.1/Interface_Synthesis/lab4/axi_interfaces_prj/solution1/impl/ip2default:defaultZ19-1700h px� 
~
"Loaded Vivado IP repository '%s'.
1332*coregen25
!/opt/Xilinx/Vivado/2016.2/data/ip2default:defaultZ19-2313h px� 
�
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:1.12default:default2

dbg_hub_CV2default:defaultZ19-3806h px� 
�
NRe-using generated and synthesized IP, "%s", from Vivado IP cache entry "%s".
146*	chipscope2+
xilinx.com:ip:xsdbm:1.12default:default2$
48a9c4d32f6fa4b02default:defaultZ16-220h px� 
�
Generating IP %s for %s.
1712*coregen2)
xilinx.com:ip:ila:6.12default:default2

u_ila_0_CV2default:defaultZ19-3806h px� 
�
NRe-using generated and synthesized IP, "%s", from Vivado IP cache entry "%s".
146*	chipscope2)
xilinx.com:ip:ila:6.12default:default2$
cfc1e1dee73279982default:defaultZ16-220h px� 
�
Generating IP %s for %s.
1712*coregen2)
xilinx.com:ip:ila:6.12default:default2

u_ila_1_CV2default:defaultZ19-3806h px� 
�
NRe-using generated and synthesized IP, "%s", from Vivado IP cache entry "%s".
146*	chipscope2)
xilinx.com:ip:ila:6.12default:default2$
cfc1e1dee73279982default:defaultZ16-220h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.072default:default2
00:00:00.072default:default2
1837.7622default:default2
0.0002default:default2
206782default:default2
574612default:defaultZ17-722h px� 
W
BPhase 1 Generate And Synthesize Debug Cores | Checksum: 21b439f6a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:07 ; elapsed = 00:01:08 . Memory (MB): peak = 1837.762 ; gain = 28.586 ; free physical = 20678 ; free virtual = 574612default:defaulth px� 
A
,Implement Debug Cores | Checksum: 28dc3ef26
*commonh px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2;
'design_1_gmii_to_rgmii_1_0_rgmii_rx_clk2default:default2�
�/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_clocks.xdc2default:default2
72default:default8@Z18-483h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default20
gmii_to_rgmii_0_rgmii_rx_clk2default:default2�
�/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii2axis_0_0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_clocks.xdc2default:default2
72default:default8@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
i

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
62default:default2
72default:defaultZ31-138h px� 
h
2Optimized connectivity to %s cascaded BUFGCE cells194*opt2
12default:defaultZ31-274h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 2 Retarget | Checksum: 2354bd53a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:09 ; elapsed = 00:01:09 . Memory (MB): peak = 1890.762 ; gain = 81.586 ; free physical = 20634 ; free virtual = 574172default:defaulth px� 
u

Phase %s%s
101*constraints2
3 2default:default2(
Constant Propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
J
Eliminated %s cells.
10*opt2
372default:defaultZ31-10h px� 
G
2Phase 3 Constant Propagation | Checksum: e3c8c142
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:10 ; elapsed = 00:01:10 . Memory (MB): peak = 1890.762 ; gain = 81.586 ; free physical = 20633 ; free virtual = 574162default:defaulth px� 
f

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101h px� 
V
 Eliminated %s unconnected nets.
12*opt2
3792default:defaultZ31-12h px� 
W
!Eliminated %s unconnected cells.
11*opt2
1512default:defaultZ31-11h px� 
9
$Phase 4 Sweep | Checksum: 16bb68009
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:10 ; elapsed = 00:01:11 . Memory (MB): peak = 1890.762 ; gain = 81.586 ; free physical = 20633 ; free virtual = 574162default:defaulth px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.02 . Memory (MB): peak = 1890.762 ; gain = 0.000 ; free physical = 20632 ; free virtual = 574152default:defaulth px� 
J
5Ending Logic Optimization Task | Checksum: 16bb68009
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:10 ; elapsed = 00:01:11 . Memory (MB): peak = 1890.762 ; gain = 81.586 ; free physical = 20627 ; free virtual = 574112default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2;
'design_1_gmii_to_rgmii_1_0_rgmii_rx_clk2default:default2�
�/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_clocks.xdc2default:default2
72default:default8@Z18-483h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default20
gmii_to_rgmii_0_rgmii_rx_clk2default:default2�
�/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii2axis_0_0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_clocks.xdc2default:default2
72default:default8@Z18-483h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


*pwropth px� 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
32default:default2
42default:defaultZ34-162h px� 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201h px� 
�
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
02default:default2
02default:default2
82default:defaultZ34-65h px� 
N
9Ending PowerOpt Patch Enables Task | Checksum: 16bb68009
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2208.941 ; gain = 0.000 ; free physical = 20493 ; free virtual = 572752default:defaulth px� 
J
5Ending Power Optimization Task | Checksum: 16bb68009
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2208.941 ; gain = 318.180 ; free physical = 20493 ; free virtual = 572752default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
782default:default2
222default:default2
222default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:01:142default:default2
00:01:122default:default2
2208.9412default:default2
463.7892default:default2
204932default:default2
572752default:defaultZ17-722h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.102default:default2
00:00:00.022default:default2
2208.9412default:default2
0.0002default:default2
204902default:default2
572752default:defaultZ17-722h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
�/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.runs/impl_2/design_1_wrapper_drc_opted.rpt�/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.runs/impl_2/design_1_wrapper_drc_opted.rpt2default:default8Z2-168h px� 


End Record