[LIT]
5
9	68	18	81	18
14	31	18	42	18
15	42	18	55	18
16	42	8	106	8
17	42	18	42	8
[TET]
4
10	36	21	55	23	4	5	SAFETIME#500ms
11	106	17	123	19	4	3	Output_Release
12	12	17	31	19	4	5	Zone_Dependancy
13	106	7	122	9	4	3	Output_Enable
[FBS]
2
4	57	14	66	26	0	TON_S	TON_S_1
8	83	14	104	22	1	SAFEBOOL_TO_BOOL	
[FPT]
6
0	57	17	62	19	IN	0	129	0	SAFEBOOL	
1	57	21	62	23	PT	0	128	0	SAFETIME	
2	63	17	66	19	Q	1	0	129	SAFEBOOL	
3	62	21	66	23	ET	1	0	128	SAFETIME	
6	83	17	85	19		0	640	0	SAFEBOOL	
7	103	17	104	19		1	0	640	BOOL	
[KOT]
0
[VER]
0