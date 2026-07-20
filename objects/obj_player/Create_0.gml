/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5AE5BA56
/// @DnDArgument : "var" "p_sys"
global.p_sys = 0;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 4C2229F2
/// @DnDArgument : "var" "global.p_sys"
/// @DnDArgument : "persist" "1"
global.p_sys = part_system_create_layer("Instances", 1);