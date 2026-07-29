/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FDAF887
/// @DnDComment : if jumping
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7D298339
	/// @DnDParent : 7FDAF887
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_jump"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_jump"
	sprite_index = spr_enemy_jump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D652014
/// @DnDComment : if falling
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6DA027A9
	/// @DnDParent : 3D652014
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_idle"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_idle"
	sprite_index = spr_enemy_idle;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 70034FBC
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l70034FBC_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l70034FBC_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 127095E9
	/// @DnDComment : if we are moving left
	/// @DnDParent : 70034FBC
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 589F3B50
		/// @DnDParent : 127095E9
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk"
		sprite_index = spr_enemy_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 1D97C90F
		/// @DnDComment : flip the $(13_10)image x scale $(13_10)(absolute value $(13_10)to make sure $(13_10)this dosen't overflip $(13_10)if already flipped left).
		/// @DnDParent : 127095E9
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51170DAD
	/// @DnDComment : if moving right
	/// @DnDParent : 70034FBC
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7E07A068
		/// @DnDParent : 51170DAD
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk"
		sprite_index = spr_enemy_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 477B8F64
		/// @DnDComment : reset the $(13_10)image x scale $(13_10)back to normal. $(13_10)
		/// @DnDParent : 51170DAD
		/// @DnDArgument : "xscale" "abs(image_xscale) "
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale) ;image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EF6618F
	/// @DnDComment : in not moving
	/// @DnDParent : 70034FBC
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 318DF800
		/// @DnDParent : 0EF6618F
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_idle"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_idle"
		sprite_index = spr_enemy_idle;
		image_index += 0;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3759DEE8
/// @DnDDisabled : 1
/// @DnDArgument : "var" "jumpPower"
/// @DnDArgument : "value" "true"
/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5085E234
/// @DnDDisabled : 1
/// @DnDParent : 3759DEE8
/// @DnDArgument : "colour" "$FFFF1119"
/// @DnDArgument : "alpha" "false"


/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 24503228
/// @DnDDisabled : 1
/// @DnDParent : 3759DEE8
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "color" "$FFFF1119"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D213269
/// @DnDDisabled : 1
/// @DnDParent : 3759DEE8
/// @DnDArgument : "expr" "30"
/// @DnDArgument : "var" "jump_speed"