

#region - debug controls - 

	if (keyboard_check_pressed(vk_up)) {friends_dist+=10}
	if (keyboard_check_pressed(vk_down)) {friends_dist-=10}
	if (keyboard_check_pressed(vk_left)) {enemies_dist+=10}
	if (keyboard_check_pressed(vk_right)) {enemies_dist-=10}

	show_debug_message(friends_dist)

#endregion


#region - helper scripts - 

	function change_direction(_new_angle,_change_speed) {
		
		var _ang_dif = angle_difference(direction,_new_angle)
		
		if (_ang_dif > 3)
		{
			direction -= _change_speed
		}
		else if (_ang_dif < 3) 
		{
			direction += _change_speed
		}
	}


#endregion

#region -- find friends -- 

	var _friends = []
	var _friends_count = 0 
	var _enemies = []
	var _enemies_count = 0 
	
	with (obj_flock) {
	    if (id != other.id) {	// not me 
			if (point_distance(x,y,other.x,other.y) < friends_dist) {
				// we've found a friend!
				_friends[_friends_count] = id
				_friends_count ++
			}
			if (point_distance(x,y,other.x,other.y) < enemies_dist) {
				// This one is too near 
				_enemies[_enemies_count] = id
				_enemies_count ++
			}
		}
	}

#endregion

#region --- Match direction of friends --- 

	if (_friends_count > 0) 
	{
		// There are friends near me, match their angle 

		// This just finds their average angle 
		var _running_angle = 0 
		for (var i = 0; i < _friends_count; ++i) {
		    _running_angle += _friends[i].direction 
		}
		_running_angle /= _friends_count
		
		// Slowly move to match this average angle 
		change_direction(_running_angle,angle_change_speed)

		
	}

#endregion

#region --- Go to the middle of friends --- 

	if (_friends_count > 0) 
	{
		// There are friends near me, try and join ground

		// This just finds their average position 
		var _running_x = 0 
		var _running_y = 0 
		for (var i = 0; i < _friends_count; ++i) {
		    _running_x += _friends[i].x 
		    _running_y += _friends[i].y 
		}
		_running_x /= _friends_count
		_running_y /= _friends_count
		
		// Slowly move to match this average position 
		var _goto_dir = point_direction(x,y,_running_x,_running_y)
		change_direction(_goto_dir,angle_change_speed)
		
	}

#endregion

#region --- Try and keep some distance between friends ---

	if (_enemies_count > 0) 
	{

		// This just finds their average position 
		var _running_x = 0 
		var _running_y = 0 
		for (var i = 0; i < _enemies_count; ++i) {
		    _running_x += _enemies[i].x 
		    _running_y += _enemies[i].y 
		}
		_running_x /= _enemies_count
		_running_y /= _enemies_count
		
		
		// Slowly move to match this average angle 
		var _goto_dir = point_direction(x,y,_running_x,_running_y) + 180 
		change_direction(_goto_dir,angle_change_speed * 2)		
	}

#endregion

#region -- Stay on screen -- 

	if (!point_in_rectangle(x,y,0,0,room_width,room_height)) 
	{
		// I'm off the screen 
		var _goto_dir = point_direction(x,y,room_width/2,room_height/2)
		if (angle_difference(direction,_goto_dir) > 0)
		{
			direction -= angle_change_speed
		}
		else 
		{
			direction += angle_change_speed
		}
	}

#endregion


image_angle = direction - 90
