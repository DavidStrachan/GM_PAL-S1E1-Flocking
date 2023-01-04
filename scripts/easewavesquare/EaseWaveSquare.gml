/// @description EaseWaveSquare(inputvalue,outputmin,outputmax,inputmax)
/// @function EaseWaveSquare
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseWaveSquare(argument0, argument1, argument2, argument3) {


	var easeReturn = (argument2 * (argument0) / argument3 + argument1) mod argument2;

	if (easeReturn > 0.5) {
		return 1
	} else {
		return 0
	}




}
