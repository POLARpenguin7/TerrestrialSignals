/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 43A6FE15
/// @DnDApplyTo : {win_obj}
/// @DnDArgument : "alpha" "0"
with(win_obj) image_alpha = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1A9A78F0
/// @DnDArgument : "expr" "layer_tilemap_get_id("Tiles_1")"
/// @DnDArgument : "var" "collision_tilemap"
collision_tilemap = layer_tilemap_get_id("Tiles_1");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3233FA19
/// @DnDArgument : "expr" "layer_tilemap_get_id("Tiles_death")"
/// @DnDArgument : "var" "collision_tilemap_death"
collision_tilemap_death = layer_tilemap_get_id("Tiles_death");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3430D6EB
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "jumpPower"
jumpPower = false;