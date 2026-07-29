/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1A9A78F0
/// @DnDArgument : "expr" "layer_tilemap_get_id("Tiles_1")"
/// @DnDArgument : "var" "collision_tilemap"
collision_tilemap = layer_tilemap_get_id("Tiles_1");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3233FA19
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "layer_tilemap_get_id("Tiles_death")"
/// @DnDArgument : "var" "collision_tilemap_death"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3FA80F7A
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;