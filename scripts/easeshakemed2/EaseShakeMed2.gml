/// @description Lightning1(inputvalue,outputmin,outputmax,inputmax)
/// @function Lightning1 
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseShakeMed2 (argument0, argument1, argument2, argument3) {


	return 	ease_combine((ee(ease.waveCos2,argument0,argument3)),ee(ease.waveTriangle3,argument0,argument3)*2,0.5) * ee(ease.inQuad,1-(argument0/argument3),1)



}
