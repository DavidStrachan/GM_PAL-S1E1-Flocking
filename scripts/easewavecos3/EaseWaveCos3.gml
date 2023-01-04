/// @description  EaseWaveCos(inputvalue,outputmin,outputmax,inputmax)
/// @function  EaseWaveCos
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseWaveCos3(argument0, argument1, argument2, argument3) {

	return argument2 * (sin(pi * argument0 / (argument3/6))) + argument1;


}
