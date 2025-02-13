if (collision_rectangle(posX1,posY1,posX1+5,posY1+64,objPlayer,0,0)) {
	instance_create_layer(376,176,objReticle.layer,objPortal2)
	objPortal2.phy_rotation = -180
	camera_set_view_target(view_camera[2],objPlayer)
}
if (collision_rectangle(posX2,posY2,posX2+5,posY2+64,objPlayer,0,0)) {
	objPortal2.phy_position_x = 645
	objPortal2.phy_position_y = 192
	objPortal2.phy_rotation = -270
}
if (collision_rectangle(posX3,posY3,posX3+30,posY3+64,objPlayer,0,0)) {
	camera_set_view_target(view_camera[2],noone)
	pancamera(view_camera[2],570,380)
	instance_destroy(objPortal1)
	instance_destroy(objPortal2)
}
if (collision_rectangle(posX4,posY4,posX4+5,posY4+153,objPlayer,0,0)) {
	camera_set_view_target(view_camera[2],objPlayer)

}