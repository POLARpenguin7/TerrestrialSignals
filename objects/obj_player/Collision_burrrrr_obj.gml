/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
/// @DnDVersion : 1
/// @DnDHash : 6FE68A3F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "system" "ParticleSystem1"
/// @DnDArgument : "type" "ps_mode_burst"
part_particles_create(ParticleSystem1, x + 0, y + 0, ps_mode_burst, 10);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 36DB0D31
/// @DnDApplyTo : other
with(other) instance_destroy();