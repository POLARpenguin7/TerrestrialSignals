/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 30B81C5F
/// @DnDApplyTo : {win_obj}
with(win_obj) image_alpha = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 67D52D29
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "move_x"
with(obj_player) {
move_x = false;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 772354BE
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "move_y"
with(obj_player) {
move_y = false;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 70EC70E1
/// @DnDApplyTo : {Crown_obj}
with(Crown_obj) instance_destroy();