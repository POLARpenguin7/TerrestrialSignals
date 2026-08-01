/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FC10069
/// @DnDArgument : "expr" "floor((total_seconds div 60) mod 60)"
/// @DnDArgument : "var" "display_minutes"
display_minutes = floor((total_seconds div 60) mod 60);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48942466
/// @DnDArgument : "expr" "floor(total_seconds mod 60)"
/// @DnDArgument : "var" "display_seconds"
display_seconds = floor(total_seconds mod 60);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6948C23C
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" ""Time: ""
/// @DnDArgument : "var" "string(display_minutes) + ":" + string(display_seconds)"
draw_text(20, 20, string("Time: ") + string(string(display_minutes) + ":" + string(display_seconds)));