/// @description EaseWaveSine5(inputvalue,outputmin,outputmax,inputmax)
/// @function EaseWaveSine5
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseWaveSine5(argument0, argument1, argument2, argument3) {

	return argument2 * 0.5 * (1 - cos(pi * argument0 / (argument3/10))) + argument1;


}
