/// @description EaseBeat2(inputvalue,outputmin,outputmax,inputmax)
/// @function EaseBeat2
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseBeat2(argument0, argument1, argument2, argument3) {


	return ((ee2(ease.inQuint,ease.outQuad,argument3-argument0,argument3,0.9,true)*(argument2-argument1))+argument1)



}
