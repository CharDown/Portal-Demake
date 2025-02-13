

if (collision_rectangle(idd.x,idd.y,idd.x+6,idd.y+1,objPlayer,0,0)) || (collision_rectangle(idd.x,idd.y,idd.x+6,idd.y+1,objCube,0,0)){
	idd.sprite_index = sprButtonPressed
	if (inverted) {
		link.sprite_index = sprDoor
		link.phy_active = true
	} else {
		link.sprite_index = sprDoorOpen
		link.phy_active = false	
	}
} else {
	idd.sprite_index = sprButton
	if (inverted) {
		link.sprite_index = sprDoorOpen
		link.phy_active = false	
	} else {
		link.sprite_index = sprDoor
		link.phy_active = true
	}
}



