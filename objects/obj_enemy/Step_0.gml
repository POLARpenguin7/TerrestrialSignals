/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B3653FD
/// @DnDComment : original. (no gamepad support)$(13_10)$(13_10)1 would be pressing right $(13_10)-1 would be pressing left $(13_10)0 would be no input.
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 66DB7D38
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

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5934731B
	/// @DnDComment : is there a wall?
	/// @DnDParent : 74ED03B5
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	var l5934731B_0 = instance_place(x + (25 * sign(move_x)), y + 0, [collision_tilemap]);if ((l5934731B_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21C97E54
		/// @DnDComment : update move_y $(13_10)for a jump.
		/// @DnDParent : 5934731B
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6F282440
/// @DnDComment : is there a gap in the floor?
/// @DnDArgument : "x" "x + (30 * sign(move_x))"
/// @DnDArgument : "y" "y + 50"
/// @DnDArgument : "object" "collision_tilemap"
/// @DnDArgument : "not" "1"
var l6F282440_0 = instance_place(x + (30 * sign(move_x)), y + 50, [collision_tilemap]);if (!(l6F282440_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 732A9B0B
	/// @DnDComment : turn around for move 5
	/// @DnDParent : 6F282440
	/// @DnDArgument : "expr" "move_x * -1"
	/// @DnDArgument : "var" "move_x"
	move_x = move_x * -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BF08C95
	/// @DnDParent : 6F282440
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "move_y"
	move_y = -jump_speed;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 473C0214
/// @DnDComment : you are in the air
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

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 1EA7941B
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, [collision_tilemap],4,0,0,walk_speed,jump_speed);