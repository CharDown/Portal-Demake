
physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*100)


if (left) {
	dir = -50
	image_xscale = -1	
}
if (!left) {
	dir = 50
	image_xscale = 1
}
function speedcap() {
	if (left) return (phy_speed_x > -basespeed) 
	if (!left) return (phy_speed_x < basespeed)
}

if (keyboard_check(ord("W")) && speedcap()) physics_apply_force(phy_position_x,phy_position_y,phy_mass*dir,0)
if (keyboard_check(ord("D"))) left = false
if (keyboard_check(ord("A"))) left = true


function onground() {
    // Checking collision under player
    if (collision_rectangle(x,y,x+8,y+9,objWall,0,0)) return (collision_rectangle(x,y,x+8,y+9,objWall,0,0));
	if (collision_rectangle(x,y,x+8,y+9,objNoTPWall,0,0)) return (collision_rectangle(x,y,x+8,y+9,objNoTPWall,0,0));
	return (collision_rectangle(x,y,x+8,y+9,objCube,0,0))
}
if (onground()) {
	array_push(standingplacementsX, x,y+4)
	if (array_length(standingplacementsX) > 50) array_delete(standingplacementsX, 0, 2)
}

if (keyboard_check_pressed(vk_space) && onground()) {
	launch(phy_mass*3500,90)
	//sprite_index = sprPlayerJump
}

aimrotation = point_direction(phy_position_x,phy_position_y,mouse_x,mouse_y)
xaimpos = lengthdir_x(10,aimrotation)
yaimpos = lengthdir_y(10,aimrotation)

objReticle.phy_position_x = x + xaimpos
objReticle.phy_position_y = y + yaimpos


xaimpos1 = lengthdir_x(5,aimrotation)
yaimpos1 = lengthdir_y(5,aimrotation)


if (!objCube.grabbing) && (portalgun != 0) {
	if (mouse_check_button_pressed(mb_left)) {
		instance_create_layer(x + xaimpos1, y + yaimpos1, layer, objPortalProj1,
		{
			rotation : aimrotation,
		})
	}

	if (mouse_check_button_pressed(mb_right) && portalgun = 2) {
		instance_create_layer(x + xaimpos1, y + yaimpos1, layer, objPortalProj2,
		{
			rotation : aimrotation,
		})
	}	
}

if (instance_exists(objPortal1) && instance_exists(objPortal2)) {
if collision_rectangle(x-4,y-4,x+(5*phy_speed_x),y+(5*phy_speed_y),objPortal1,false,false) || collision_rectangle(x-4,y-4,x+4,y+4,objPortal1,false,false) {
	if (current_time - global.lasttp > global.tpdelay) {

		global.playerspeed = [phy_speed_x, phy_speed_y]

		global.playerspeed = rotateCoord(global.playerspeed[0],global.playerspeed[1],objPortal2.phy_rotation)
		spitoutpoint = rotateCoord(0,6,objPortal2.phy_rotation)
		

		phy_position_x = objPortal2.phy_position_x 
		phy_position_y = objPortal2.phy_position_y

		phy_speed_x = global.playerspeed[0]
		phy_speed_y = global.playerspeed[1]

		
		if (objPortal2.phy_rotation == -90) left = false
		if (objPortal2.phy_rotation == -270) left = true

		global.lasttp = current_time
		
	}	
}


if collision_rectangle(x-4,y-4,x+(5*phy_speed_x),y+(5*phy_speed_y),objPortal2,false,false) || collision_rectangle(x-4,y-4,x+4,y+4,objPortal2,false,false) {
	if (current_time - global.lasttp > global.tpdelay) {

		global.playerspeed = [phy_speed_x, phy_speed_y]

		global.playerspeed = rotateCoord(global.playerspeed[0],global.playerspeed[1],objPortal1.phy_rotation)

		
		phy_position_x = objPortal1.phy_position_x
		phy_position_y = objPortal1.phy_position_y

		phy_speed_x = global.playerspeed[0]
		phy_speed_y = global.playerspeed[1]
		

		if (objPortal1.phy_rotation == -90) left = false
		if (objPortal1.phy_rotation == -270) left = true

		global.lasttp = current_time
	
	}
}
}