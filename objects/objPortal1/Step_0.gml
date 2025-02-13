cam = view_camera[0]
if (phy_rotation == -360) phy_rotation = 0

if phy_rotation == 0 {
	xpos = phy_position_x-64
	ypos = phy_position_y-200
	camera_set_view_angle(cam,0)
}

if phy_rotation == -90 {
	xpos = phy_position_x-152
	ypos = phy_position_y-112
	camera_set_view_angle(cam,-90)
}

if phy_rotation == -180 {
	xpos = phy_position_x-64
	ypos = phy_position_y-24
	camera_set_view_angle(cam,180)
}

if phy_rotation == -270 {
	xpos = phy_position_x+24
	ypos = phy_position_y-112
	camera_set_view_angle(cam,-270)
}

camera_set_view_pos(cam,xpos,ypos)

/*

if keyboard_check_pressed(ord("Q")) {
	phy_position_x = mouse_x
	phy_position_y = mouse_y
}
*/