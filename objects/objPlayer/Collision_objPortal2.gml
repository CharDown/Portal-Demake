/*

if (current_time - global.lasttp > global.tpdelay/phy_speed) {

	global.playerspeed = [phy_speed_x, phy_speed_y]

	global.playerspeed = rotateCoord(global.playerspeed[0],global.playerspeed[1],objPortal1.phy_rotation)

	phy_position_x = objPortal1.phy_position_x
	phy_position_y = objPortal1.phy_position_y

	phy_speed_x = global.playerspeed[0]
	phy_speed_y = global.playerspeed[1]

	global.lasttp = current_time
	
}
*/