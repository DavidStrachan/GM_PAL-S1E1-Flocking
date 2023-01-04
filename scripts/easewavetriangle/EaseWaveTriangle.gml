/// @description EaseWaveSaw(inputvalue,outputmin,outputmax,inputmax)
/// @function EaseWaveSaw
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseWaveTriangle(argument0, argument1, argument2, argument3) {

	if (((argument0*2) / argument3 + argument1) mod 2 < 1) {

		return (argument2 * (argument0*2) / argument3 + argument1) mod argument2;

	} else {
	
		return 1-((argument2 * (argument0*2) / argument3 + argument1) mod argument2);
	
	}


}
