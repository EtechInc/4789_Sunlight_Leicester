
TYPE
RailComm_typ :STRUCT
  Messages : RailMessages_typ;
END_STRUCT;
RailMessages_typ : STRUCT
  Write : UINT;
  Read : ARRAY[0..15] OF UINT;
END_STRUCT;

  bnr_io : STRUCT
    X01 : BOOL;
    X02 : BOOL;
    X03 : BOOL;
    X04 : BOOL;
    X05 : BOOL;
    X06 : BOOL;
    X07 : BOOL;
    X08 : BOOL;
    X09 : BOOL;
    X10 : BOOL;
    X11 : BOOL;
    X12 : BOOL;
    X13 : BOOL;
    X14 : BOOL;
    X15 : BOOL;
    X16 : BOOL;
    X17 : BOOL;
    X18 : BOOL;
    X19 : BOOL;
    X20 : BOOL;
    Y01 : BOOL;
    Y02 : BOOL;
    Y03 : BOOL;
    Y04 : BOOL;
    Y05 : BOOL;
    Y06 : BOOL;
    Y07 : BOOL;
    Y08 : BOOL;
    Y09 : BOOL;
    Y10 : BOOL;
    Y11 : BOOL;
    Y12 : BOOL;
    Y13 : BOOL;
    Y14 : BOOL;
    Y15 : BOOL;
    Y16 : BOOL;
    Y17 : BOOL;
    Y18 : BOOL;
    Y19 : BOOL;
    Y20 : BOOL;
  END_STRUCT;

  rail : 	STRUCT
    ac : BOOL;
    activity : BOOL;
    after : BOOL;
    after_raw : BOOL;
    after_a : BOOL;
    after_a_raw : BOOL;
    after_b : BOOL;
    after_b_raw : BOOL;
    air_pressure : BOOL;
    alarm : BOOL;
    alarm_time : TIME;
    arm: BOOL;
    arrive : BOOL;
    arrive_raw : BOOL;
    at_rail : BOOL;
    bag_emptied : BOOL;
    before : BOOL;
    before_raw : BOOL;
    bnx : BOOL;
    bottom_door : BOOL;
    bottom_door_sensor : BOOL;
    bring_ok : BOOL;
    bufflector_door_weight : BOOL;
    buffer_protection : BOOL;
    busy : BOOL;
    cake_break_bypass : BOOL;
    cake_break_done : BOOL;
    cake_break_signal : BOOL;
    cake_break_start : BOOL;
    cake_close : BOOL;
    cake_left : BOOL;
    cake_open : BOOL;
    cake_right : BOOL;
    call_button : BOOL;
    capture_weight: BOOL;
    catch : BOOL;
    cc_open_bottom : BOOL;
    cc_open_bottom_os : BOOL;
    cc_open_top : BOOL;
    cc_open_top_os : BOOL;
    cc_shut_bottom : BOOL;
    cc_shut_bottom_os : BOOL;
    cc_shut_top : BOOL;
    cc_shut_top_os : BOOL;
    change_reset : BOOL;
    chute : BOOL;
    chute_clear : BOOL;
    chute_in_position : BOOL;
    clamp : BOOL;
    clear_belt : BOOL;
    close : BOOL;
    close_bottom : BOOL;
    close_top : BOOL;
    closed : BOOL;
    comm_ok : BOOL;
    counter : USINT;
    conv_estop : BOOL;
    conv_fwd : BOOL;
    conv_rev : BOOL;
    conveyor_running : BOOL;
    custom_bring_lock : BOOL;
    custom_send_lock : BOOL;
    cycle_count : INT;
    cylinderAtReceive : BOOL;
    cylinderAtRelease : BOOL;
    dampner : BOOL;
    dampner_closed : BOOL;
    dampner_open : BOOL;
    debagger_arm : BOOL;
    delayed_bottom_door : BOOL;
    destination : INT;
    device_received : BOOL;
    device_receive_ok : BOOL;
    device_release_ok : BOOL;
    dog_sensor : BOOL;
    done : BOOL;
    done_smashing : BOOL;
    door_sensor : BOOL;
    down : BOOL;
    down_button : BOOL;
    down_raw : BOOL;
    emergency_cut_off : BOOL;
    empty : BOOL;
    empty_bag : BOOL;
    energize : BOOL;
    fire : BOOL;
    fire_cyl_receive : BOOL;
    fire_cyl_release : BOOL;
    fire_down : BOOL;
    fire_f_trig : F_TRIG;
    fire_r_trig : R_TRIG;
    fire_ns : BOOL;
    fire_os : BOOL;
    fire_up : BOOL;
    fired: BOOL;
    firing : BOOL;
    firing_reset : BOOL;
    flip : BOOL;
    flipped : BOOL;
    fnx : BOOL;
    foot : BOOL;
    front : BOOL;
    front_a : BOOL;
    front_b : BOOL;
    front_bag_mt : BOOL;
    front_raw : BOOL;
    front_stp : BOOL;
    full : BOOL;
    full_sensor : BOOL;
    green_light : BOOL;
    going_to : BOOL;
    going_to_os : BOOL;
    going_to_ns : BOOL;
    going_to_r_trig : R_TRIG;
    going_to_f_trig : F_TRIG;
    grab : BOOL;
    high_valve : BOOL;
    input_enabled : BOOL;
    insert : BOOL;
    insert_reset : BOOL;
    in_pos : BOOL; (*In position after dbnc*)
    in_pos_raw : BOOL;  (*In position sensor*)
    inx : BOOL;
    io_ok : BOOL;
    io_ok_A : BOOL;
    io_ok_B : BOOL;
    io_ok_C : BOOL;
    jogmode : BOOL;
    latch : BOOL;
    latched : BOOL;
    leave1 : BOOL;
    leave2 : BOOL;
    leave3 : BOOL;
    level_arm : BOOL;
    lift_stp : BOOL;
    LFT1 : BOOL;
    LFT1_RAW : BOOL;
    LFT2 : BOOL;
    LFT2_RAW : BOOL;
    LFT3 : BOOL;
    LFT3_RAW : BOOL;
    LFT4 : BOOL;
    LFT4_RAW : BOOL;
    LFT5 : BOOL;
    LFT5_RAW : BOOL;
    lift_clamp : BOOL;
    lift_jammed : BOOL;
    lift_position : INT;
    lift_running : BOOL;
    loaded : BOOL;
    loading_position : BOOL;
    loading_position_raw : BOOL;
    loading_signal : BOOL;
    lockout : BOOL;
    log_dist : INT;
    log_now_a : BOOL;
    log_now_b : BOOL;
    low_air_alarm : BOOL;
    low_valve : BOOL;
    man_open : BOOL;
    man_send : BOOL;
    man_send_button_1 : BOOL;
    man_send_button_2 : BOOL;
    man_send_button : BOOL;
    manual_mode : BOOL;
    marker_made : BOOL;
    mid : BOOL;
    mid_raw : BOOL;
    min_weight : BOOL;
    min_weight_send : BOOL;
    mod_count : INT;
    move_rail : BOOL;
    move_rail_up : BOOL;
    move_rail_down : BOOL;
    mt_arrived : BOOL;
    near_weight : BOOL;
    near_weight_send : BOOL;
    need_to_empty_bd : BOOL;
    need_to_empty_td : BOOL;
    next_rails_ok : BOOL;
    no_dests_ok : BOOL;
    not_io_ok : BOOL;
    notify_weight : BOOL;
    oc : BOOL;
    ok_to_send : BOOL;
    onoff : BOOL;
    open : BOOL;
    open_bottom : BOOL;
    open_manual : BOOL;
    open_signal : BOOL;
    open_pendant : BOOL;
    opened : BOOL;
    out1 : BOOL;
    over_full_sensor : BOOL;
    over_full_light : BOOL;
    over_weight : BOOL;
    paddle_sensor : BOOL;
    pilot_light : BOOL;
    poa : BOOL;
    pos1 : BOOL;
    pos1_raw : BOOL;
    pos2 : BOOL;
    pos2_raw : BOOL;
    pos3 : BOOL;
    pos3_raw : BOOL;
    pos4 : BOOL;
    pos4_raw : BOOL;
    pos_1_after_raw : BOOL;
    pos_1_after : BOOL;
    pos_2_after_raw : BOOL;
    pos_2_after : BOOL;
    pos_3_after_raw : BOOL;
    pos_3_after : BOOL;
    pos_4_after_raw : BOOL;
    pos_4_after : BOOL;
    preceeding_rails_ok : BOOL;
    pressure_full_line_1 : BOOL;
    pressure_full_line_2 : BOOL;
    pressure_full_line_3 : BOOL;
    pressure_sensor : BOOL;
    pressure_sensor_1 : BOOL;
    pressure_sensor_2 : BOOL;
    pressure_sensor_3 : BOOL;
    pressure_stop : BOOL;
    pressure_stop_1 : BOOL;
    pressure_stop_2 : BOOL;
    pressure_stop_3 : BOOL;
    prox1 : BOOL;
    prox1_raw : BOOL;
    prox2 : BOOL;
    prox2_raw : BOOL;
    prs_a : BOOL;
    prs_b : BOOL;
    pusher : BOOL;
    puncher : BOOL;
    ratchet: BOOL;
    rail_full : BOOL;
    rail_mt : BOOL;
    rail_out_sensor : BOOL;
    rail_sensor: BOOL;
    raise_to_send : BOOL;
    ratchet_position : INT := 0;
    ready_to_send : BOOL;
    rear : BOOL;
    rear_raw : BOOL;
    rear_stp : BOOL;
    receive_manual : BOOL;
    receive_signal : BOOL;
    receive_pendant : BOOL;
    receive_position : BOOL;
    receive_position_raw : BOOL;
    received : BOOL;
    receiving : BOOL;
    red_light : BOOL;
    release_position : BOOL;
    release_position_raw : BOOL;
    releasing : BOOL;
    remove : BOOL;
    remove_reset : BOOL;
    reset : BOOL;
    reset_switch : BOOL;
    retry : BOOL;
    request_rotate: BOOL; (* Bit for Supertrack rotaty point types - so the plc knows to rotate. *)
    ring_pusher : BOOL;
    run_conveyor : BOOL;
    run_slant : BOOL;
    running : BOOL;
    safety : BOOL;
    safety_zone : BOOL;
    safety_stop : BOOL;
    safety_stop_1 : BOOL;
    safety_stop_2 : BOOL;
    safety_stop_3 : BOOL;
    safety_stop_4 : BOOL;
    safety_stop_5 : BOOL;
    send_button : BOOL;
    send_manual : BOOL;
    send_ok : BOOL;
    send_ready : BOOL;
    sending : BOOL;
    sent : BOOL;
    servo_command : INT;
    servo_position : INT;
    slant_inx : BOOL;
    sort_entry_clear : BOOL;
    sort_exit_clear : BOOL;
    short_stroke : BOOL;
    shut : BOOL;
    simple_lockout : BOOL;
    sis_weight_not_ok : BOOL;
    sis_weight_ok : BOOL;
    sling_ready : BOOL;
    smashed1 : BOOL;
    smashed2 : BOOL;
    state : INT;
    static_close : BOOL;
    static_open : BOOL;
    stb : BOOL;
    stb_delay : BOOL;
    stb_down : BOOL;
    stb_up : BOOL;
    start_button : BOOL;
    stop_button : BOOL;
    stopped : BOOL;
    stp : BOOL;
    stp_a : BOOL;
    stp_b : BOOL;
    sw_in_a : BOOL;
    sw_in_b : BOOL;
    sw_out_a : BOOL;
    sw_out_b : BOOL;
    swa : BOOL;
    swb : BOOL;
    swc : BOOL;
    switch : BOOL;
    switch_delay : BOOL;
    switch_trigger : BOOL;
    swx : BOOL;
    swy : BOOL;
    swz : BOOL;
    table_up : BOOL;
    table_down : BOOL;
    tilt_arm : BOOL;
    timeout : BOOL;
    to_pos1 : BOOL;
    to_pos2 : BOOL;
    to_pos3 : BOOL;
    to_pos4 : BOOL;
    top_door : BOOL;
    top_door_lock : BOOL;
    top_door_delay : BOOL;
    top_rail_busy : BOOL;
    transfer_requested_signal : BOOL;
    trolley_seen : BOOL;
    trolley_seen_delay : BOOL;
    up : BOOL;
    up_button : BOOL;
    up_raw : BOOL;
    upper_down : BOOL;
    upper_up : BOOL;
    wait_for_mt : BOOL;
    wait_for_mt_bd : BOOL;
    wait_for_mt_td : BOOL;
    waiting : BOOL;
    weight_ok : BOOL;
    xfer_complete : BOOL;
    xfer_in_progress : BOOL;
    warning : BOOL;
    warning_com : INT;
    zone_clear : BOOL;
  END_STRUCT;

  SinglePanelStatusArray : STRUCT
    panels : ARRAY[0..3] OF INT;
  END_STRUCT;

  BC : STRUCT
    VDC_OK : BOOL;
  END_STRUCT;

  Weight_typ : STRUCT
    Wgt_Channel_1 : DINT;
    Wgt_Channel_2 : DINT;
    Config_Channel_1 : USINT;
    Config_Channel_2 : USINT;
  END_STRUCT;

  CakeBreaker : STRUCT
    both_clear : BOOL;
    both_seen : BOOL;
    cake_close : BOOL;
    cake_left : BOOL;
    cake_open : BOOL;
    cake_right : BOOL;
    crushes_after_seen : INT := 3;
    crushes_before_check : INT := 3;
    crush_count : INT := 0;
    done : BOOL;
    flutter_count : INT := 0;
    reset : BOOL;
    seen_count : INT := 0;
    sling_loading_flutters : INT := 5;
    start : BOOL;
    state : INT := 0;
    total_crushes : INT := 20;
    CrushCloseTimer : TON;
    CrushCloseTime : INT := 5000;
    CrushOpenTimer : TON;
    CrushOpenTime : INT := 3000;
    HalfCrushCloseTimer : TON;
    HalfCrushCloseTime : INT := 2500;
    HalfCrushOpenTimer : TON;
    HalfCrushOpenTime : INT := 1500;
    FlutterCloseTimer : TON;
    FlutterCloseTime : INT := 750;
    FlutterOpenTimer : TON;
    FlutterOpenTime : INT := 1000;
  END_STRUCT;


END_TYPE



