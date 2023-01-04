/// @description Lightning1(inputvalue,outputmin,outputmax,inputmax)
/// @function Lightning1 
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseShakeMed3 (argument0, argument1, argument2, argument3) {


	return 	ease_combine((ee(ease.waveTriangle3,argument0,argument3)),-ee(ease.waveCos3,argument0,argument3),0.65) * ee(ease.inSine,1-(argument0/argument3),1)



}
