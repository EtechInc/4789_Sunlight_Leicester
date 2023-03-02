
TYPE
	psu_typ : 	STRUCT 
		Status : psu_channel_typ;
		Fault : psu_channel_typ;
		ton_channelStatus : ARRAY[0..MAX_CHANNELS]OF TON_10ms;
	END_STRUCT;
	psu_channel_typ : 	STRUCT 
		channel : ARRAY[0..8]OF BOOL;
	END_STRUCT;
END_TYPE
