/// @description Given an array this will pick one of the elements where bigger numbers are more likely to be selected
/// @function random_weighted
/// @param array of what to pick from 
/// returns which array key was selected (0 being the first)

/* Example:
	random_weighted([1,100]) - 100 is very likely to get picked
*/

function random_weighted(_arr) {
	
	var options_to_select_from = array_length(_arr)
	var total_weight = 0 
	
	for (var i = 0; i < options_to_select_from; ++i) { // Add together all of the weights 
	    total_weight += _arr[i]
	}
	
	var rng = irandom(total_weight-1) // pick a number from the total pool 
	
	for (var i = 0; i < options_to_select_from; ++i) { // Work out which group this number is in 
	    total_weight -= _arr[i]
		if (total_weight <= rng) {
			return i
		}
	}
	
}