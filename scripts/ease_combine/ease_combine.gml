/// @description ease_combine
/// @function ease_combine
/// @param value1
/// @param value2
/// @param ratio  (0.5 means 50:50 from each side)
function ease_combine(argument0, argument1, argument2) {


	var val1 = argument0 * argument2
	var val2 = argument1 * (1-argument2)

	return (val1+val2)



}
