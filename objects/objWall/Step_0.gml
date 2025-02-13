idd = id 


// blue portal
if (collision_rectangle(x,y,x-2,y+(12*image_yscale),objPortalProj1,0,0)) {
	if (!instance_exists(objPortal1)) instance_create_layer(phy_position_x,objPortalProj1.phy_position_y,layer,objPortal1)
	objPortal1.phy_position_x = phy_position_x
	objPortal1.phy_position_y = objPortalProj1.phy_position_y
	objPortal1.phy_rotation = -270
	instance_destroy(objPortalProj1)
}


if (collision_rectangle(x,y,x+(12*image_xscale),y-2,objPortalProj1,0,0)) {
	if (!instance_exists(objPortal1)) instance_create_layer(objPortalProj1.phy_position_x,phy_position_y,layer,objPortal1)
	objPortal1.phy_position_x = objPortalProj1.phy_position_x
	objPortal1.phy_position_y = phy_position_y
	objPortal1.phy_rotation = 0
	instance_destroy(objPortalProj1)
}

if (collision_rectangle(x,y+(12*image_yscale),x+(12*image_xscale),y+(12*image_yscale)+2,objPortalProj1,0,0)) {
	if (!instance_exists(objPortal1)) instance_create_layer(objPortalProj1.phy_position_x,phy_position_y+(12*image_yscale),layer,objPortal1)
	objPortal1.phy_position_x = objPortalProj1.phy_position_x
	objPortal1.phy_position_y = phy_position_y+(12*image_yscale)
	objPortal1.phy_rotation = -180
	instance_destroy(objPortalProj1)
}

if (collision_rectangle(x+(12*image_xscale),y,x+(12*image_xscale)+2,y+(12*image_yscale),objPortalProj1,0,0)) {
	if (!instance_exists(objPortal1)) instance_create_layer(phy_position_x+(12*image_xscale),objPortalProj1.phy_position_y,layer,objPortal1)
	objPortal1.phy_position_x = phy_position_x+(12*image_xscale)
	objPortal1.phy_position_y = objPortalProj1.phy_position_y
	objPortal1.phy_rotation = -90
	instance_destroy(objPortalProj1)
}


// orange portal
if (collision_rectangle(x,y,x-2,y+(12*image_yscale),objPortalProj2,0,0)) {
	if (!instance_exists(objPortal2)) instance_create_layer(phy_position_x,objPortalProj2.phy_position_y,layer,objPortal2)
	objPortal2.phy_position_x = phy_position_x
	objPortal2.phy_position_y = objPortalProj2.phy_position_y
	objPortal2.phy_rotation = -270
	instance_destroy(objPortalProj2)
}


if (collision_rectangle(x,y,x+(12*image_xscale),y-2,objPortalProj2,0,0)) {
	if (!instance_exists(objPortal2)) instance_create_layer(objPortalProj2.phy_position_x,phy_position_y,layer,objPortal2)
	objPortal2.phy_position_x = objPortalProj2.phy_position_x
	objPortal2.phy_position_y = phy_position_y
	objPortal2.phy_rotation = 0
	instance_destroy(objPortalProj2)
}

if (collision_rectangle(x,y+(12*image_yscale),x+(12*image_xscale),y+(12*image_yscale)+2,objPortalProj2,0,0)) {
	if (!instance_exists(objPortal2)) instance_create_layer(objPortalProj2.phy_position_x,phy_position_y+(12*image_yscale),layer,objPortal2)
	objPortal2.phy_position_x = objPortalProj2.phy_position_x
	objPortal2.phy_position_y = phy_position_y+(12*image_yscale)
	objPortal2.phy_rotation = -180
	instance_destroy(objPortalProj2)
}

if (collision_rectangle(x+(12*image_xscale),y,x+(12*image_xscale)+2,y+(12*image_yscale),objPortalProj2,0,0)) {
	if (!instance_exists(objPortal2)) instance_create_layer(phy_position_x+(12*image_xscale),objPortalProj2.phy_position_y,layer,objPortal2)
	objPortal2.phy_position_x = phy_position_x+(12*image_xscale)
	objPortal2.phy_position_y = objPortalProj2.phy_position_y
	objPortal2.phy_rotation = -90
	instance_destroy(objPortalProj2)
}

