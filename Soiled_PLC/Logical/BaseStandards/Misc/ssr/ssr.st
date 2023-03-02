(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: ssr
 * File: ssr.st
 * Author: treamsbottom
 * Created: July 16, 2015
 ********************************************************************
 * Implementation of program ssr
 ********************************************************************)
//V1.00.1 FIRST VERSION
PROGRAM _INIT


END_PROGRAM


PROGRAM _CYCLIC

myHaltSys				:= Std.HaltSysZone[0];

//Inputs
i_bagApproach[1]		:= X[212].X01;

FOR n := 1 TO LOCAL_MAX_SPEED_REDUCERS DO	

	ctu_tripCount[n](CU	:= i_bagApproach[n],PV := 2,RESET := ton_10ms_openBrush[n].Q);
	ton_10ms_openBrush[n](IN := NOT myHaltSys AND o_closeBrush[n],PT	:= 300);		

	IF (ctu_tripCount[n].CV >= 2) THEN
		o_closeBrush[n] := TRUE;
	END_IF;

	
	IF ton_10ms_openBrush[n].Q THEN
		o_closeBrush[n] := FALSE;
	END_IF;
END_FOR;


	
//Outputs
Y[212].Y05		:= o_closeBrush[1];	



END_PROGRAM
