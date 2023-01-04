/// @description 

randomise()

#region development mode

	#macro DEVELOPMENT false 
	#macro dev:DEVELOPMENT true

	if (DEVELOPMENT == true) {
	
		// put game in a window 	
		window_set_fullscreen(false)
		window_set_size(room_width/1.2,room_height/1.2)
	
		// debugging stuff
		//audio_debug(true)
		show_debug_overlay(true)
		texture_debug_messages(true);
	
	} else {
		gml_release_mode(true) // when debugging 	
	}
	
#endregion
#region create all objects you want to be around forever here
	// Note: if you use instance_deactivate_all() you will want to activate these 

	if (DEVELOPMENT) {
		instance_create_depth(0,0,0,obj_monitor)
	}
#endregion
#region delta time stuff
target_delta = 1/game_get_speed(gamespeed_fps)
global.delta_multiplier = 1
#macro DT global.delta_multiplier
#endregion
#region graphics
display_reset(8,true)
surface_depth_disable(true) // most of the time you dont need to greate the depth buffer when you make a surface unless you are doing 3d stuff
#endregion
#region Handy additional colours (can be deleted)
#macro c_palette_1 make_colour_rgb(89,115,114) // green dark
#macro c_palette_2 make_colour_rgb(132,153,148) // green light
#macro c_palette_3 make_colour_rgb(218,209,194) // cream 
#macro c_palette_4 make_colour_rgb(215,180,160) // cream/red
#macro c_palette_5 make_colour_rgb(211,159,138) // red
#endregion