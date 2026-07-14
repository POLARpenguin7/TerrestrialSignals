/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52118C96
/// @DnDArgument : "expr" "x+move_x"
/// @DnDArgument : "var" "x"
x = x+move_x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B3653FD
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E850464
/// @DnDArgument : "expr" "move_x + walk_speed "
/// @DnDArgument : "var" "move_x"
move_x = move_x + walk_speed ;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 66DB7D38
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));