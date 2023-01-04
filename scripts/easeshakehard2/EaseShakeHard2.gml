/// @description Lightning1(inputvalue,outputmin,outputmax,inputmax)
/// @function Lightning1 
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseShakeHard2(argument0, argument1, argument2, argument3) {



	return 	ease_combine((ee(ease.waveTriangle3,argument0,argument3))*2,-ee(ease.waveTriangle5,argument0,argument3)*3,0.6) * ee(ease.linear,1-(argument0/argument3),1)




}
