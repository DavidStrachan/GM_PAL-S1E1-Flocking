/// @description EaseWaveSaw(inputvalue,outputmin,outputmax,inputmax)
/// @function EaseWaveSaw
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseWaveTriangle4(argument0, argument1, argument2, argument3) {


	if (((argument0*8) / argument3 + argument1) mod 2 < 1) {

		return (argument2 * (argument0*8) / argument3 + argument1) mod argument2;

	} else {
	
		return 1-((argument2 * (argument0*8) / argument3 + argument1) mod argument2);
	
	}

}
