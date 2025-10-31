//move
	xspd = lengthdir_x( spd, dir );
	yspd = lengthdir_y( spd, dir );

	x += xspd;
	y += yspd; 

//cleanup	
//destroy
	if destroy == true
	{
		//vsfx
		instance_destroy();
	}
	
	//colision
	if place_meeting( x + xspd, y, oSolidWall )
	{
		destroy = true;
	}
	
	//bullet out of range
	if point_distance( xstart, ystart, x, y ) > maxDist
	{
		destroy = true;
	}
