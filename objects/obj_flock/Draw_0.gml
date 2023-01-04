

draw_self()

draw_set_colour(make_colour_hsv(map(speed,speed_min,speed_max,0,255),255,255))
draw_circle(x,y,6,false)

if (point_distance(x,y,mouse_x,mouse_y) < 30) {
	draw_set_colour(c_white)
	draw_circle(x,y,friends_dist,true)
	draw_set_colour(c_red)
	draw_circle(x,y,enemies_dist,true)
}