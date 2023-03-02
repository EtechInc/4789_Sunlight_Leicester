
ACTION _alarms: 
	// Alarms when tracking bags only
	FOR buffer := 1 TO MAX_LINES_IN DO
		IF (myBuffBag[buffer] > 0) THEN
			bag_buff		ACCESS ADR(Bag[myBuffBag[buffer]]);
			IF (bag_buff.Cat = 0) AND i_bagAtBuffer[buffer] THEN
				alarm.Name := ALM_BAG_DATA_ERROR;
				alarm.Time := 0;
				alarm.Bag := myBuffBag[buffer];
			ELSIF bag_buff.Cat > 0 AND NOT i_bagAtBuffer[buffer] AND (step < 3) THEN 
				alarm.Name := ALM_BAG_NOT_SETTLED;
				alarm.Time := bufferSettleTime;
				alarm.Bag := myBuffBag[buffer];
			END_IF;
		END_IF;
	END_FOR;		
	//
	FOR line := 1 TO MAX_LINES_OUT DO		
		IF (myRelLine[line] > 0) THEN
			bag_out		 	ACCESS ADR(Bag[myOutBag[line]]);
			IF Line[myRelLine[line]].Trip THEN 	
				alarm.Name := ALM_SWITCH_FAULT;
				alarm.Time := 500;
				alarm.Bag := Line[myRelLine[line]].LastBag;		
			ELSIF (myOutBag[line] > 0) THEN 
				IF (Line[myRelLine[line]].Clear AND (bag_out.Cat > 0)) OR (Line[myRelLine[line]].Full AND (bag_out.Cat = 0)) THEN 
					alarm.Name := ALM_SWITCH_FAULT;
					alarm.Time := 500;
					alarm.Bag := myOutBag[line];						
				END_IF;
			END_IF;
		END_IF;			
	END_FOR;				
END_ACTION
