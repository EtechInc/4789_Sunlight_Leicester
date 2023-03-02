// Initialise the Comm registers.
ACTION _initialiseComms: 
  //Generated Init Code.
  FOR n := 0 TO EVUE_COMM_BUFFER_SIZE DO
    CommArray[n] := 0;
  END_FOR;

END_ACTION
