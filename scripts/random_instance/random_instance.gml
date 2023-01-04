/*
This will return a random instance of the provided object
*/

function random_instance(_object) {
	return instance_find(_object, irandom(instance_number(_object) - 1));
}