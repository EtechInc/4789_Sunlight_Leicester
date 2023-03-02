
TYPE
 RX_Buffer_CCT_PLC :  STRUCT 
  UpLeft : USINT;
  DwnLeft : USINT;
  UpRight : USINT;
  DwnRight : USINT;
  sendRequest : USINT;
 END_STRUCT;
 buffer_UDP_CTT :  STRUCT 
  use_long_id : USINT;
  UDP_OK : USINT;
  Customer : ARRAY[0..14] OF UINT;
  Category : ARRAY[0..14] OF UINT;
  Cat : ARRAY[0..4] OF UINT;
  Wgt : ARRAY[0..4] OF USINT;
  BackColor : USINT;
  ForeColor : USINT;
  Future : ARRAY[0..4] OF USINT;
 END_STRUCT;
END_TYPE


