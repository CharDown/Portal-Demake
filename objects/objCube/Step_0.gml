
if (!grabbing) {
	physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*100)
}

if (instance_exists(objPortal1) && instance_exists(objPortal2)) {
if collision_rectangle(x-4,y-4,x+(5*phy_speed_x),y+(5*phy_speed_y),objPortal1,false,false) || collision_rectangle(x-4,y-4,x+4,y+4,objPortal1,false,false) {
	if (current_time - global.lasttpCube > global.tpdelayCube) {
		grabbing = false
		global.cubespeed = [phy_speed_x, phy_speed_y]

		global.cubespeed = rotateCoord(global.cubespeed[0],global.cubespeed[1],objPortal2.phy_rotation)
		

		phy_position_x = objPortal2.phy_position_x 
		phy_position_y = objPortal2.phy_position_y

		phy_speed_x = global.cubespeed[0]
		phy_speed_y = global.cubespeed[1]

		
		if (objPortal2.phy_rotation == -90) left = false
		if (objPortal2.phy_rotation == -270) left = true

		global.lasttpCube = current_time
		
	}	
}


if collision_rectangle(x-4,y-4,x+(5*phy_speed_x),y+(5*phy_speed_y),objPortal2,false,false) || collision_rectangle(x-4,y-4,x+4,y+4,objPortal2,false,false) {
	if (current_time - global.lasttpCube > global.tpdelayCube) {
		grabbing = false
		global.cubespeed = [phy_speed_x, phy_speed_y]

		global.cubespeed = rotateCoord(global.cubespeed[0],global.cubespeed[1],objPortal1.phy_rotation)

		
		phy_position_x = objPortal1.phy_position_x
		phy_position_y = objPortal1.phy_position_y

		phy_speed_x = global.cubespeed[0]
		phy_speed_y = global.cubespeed[1]
		
		if (objPortal1.phy_rotation == -90) left = false
		if (objPortal1.phy_rotation == -270) left = true

		global.lasttpCube = current_time
	
	}
}
}

if (keyboard_check_pressed(vk_shift)) && (collision_rectangle(x-3,y-3,x+3,y+3,objReticle,0,0)) {
	grabbing = true
}
if (keyboard_check_released(vk_shift)) grabbing = false

if (grabbing) {

	idd.phy_position_x = objReticle.phy_position_x
	idd.phy_position_y = objReticle.phy_position_y
}


