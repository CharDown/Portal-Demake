draw_self()
//draw_rectangle(x-4,y-4,x+(5*phy_speed_x),y+(5*phy_speed_y),1)
for (i = 0; i < array_length(standingplacementsX); i+=2){
	draw_circle(standingplacementsX[i],standingplacementsX[i+1],1,0)
}