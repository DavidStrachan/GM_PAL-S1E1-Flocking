/// @description  EaseOutExpo(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseOutExpo
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseOutExpo(argument0, argument1, argument2, argument3) {

	return argument2 * (-power(2, -10 * argument0 / argument3) + 1) + argument1;





}
