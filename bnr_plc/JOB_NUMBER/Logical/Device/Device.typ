
TYPE
	Device_typ : 	STRUCT 
		RequestRelease : UINT; (*The device wants to release, Will be a line destination OR DEVICE_RELEASE_ID if not destination in bag*)
		ReadyToRecieve : BOOL; (*The device is able to recieve a bag *)
		RecieveFromID : UINT; (*(Normally 0, But when using a point with multiple options set the ID we want to release)*)
		Recieved : BOOL; (*The device has recieved a bag, instruct previous device to copy data*)
		BagInTransit : BOOL; (*The incoming device has sent a bag.*)
		ClearDestination : BOOL; (*Set this to indicate to the incoming device to clear the bag destination on data transfer.*)
		Bag : UINT; (*The bag number where to incoming device must copy data to.*)
	END_STRUCT;
END_TYPE
