
PROGRAM _CYCLIC

ton_Change.IN := NOT ton_Change.Q;
ton_Change.PT := 1000;
ton_Change();

Bag[221].Ur1 := 16#FF00;
	
FOR n := 221 TO 228 DO
	IF Bag[n].Wgt < 850 THEN
		Bag[n].Wgt := Bag[n].Wgt + 10;		
	ELSE
		Bag[n].Wgt := 0;		
	END_IF;		
	IF ton_Change.Q THEN		
		ChangeIndex := ChangeIndex + 1;
		CASE ChangeIndex OF
			1:
				IF Bag[n].Cat < 10 THEN
					Bag[n].Cat := Bag[n].Cat + 1;	
				ELSE
					Bag[n].Cat := 0;	
				END_IF;
				Bag[n].Prg := UDINT_TO_USINT(Bag[n].Cat);		
			2:
				IF Bag[n].Cus < 10 THEN
					Bag[n].Cus := Bag[n].Cus + 1;	
				ELSE
					Bag[n].Cus := 0;	
				END_IF;
			ELSE				
				ChangeIndex := 1;		
				
		END_CASE;
	
	END_IF;		
END_FOR;		
	 
END_PROGRAM
