//Interface Manager to work with BLOCK Electronic Fuse
//Works on a pulse signal basis with 17 bits... Must be called cylically at 10ms.. Ignore rate in documentation, Run at max 200ms pulse.
//V1.00 - First Release
PROGRAM _INIT
scanCount[x] := 1;
step[x] := 0;	 
refreshTime := 500;//5 second cycle to read data
init[x] := 1;	
END_PROGRAM

PROGRAM _CYCLIC
i_readBit[1] := X[2].X01;//Input to read data pulses
i_readBit[2] := X[2].X02; 
useExtendedComms := 0;//Use 17 or 89 bit comms.

FOR x := 1 TO MAX_PSU DO	
	
	o_sendBit[x] := 0;	
	
	//Regulate Scan Count to ensure pulse on step[x], and regulate to 70ms Scan time.	
	scanCount[x] := scanCount[x] + 1; 	
	//Create Pulse step[x]s..	
	IF (scanCount[x] > 20) THEN	
		IF step[x] < 17 THEN
			step[x] := step[x] + 1;
		END_IF;		
		scanCount[x] := 1;			
	END_IF
	
	ton_TimeOut[x].IN := (step[x] =17);	
	ton_TimeOut[x].PT := 3000;	
	ton_TimeOut[x]();
	
	IF ton_TimeOut[x].Q THEN	
		step[x] := 100;	
	END_IF;		
			
	o_pulse[x] := (scanCount[x] <= 10);		
	ton_reset[x].IN := (step[x] = 99) AND NOT i_readBit[x];
	ton_reset[x].PT := 50;//Minumum time between reading..
	ton_reset[x]();
	
	ton_refresh[x].IN := (step[x] = 100) AND NOT i_readBit[x];
	ton_refresh[x].PT := refreshTime;
	ton_refresh[x]();		
		
		
	CASE step[x] OF
		
		0: //Start Transmission. Set bit to 0
		
		1..8://1-8 are the required States of the channels 		
			o_sendBit[x] := 1;
			PSU[x].Status.channel[9-step[x]] := i_readBit[x];
		9: //Use the first 8 bits of this transmission .. (Set to to True to reset[x])
		 	o_sendBit[x] := reset[x];
			PSU[x].Fault.channel[8] := i_readBit[x];
		10://Frame Length;0 = 17 bit,  1=89bit. 
			o_sendBit[x] := useExtendedComms;
			PSU[x].Fault.channel[7] := i_readBit[x];
		11://Set values to read//must use extendmode
			o_sendBit[x] := 0;
			PSU[x].Fault.channel[6] := i_readBit[x];
		12..16://Do nothing.	
			o_sendBit[x] := 0;	
			PSU[x].Fault.channel[17-step[x]] := i_readBit[x];
		17: //Wait for respose from unit.		
			o_sendBit[x] := 0;
			o_pulse[x] := useExtendedComms;	
			IF i_readBit[x] AND NOT useExtendedComms THEN
				reset[x] := 0;
				step[x] := 99;		
			END_IF;	
		18..88://Extended data to recieve.
			o_sendBit[x] := 0;
			o_pulse[x] := o_pulse[x] AND useExtendedComms;
		89:		
			o_sendBit[x] := 0;
			o_pulse[x] := 0;	
			IF i_readBit[x] AND useExtendedComms THEN
				reset[x] := 0;
				step[x] := 99;		
			END_IF;	
		99://Ack and restart cycle.
			o_sendBit[x] := 0;
			o_pulse[x] := 0;			
			//reset[x] cycle. Must wait minimum 200ms
			IF ton_reset[x].Q THEN	
				step[x] := 100;	
			END_IF;
		100://Idle...
			o_sendBit[x] := 0;
			o_pulse[x] := 0;
			init[x] := 0;
				
			//Wait to check status 30 sec cycle..
			IF ton_refresh[x].Q OR reset[x] THEN	
				step[x] := 0;
				scanCount[x] := 1;	
			END_IF;	
	
	END_CASE;	

//Ensure Pulse is generated. Always set output to 	
Y[2].Y01	:= (o_sendBit[1] AND NOT o_pulse[1]) OR (o_pulse[1] AND NOT o_sendBit[1]);
Y[2].Y02	:= (o_sendBit[2] AND NOT o_pulse[2]) OR (o_pulse[2] AND NOT o_sendBit[2]);
//Alarms
	//reset[x] := 0;		
	FOR n:= 1 TO MAX_CHANNELS DO
		PSU[x].ton_channelStatus[n].IN := NOT PSU[x].Status.channel[n] AND NOT init[x];
		PSU[x].ton_channelStatus[n].PT := 50;
		PSU[x].ton_channelStatus[n]();
		
		//Alarm.Active[PSU[x]_ALM_INDEX + n] := ton_channelStatus[n].Q;
		//IF Alarm.Acknowledged[PSU[x]_ALM_INDEX + n] THEN
		//	reset[x] := 1;	
		//END_IF;		
	END_FOR; //CHANNEL LOOP
END_FOR;//PSU LOOP		
		
END_PROGRAM

