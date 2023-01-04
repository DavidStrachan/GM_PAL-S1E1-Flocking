/// @description EaseWaveSineDamped5(inputvalue,outputmin,outputmax,inputmax)
/// @function EaseWaveSineDamped5
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseWaveSineDamped5(argument0, argument1, argument2, argument3) {

	return argument2  * (sin(pi * argument0 / (argument3/10))) * ee(ease.linear,1-(argument0/argument3),1) + argument1;


}
