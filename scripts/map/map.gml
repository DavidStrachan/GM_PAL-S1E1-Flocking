/// @description Linearly translate a given value between in_min and in_max and find where that value would fall between out_min and out_max
/// @function map (you sometimes call this lerp_long() )
/// @param amount
/// @param in_min
/// @param in_max
/// @param out_min
/// @param out_max
/// returns a number between out_min and out_max


function map(amount, in_min, in_max, out_min, out_max) {
	return out_min + (amount - in_min) * (out_max - out_min) / (in_max - in_min);
}