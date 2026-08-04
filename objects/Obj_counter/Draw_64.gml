/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 798E7477
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l798E7477_0 = false;l798E7477_0 = instance_exists(obj_player);if(!l798E7477_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 714597F1
	/// @DnDParent : 798E7477
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 70C9DA64
/// @DnDComment : draws the image
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1D89BED9
/// @DnDArgument : "font" "Font_open_sans"
/// @DnDSaveInfo : "font" "Font_open_sans"
draw_set_font(Font_open_sans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7FBF7F9D
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "caption" ""Coins: ""
/// @DnDArgument : "text" "global.coins"
draw_text_transformed(32, 32, string("Coins: ") + string(global.coins), 1, 1, 0);