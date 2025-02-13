
function rotateCoord (posx, posy, degree) {
    if (degree < 0) degree = degree + 360

    if (degree == 0) return [posx, -posy]
    if (degree == 90) return [-posy, posx]
    if (degree == 180) return [posx, -posy]
    if (degree == 270) return [posy, posx]
    return [posx, posy]
}
/*
//og
function rotateCoord (posx, posy, degree) {
    if (degree < 0) degree = degree + 360

    if (degree == 0) return [posx, posy]
    if (degree == 90) return [-posy, posx]
    if (degree == 180) return [-posx, -posy]
    if (degree == 270) return [posy, -posx]
    return [posx, posy]
}
*/


function launch(strength, rotation) {
	force_strength = strength
	theta = rotation
	xvec = lengthdir_x(force_strength,theta)  
	yvec = lengthdir_y(force_strength,theta) 
	physics_apply_force( x, y, phy_mass*xvec, phy_mass*yvec )  
}

function launch2(spd, rotation) {
	force_strength = spd
	theta = rotation
	phy_speed_x = lengthdir_x(force_strength,theta)  
	phy_speed_y = lengthdir_y(force_strength,theta) 
	
}

function opendoor(idd) {
	idd.sprite_index = sprDoorOpen
	idd.phy_active = false
}

function closedoor(idd) {
	idd.sprite_index = sprDoor
	idd.phy_active = true
}

function pancamera (camera, xpos, ypos) {
	viewsizex = lerp(camera_get_view_x(camera),xpos,0.25)
	viewsizey = lerp(camera_get_view_y(camera),ypos,0.25)
	camera_set_view_pos(camera,viewsizex,viewsizey)	
}
