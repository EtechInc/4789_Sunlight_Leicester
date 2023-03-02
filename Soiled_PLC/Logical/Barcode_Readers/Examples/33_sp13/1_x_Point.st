(********************************************************************
* COPYRIGHT -- HP
********************************************************************
* PROGRAM: 1_x_Point
* File: 1_x_Point.st
* Author: treamsbottom
* Created: March 13, 2015
********************************************************************
* Implementation OF PROGRAM 1_x_Point
********************************************************************)
//Version 1.0.0 First Release.
//Version 1.01.0 - Split buffer clear and bag arrive vars..
//Version 2.00.1 - Add transit bag position to comply with new Standards. First release with new standards.
//Version 2.00.2 - Make transit bag optional..
PROGRAM _INIT
//Configuration
mySeq						:= 33;	//Sequence number
no_RecieveLines				:= LOCAL_MAX_DESTS;	//Number of lines buffer can send to.
myPoint						:= 13;

myRelLine[1]				:= 0; 
myRelLine[2]				:= 56;

useDestinations 			:= 0; 		// Use bag dest to route bag	
myRelLineDest[1].dest[1]	:= 32; 	// Destination in bag if different to buffer... 
myRelLineDest[1].dest[2]	:= 33;

myRelLineDest[2].dest[1]	:= 31;	

myZone						:= 0;
myIO						:= 113;
myBag						:= 285; //Buffer Bag set to use tracking
myTransitBag				:= 0;//Transit position	optional
bufferSettleTime			:= 600;  	// Time for bag to settle at buffer in.	
myHttp						:= 2;
//Vars for myOutBag, bufferclear and bagarrived MUST be set in the cyclic task if using request/enable
readComplete := 0;
END_PROGRAM
PROGRAM _CYCLIC
// Set constant LOCAL_MAX_DESTS in local var declaration.	

//Inputs
i_bagAtBuffer				:= X[myIO].X02;		
//i_bagAtBuffer				:= RequestRel.IC[1];

i_bagAtBufferOut[1] 		:= FALSE; // Any Single bag buffer out IO.
i_bufferOutOpen[1]			:= FALSE;
i_bagAtBufferOut[2] 		:= X[21].X01;	
i_bufferOutOpen[2]			:= Y[21].Y05;

RequestRel.PN[myPoint] 		:= FALSE;	

//** SET UP BAR code scanner...
myReader := 1;		
BarcodeReader[myReader].IPAddress := '10.8.4.151';
BarcodeReader[myReader].RetryFailCount := 20;// Maximum times TO try TO read the code before failing.
BarcodeReader[myReader].interface.result_Good 	:= X[4].X04;
BarcodeReader[myReader].interface.result_Bad 	:= X[4].X05;		

BarcodeReader[myReader].req_Read := FALSE;

Y[4].Y03 := BarcodeReader[myReader].interface.read;
Y[4].Y04 := BarcodeReader[myReader].interface.power;		
Y[113].Y05 := BarcodeReader[myReader].interface.airBlast;
//Get Bag number from barcode.
readBarcode := 	ton_10ms_SettledBuffer.Q AND (Bag[myBag].Cat > 0) AND ((Bag[myBag].Ur1 = 0) OR (Bag[myBag].Ur1 = DEFAULT_BAGNUMBER)) ;
BarcodeReader[myReader].req_Read := (readBarcode AND NOT readComplete);
IF (readBarcode AND BarcodeReader[myReader].read_Complete AND (BarcodeReader[myReader].decoded_Data.BagNumber > 0) ) THEN
	myBagNumber := BarcodeReader[myReader].decoded_Data.BagNumber;
	//Bag[myBag].Ur1 := myBagNumber;			
	readComplete := 1;	
ELSIF (readBarcode AND BarcodeReader[myReader].read_Fail) THEN	
	Bag[myBag].Ur1 := DEFAULT_BAGNUMBER;
	Bag[myBag].Ur2 := 1; //Send bag to maintenance if the code can;t be read	
	readComplete := 1;			
ELSIF NOT readBarcode THEN
	BarcodeReader[myReader].decoded_Data := READER_EMPTY_DATA;
	BarcodeReader[myReader].read_Complete := 0;	
	readComplete := 0;	
	myBagNumber := 0;
	
END_IF;		
IF readComplete AND (myBagNumber > 0) THEN
	_httpRequest;	
ELSE	
	HTTP_Comm[myHttp].Status := HTTP_COMM_STATUS_DISABLED;			
END_IF;	
	
	
//****** END Barcode..		
FOR n := 1 TO no_RecieveLines DO	
	bufferClear[n] := Line[myRelLine[n]].Clear AND NOT i_bagAtBufferOut[n] AND NOT i_bufferOutOpen[n];
	bagArrived[n] := bufferClear[n]; // Bag arrived condition here is the same. if we are using request/enable we must override below.	
	myOutBag[n] := Line[myRelLine[n]].LastBag;	
	o_select[n]	:= FALSE;
END_FOR;	

//For Request/Enable overwrite bufferClear and outbags.. 
myOutBag[1]	:= 226;
//myOutBag[2]	:= 206;	
// These are the conditions used to say a bag has arrived. Must be spilt from bufferclear so we do not release double bags due to alignment switches etc..	
//bagArrived[1] := Request.VC_HighLevel[2] AND (Bag[myOutBag[1]].Cat = 0) AND NOT X[33].X05;
bagArrived[1] := Request.LU[2];
//Bufferclear. Condition used to check the a buffer is clear for a bag to be released to. Check conditional things here, like safety stops and recieve switches on vc's	
//bufferClear[1] := bagArrived[1] AND Y[34].Y05 ; // Y[32].Y05 is safety stop we put this in the buffer clear condition only so we do not release a double bag if the recieve switch fails.
bufferClear[1] := bagArrived[1];	

o_reset			:= FALSE;
o_openBuffer	:= FALSE;

IF (myBag = 0) THEN	
	Alarm[mySeq].Bag	:= mySeq + 10000;			
ELSE		
	Alarm[mySeq].Bag	:= myBag;	
END_IF;
Alarm[mySeq].Name 		:= 0;
Alarm[mySeq].Beacon	:= TRUE;
Alarm[mySeq].Extra		:= 0;
Alarm[mySeq].Time		:= 3000;

//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> lastStep);
lastStep := step;

//Sequence
IF (step = 0) THEN
	//Disabled
END_IF;

//_reset Points 
ton_10ms_reset(IN:=((step = 1) AND NOT Std.HaltSysZone[myZone]), PT:= 200);	
IF (step = 1) THEN	
	o_reset := NOT Std.HaltSysZone[myZone];	
	IF ton_10ms_reset.Q THEN
		D[900 + mySeq] := 2;
		Count[mySeq] := Count[mySeq] + 1;	
	END_IF;		
END_IF;	


//Wait for bag to settle at buffer
ton_10ms_SettledBuffer(IN:= i_bagAtBuffer, PT:= bufferSettleTime);		
IF (step = 2) THEN	
	IF ton_10ms_SettledBuffer.Q AND NOT Std.HaltSysZone[myZone] THEN	
		IF (alt >= no_RecieveLines) THEN
			alt := 1;
		ELSE	
			alt := alt + 1;
		END_IF;
		IF (myBag > 0) THEN // -- SPECIAL Check bag number
			IF (Bag[myBag].Cat > 0) AND (Bag[myBag].Ur1 > 0) THEN 	
				RequestRel.PN[myPoint] := 1;
				myLine :=  0;				
				//	Decide which line the bag is going to.	
				IF useDestinations THEN
					FOR n := 1 TO no_RecieveLines DO // Search FOR the buffer with matching destination
						FOR x := 1 TO LOCAL_MAX_DESTS DO
							IF (myRelLineDest[n].dest[x] = 0) THEN
								myRelLineDest[n].dest[x] := myRelLine[n];					
							END_IF;	
							IF Bag[myBag].Dst = myRelLineDest[n].dest[x] THEN
								myLine := n;
							END_IF;
							IF (myLine > 0)THEN
								EXIT;
							END_IF;		
						END_FOR;
						IF (myLine > 0) THEN
							EXIT;
						END_IF;	
					END_FOR;	
				ELSE 
					myLine := alt;	
				END_IF;	
				//Check data valid
				IF (myLine > 0) AND (myLine <= LOCAL_MAX_DESTS) THEN
					IF (myTransitBag > 0)  AND (myOutBag[myLine] > 0) THEN 
						IF bufferClear[myLine] AND (Bag[myOutBag[myLine]].Cat = 0) AND (Bag[myTransitBag].Cat = 0) THEN
							IF (myRelLine[myLine] > 0) THEN
								C[myRelLine[myLine]] := 0;
							END_IF;
							Bag[myTransitBag] := Bag[myBag];
							Bag[myBag] := Bag[0];	
							D[900 + mySeq] := step + myLine;
						ELSIF (Bag[myTransitBag].Cat > 0) THEN
							Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
							Alarm[mySeq].Bag := myTransitBag;
						ELSIF Line[myRelLine[myLine]].Clear THEN	
							Alarm[mySeq].Name := ALM_BAG_NOT_SHOWN_ON_SCREEN;
							Alarm[mySeq].Bag := myOutBag[myLine];
						END_IF;			
					ELSIF (myOutBag[myLine] > 0) THEN // Don;t use tranit bag.
						IF bufferClear[myLine] AND (Bag[myOutBag[myLine]].Cat = 0) THEN
							IF (myRelLine[myLine] > 0) THEN
								C[myRelLine[myLine]] := 0;
							END_IF;
							D[900 + mySeq] := step + myLine;
						ELSIF Line[myRelLine[myLine]].Clear THEN	
							Alarm[mySeq].Name := ALM_BAG_NOT_SHOWN_ON_SCREEN;
							Alarm[mySeq].Bag := myOutBag[myLine];
						END_IF;	
					ELSE//Not configured correctly...		
						Alarm[mySeq].Name := ALM_GENERAL_SEQUENCE;	
					END_IF;	
				ELSE		
					Alarm[mySeq].Name := ALM_DEST_NOT_VALID;
				END_IF;			
			ELSIF (Bag[myBag].Cat = 0) THEN			
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;	
			END_IF;	
		ELSE
			//Empty Bag  	
			RequestRel.PN[myPoint] := 1;
			IF bufferClear[alt] THEN 	
				IF (myRelLine[alt] > 0) THEN
					C[myRelLine[alt]] := 0;
				END_IF;
				D[900 + mySeq] := step + alt;	
			END_IF;
		END_IF;
	ELSIF ((myBag > 0) AND (Bag[myBag].Cat > 0) AND NOT i_bagAtBuffer AND NOT Std.HaltSysZone[myZone]) THEN
		Alarm[mySeq].Name := ALM_BAG_NOT_SETTLED;
	END_IF;		
END_IF;


//Select Points AND release bag,NOTE step is greater than OR equal TO 3 so it will be a different step number FOR each destination.
IF (step >= 3) THEN
	myLine := step - 2;
	releaseValid := ((myTransitBag = 0) OR ((Bag[myTransitBag].Cat > 0) AND (Bag[myOutBag[myLine]].Cat = 0)));
	o_select[myLine] :=	TRUE;	
	o_openBuffer := releaseValid;
	bagReleased := (((myRelLine[myLine] > 0) AND Line[myRelLine[myLine]].Trip) OR ((myRelLine[myLine] = 0) AND NOT bagArrived[myLine]));	
	IF bagReleased AND releaseValid THEN	
		IF (myTransitBag > 0) AND (myOutBag[myLine] > 0) AND (myRelLine[myLine] > 0) THEN//Only transfer bag data out when releasing to a buffer.
			Bag[myOutBag[myLine]] := Bag[myTransitBag];	
			Bag[myTransitBag] := Bag[0];	
		ELSIF (myTransitBag = 0) AND (myOutBag[myLine] > 0) AND (myRelLine[myLine] > 0) THEN//Only transfer bag data out when releasing to a buffer.
			Bag[myOutBag[myLine]] := Bag[myBag];	
			Bag[myBag] := Bag[0];
		END_IF;	
		IF (myRelLine[myLine] = 0) AND (myBag > 0) THEN // Check data has been deleted by outgoing sequence when tracking bags and using request/enable
			IF (myTransitBag > 0) AND Bag[myTransitBag].Cat = 0 THEN	
				D[900 + mySeq]  := 1;	
			ELSIF (myOutBag[myLine] > 0) THEN
				IF Bag[myOutBag[myLine]].Cat > 0 THEN
					D[900 + mySeq]  := 1;
				END_IF;		
			ELSE
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;	
			END_IF;	
		ELSE		
			D[900 + mySeq]  := 1;		
		END_IF;
	ELSIF NOT releaseValid THEN		
		IF Bag[myTransitBag].Cat = 0 THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;	
		ELSIF Line[myRelLine[myLine]].Clear AND (Bag[myOutBag[myLine]].Cat > 0) THEN 
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Bag := myOutBag[myLine];	
		END_IF;		
	END_IF;	
END_IF;	

//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[myIO].Y06 := o_openBuffer;	
//EnableRel.IC[1] := o_openBuffer;// Example of using RequestRel interface.

Y[myIO].Y07 := o_select[1];
Y[myIO].Y08 := o_reset OR o_select[2];

//Alarms
timerAlarm(IN := NOT pls AND (Alarm[mySeq].Name > 0),PT:= Alarm[mySeq].Time);

Alarm[mySeq].On 	:= timerAlarm.Q;
Alarm[mySeq].ET 	:= timerAlarm.ET;

END_PROGRAM

