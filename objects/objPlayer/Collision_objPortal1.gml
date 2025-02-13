
/*
if (current_time - global.lasttp > global.tpdelay/phy_speed) {

	global.playerspeed = [phy_speed_x, phy_speed_y]

	global.playerspeed = rotateCoord(global.playerspeed[0],global.playerspeed[1],objPortal2.phy_rotation)


	xaimpos2 = lengthdir_x(5,objPortal2.phy_rotation)
	yaimpos2 = lengthdir_y(5,objPortal2.phy_rotation)

	phy_position_x = objPortal2.phy_position_x + xaimpos2
	phy_position_y = objPortal2.phy_position_y + yaimpos2

	phy_speed_x = global.playerspeed[0]
	phy_speed_y = global.playerspeed[1]

	global.lasttp = current_time

}
*/