/// @description EaseWaveSaw(inputvalue,outputmin,outputmax,inputmax)
/// @function EaseWaveSaw
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseWaveSaw(argument0, argument1, argument2, argument3) {


	return (argument2 * (argument0*2) / argument3 + argument1) mod argument2;





}
