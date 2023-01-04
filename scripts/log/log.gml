
function log(_message_to_display) {
	_message_to_display = string(argument[0])
	for (var i = 1; i < argument_count; i++) {
	    _message_to_display += ", " + string(argument[i])
	}
	show_debug_message(_message_to_display)
}