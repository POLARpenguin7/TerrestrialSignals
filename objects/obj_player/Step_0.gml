/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B3653FD
/// @DnDComment : old code, commented out. $(13_10)1 would be pressing left $(13_10)-1 would be pressing right $(13_10)0 would be no imput
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 42F4DA9C
/// @DnDComment : key left OR $(13_10)dpad left OR $(13_10)left joystick left 
/// @DnDArgument : "expr" "keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2)"
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 45E69855
/// @DnDComment : key right OR $(13_10)dpad right OR $(13_10)left joystik right 
/// @DnDArgument : "expr" "keyboard_check(vk_right)||gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh) > 0.2)"
/// @DnDArgument : "var" "controls_input_right"
controls_input_right = keyboard_check(vk_right)||gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh) > 0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 101D06CD
/// @DnDComment : set move-x to the subtraction of $(13_10)right input from left input 
/// @DnDArgument : "expr" "controls_input_right - controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right - controls_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35132AB2
/// @DnDComment : multiply move_x for higher speed from walk_speed 
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 66DB7D38
/// @DnDComment : debug for testing
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 74ED03B5
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l74ED03B5_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l74ED03B5_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FFA470C
	/// @DnDComment : reset the falling speed $(13_10)on movement y $(13_10)when you landed on ground
	/// @DnDParent : 74ED03B5
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0C7DC181
	/// @DnDParent : 74ED03B5
	var l0C7DC181_0;l0C7DC181_0 = keyboard_check_pressed(vk_space);if (l0C7DC181_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21C97E54
		/// @DnDComment : Jump!
		/// @DnDParent : 0C7DC181
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 6C021AB0
	/// @DnDParent : 74ED03B5
	/// @DnDArgument : "btn" "gp_face1"
	var l6C021AB0_0 = 0;var l6C021AB0_1 = gp_face1;if(gamepad_is_connected(l6C021AB0_0) && gamepad_button_check_pressed(l6C021AB0_0, l6C021AB0_1)){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 07D29581
		/// @DnDComment : arg 1 is device id$(13_10)arg 2 is left motor $(13_10)arg 3 is right motor 
		/// @DnDInput : 3
		/// @DnDParent : 6C021AB0
		/// @DnDArgument : "function" "gamepad_set_vibration"
		/// @DnDArgument : "arg" "0"
		/// @DnDArgument : "arg_1" "0.7"
		/// @DnDArgument : "arg_2" "0.7"
		gamepad_set_vibration(0, 0.7, 0.7);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 406E30FF
		/// @DnDComment : start ticking on alarm $(13_10)to reset the rumble to turn off $(13_10)after the countdown deleay
		/// @DnDParent : 6C021AB0
		/// @DnDArgument : "steps" "15"
		alarm_set(0, 15);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4ABB940A
		/// @DnDComment : jump
		/// @DnDParent : 6C021AB0
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 473C0214
/// @DnDComment : if you are not on the ground
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 497C2A2E
	/// @DnDComment : if we are falling $(13_10)after a jump
	/// @DnDParent : 473C0214
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "jump_speed"
	if(move_y < jump_speed){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 542A70AB
		/// @DnDComment : adds gravity
		/// @DnDParent : 497C2A2E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 29FA1314
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap_death"
var l29FA1314_0 = instance_place(x + 0, y + 0, [collision_tilemap_death]);if ((l29FA1314_0 > 0)){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 752DD2F2
	/// @DnDParent : 29FA1314
	room_restart();}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 1EA7941B
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, [collision_tilemap],4,0,0,walk_speed,jump_speed);