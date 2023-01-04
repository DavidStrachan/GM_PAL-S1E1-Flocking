/// @description EaseWaveSineDamped3(inputvalue,outputmin,outputmax,inputmax)
/// @function EaseWaveSineDamped3
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseWaveSineDamped3(argument0, argument1, argument2, argument3) {

	return argument2  * (sin(pi * argument0 / (argument3/5))) * ee(ease.linear,1-(argument0/argument3),1) + argument1;


}
