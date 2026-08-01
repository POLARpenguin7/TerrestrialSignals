/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63E7931F
/// @DnDArgument : "var" "timer_active"
/// @DnDArgument : "value" "true"
if(timer_active == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 397D598C
	/// @DnDParent : 63E7931F
	/// @DnDArgument : "expr" "delta_time / 1000000"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "total_seconds"
	total_seconds += delta_time / 1000000;}